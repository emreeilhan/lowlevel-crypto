#!/usr/bin/env python3
"""Validate every raw row before calculating distributions; stdlib only."""
import csv
import json
import math
import statistics
import sys
from pathlib import Path

FIELDS = ['experiment', 'condition', 'sample', 'order', 'algorithm', 'length', 'rounds', 'seed', 'elapsed_ns', 'result_sink']

def summarize(path):
    groups = {}
    seen = set()
    pairs = {}
    configurations = set()
    with Path(path).open(newline='') as handle:
        reader = csv.DictReader(handle)
        if reader.fieldnames != FIELDS:
            raise ValueError('Unexpected CSV header')
        for row in reader:
            if None in row or any(v is None for v in row.values()):
                raise ValueError('Malformed CSV row')
            for field in FIELDS[2:]:
                if field == 'algorithm':
                    continue
                if not row[field].isdigit():
                    raise ValueError('Invalid unsigned integer: ' + field)
            length, rounds, sample, order = (int(row[f]) for f in ['length', 'rounds', 'sample', 'order'])
            seed, elapsed = int(row['seed']), int(row['elapsed_ns'])
            if not 1 <= length <= 1048576 or not 1 <= rounds <= 1000000 or order not in (0, 1) or not 0 <= seed <= 0xffffffff or sample >= 10000:
                raise ValueError('Out-of-range CSV value')
            experiment, condition, algorithm = (row[f] for f in FIELDS[:2] + ['algorithm'])
            allowed = {'compare': ({'equal', 'mismatch-first', 'mismatch-middle', 'mismatch-last'}, {'early-exit', 'full-scan'}),
                       'xor-c': ({'zeros', 'ff'}, {'c'}), 'xor-asm': ({'seeded'}, {'c', 'asm'})}
            if experiment not in allowed or condition not in allowed[experiment][0] or algorithm not in allowed[experiment][1]:
                raise ValueError('Unknown experiment/condition/algorithm')
            identity = (experiment, condition, sample, algorithm)
            if identity in seen:
                raise ValueError('Duplicate sample')
            seen.add(identity)
            configurations.add((experiment, length, rounds, seed))
            key = (experiment, condition, algorithm, length, rounds, seed)
            groups.setdefault(key, []).append(elapsed / rounds)
            pair_condition = condition if experiment == 'compare' else 'pair'
            pair = (experiment, pair_condition, sample)
            if order in pairs.setdefault(pair, {}):
                raise ValueError('Duplicate A/B order')
            pairs[pair][order] = (algorithm, condition)
    if not groups or len(configurations) != 1 or any(set(pair) != {0, 1} for pair in pairs.values()):
        raise ValueError('Empty, mixed-configuration or incomplete paired CSV')
    counts = {len(values) for values in groups.values()}
    expected_groups = {'compare': 8, 'xor-c': 2, 'xor-asm': 2}[next(iter(configurations))[0]]
    if len(groups) != expected_groups or len(counts) != 1:
        raise ValueError('Missing condition or unequal sample counts')
    count = next(iter(counts))
    for key in groups:
        expected = set(range(count))
        actual = {identity[2] for identity in seen if identity[0] == key[0] and identity[1] == key[1] and identity[3] == key[2]}
        if actual != expected:
            raise ValueError('Noncontiguous samples')
    for (experiment, condition, sample), pair in pairs.items():
        expected_first = ('early-exit', condition) if experiment == 'compare' else ('c', 'zeros') if experiment == 'xor-c' else ('c', 'seeded')
        expected_second = ('full-scan', condition) if experiment == 'compare' else ('c', 'ff') if experiment == 'xor-c' else ('asm', 'seeded')
        if set(pair.values()) != {expected_first, expected_second}:
            raise ValueError('Invalid A/B pairing')
        if sample > 0 and pairs[(experiment, condition, sample - 1)][0] == pair[0]:
            raise ValueError('A/B sample order did not alternate')
        # Warm-up count is recorded in metadata; alternating sample orders are
        # checked relatively because an odd warm-up starts recording with B.
    result = []
    for key, values in sorted(groups.items()):
        values.sort()
        quantile = lambda p: values[math.ceil((len(values)-1)*p)]
        result.append(dict(zip(['experiment','condition','algorithm','length','rounds','seed'], key),
                           samples=len(values), unit='nanoseconds_per_call', min=min(values),
                           p10=quantile(.1), median=statistics.median(values), p90=quantile(.9), max=max(values)))
    return result

if __name__ == '__main__':
    try:
        print(json.dumps(summarize(sys.argv[1]), indent=2, allow_nan=False))
    except (IndexError, OSError, ValueError, csv.Error) as error:
        print('Invalid benchmark artifact: ' + str(error), file=sys.stderr)
        sys.exit(1)
