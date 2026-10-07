#!/usr/bin/env python3
from datetime import datetime, timezone
import hashlib
import json
import os
import platform
import subprocess
import sys
from pathlib import Path

def command(args):
    p = subprocess.run(args, text=True, capture_output=True)
    if p.returncode != 0:
        raise RuntimeError('Metadata command failed: ' + ' '.join(args) + ': ' + p.stderr)
    return p.stdout.strip()

cc, flags, out, experiment, length, rounds, samples, warmup, seed, context_path, binary_path = sys.argv[1:]
context = json.loads(Path(context_path).read_text())
import shlex
compiler = command(shlex.split(cc) + ['--version'])
if platform.system() == 'Darwin':
    cpu = command(['sysctl', '-n', 'machdep.cpu.brand_string'])
    translated = subprocess.run(['sysctl', '-n', 'sysctl.proc_translated'], text=True, capture_output=True)
    execution = context['execution']
else:
    cpu = 'unknown'
    for line in Path('/proc/cpuinfo').read_text().splitlines():
        if line.startswith('model name'):
            cpu = line.split(':', 1)[1].strip(); break
    execution = context['execution']
manifest = {}
for folder in ['01-xor', '02-caesar', '03-hash', '05-constant-time', 'bench', 'include', 'scripts']:
    for path in sorted(Path(folder).glob('*')):
        if path.is_file() and path.suffix in {'.c','.h','.S','.py','.sh'}:
            manifest[str(path)] = hashlib.sha256(path.read_bytes()).hexdigest()
result = dict(measured_at_utc=datetime.now(timezone.utc).isoformat(), binary_sha256=hashlib.sha256(Path(binary_path).read_bytes()).hexdigest(), compiler=compiler, compiler_command=cc, flags=flags + ' -fno-lto', revision=command(['git','rev-parse','HEAD']),
              working_tree_changed=bool(command(['git','status','--porcelain'])), source_sha256=manifest,
              cpu=cpu, os=platform.platform(), host_machine=platform.machine(), binary_context=context, execution=execution,
              experiment=experiment, length=int(length), rounds=int(rounds), samples=int(samples), warmup=int(warmup), seed=int(seed),
              clock='CLOCK_MONOTONIC', raw_unit='nanoseconds per batch', summary_unit='nanoseconds per call',
              method='Separate translation units, no LTO, warm-up batches, alternating A/B order, observable result sink; no timing threshold',
              limitations=['wall time includes calls/status checks and compare result-sink stores; XOR checksum is outside the timed region', 'no formal constant-time guarantee', 'not TSC cycles', 'one host environment; no portable speed inference'])
Path(out).write_text(json.dumps(result, indent=2) + '\n')
if experiment == 'xor-asm' and (execution != 'native' or context['compiled_arch'] != 'x86_64'):
    raise RuntimeError('ASM performance requires native x86-64 metadata')
