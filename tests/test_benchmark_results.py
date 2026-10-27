import os
import subprocess
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ARTIFACTS = ('raw.csv', 'summary.json', 'metadata.json', 'binary-context.json',
             'correctness.log', 'asm-correctness.log', 'compare-generated.s',
             'xor-generated.s', 'bench-generated.s')


class BenchmarkResultsTests(unittest.TestCase):
    def test_failed_runs_do_not_retain_old_artifacts(self):
        with tempfile.TemporaryDirectory() as directory:
            out = Path(directory)
            env = dict(os.environ, BENCH_OUT=directory, EXPERIMENT='compare',
                       LENGTH='4', ROUNDS='2', SAMPLES='2', WARMUP='1')
            subprocess.run(['./run_benchmarks.sh'], cwd=ROOT, env=env,
                           check=True, capture_output=True, text=True)
            self.assertTrue((out / 'summary.json').is_file())
            (out / 'unrelated.txt').write_text('keep')
            for name in ARTIFACTS:
                (out / name).write_text('stale')
            failed = subprocess.run(['./run_benchmarks.sh'], cwd=ROOT,
                                    env=dict(env, BENCH_CFLAGS='-fsanitize=address'),
                                    capture_output=True, text=True)
            self.assertNotEqual(failed.returncode, 0)
            self.assertTrue(all(not (out / name).exists() for name in ARTIFACTS))
            self.assertEqual((out / 'unrelated.txt').read_text(), 'keep')
            failed = subprocess.run(['./run_benchmarks.sh'], cwd=ROOT,
                                    env=dict(env, LAB_BENCH_FAIL_TIMER='1'),
                                    capture_output=True, text=True)
            self.assertNotEqual(failed.returncode, 0)
            self.assertFalse((out / 'summary.json').exists())
            self.assertTrue((out / 'metadata.json').is_file())
            self.assertNotEqual((out / 'raw.csv').read_text(), 'stale')


if __name__ == '__main__':
    unittest.main()
