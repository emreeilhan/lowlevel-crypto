import os
import platform
import subprocess
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


class BenchmarkRunnerTests(unittest.TestCase):
    def test_generated_benchmark_matches_experiment(self):
        experiments = ['compare']
        if platform.machine() == 'x86_64':
            experiments.append('xor-asm')
        for experiment in experiments:
            with self.subTest(experiment=experiment), tempfile.TemporaryDirectory() as directory:
                env = dict(os.environ, BENCH_OUT=directory, EXPERIMENT=experiment,
                           LENGTH='4', ROUNDS='2', SAMPLES='2', WARMUP='1')
                subprocess.run(['./run_benchmarks.sh'], cwd=ROOT, env=env,
                               check=True, capture_output=True, text=True)
                assembly = (Path(directory) / 'bench-generated.s').read_text()
                self.assertEqual('xor_apply_asm' in assembly, experiment == 'xor-asm')


if __name__ == '__main__':
    unittest.main()
