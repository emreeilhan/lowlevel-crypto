#!/usr/bin/env python3
import json
import sys
from pathlib import Path
raw = json.loads(Path(sys.argv[1]).read_text())
expected = {'01-xor/xor_cipher.c','02-caesar/caesar.c','03-hash/hash.c','05-constant-time/ct_compare.c','include/lab_status.h'}
files = []
zero_entries = []
for item in raw['data'][0]['files']:
    matches = [path for path in expected if item['filename'].endswith('/' + path)]
    if len(matches) != 1 and all(counter['count'] == 0 for counter in item['summary'].values()):
        zero_entries.append({'path': item['filename'].split('/lowlevel-crypto/')[-1], 'summary': item['summary']})
        continue
    if len(matches) != 1:
        raise ValueError('Unexpected coverage source: ' + item['filename'])
    files.append({'path': matches[0], 'summary': item['summary']})
if {item['path'] for item in files} != expected:
    raise ValueError('Incomplete application coverage scope')
result = {'scope': sorted(expected), 'excludes': ['tests','benchmarks','ASM','04-buffer-overflow'], 'files': files,
          'zero_denominator_entries': zero_entries, 'totals': raw['data'][0]['totals'], 'definition': 'LLVM mapped executable source coverage, not requirements coverage or bug-freedom'}
print(json.dumps(result, indent=2))
