import importlib.util
import tempfile
import unittest
from pathlib import Path
spec = importlib.util.spec_from_file_location('summarizer', Path(__file__).parents[1] / 'scripts' / 'summarize_benchmark.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
HEADER = ','.join(module.FIELDS) + '\n'
VALID = HEADER + 'xor-c,zeros,0,0,c,4,2,5,20,0\nxor-c,ff,0,1,c,4,2,5,30,1020\n'

class CSVContractTests(unittest.TestCase):
    def run_csv(self, contents):
        with tempfile.TemporaryDirectory() as root:
            path = Path(root) / 'samples.csv'
            path.write_text(contents)
            return module.summarize(path)
    def test_distributions(self):
        groups = self.run_csv(VALID)
        self.assertEqual(len(groups), 2)
        self.assertEqual(groups[0]['median'], 15)
        self.assertEqual(groups[1]['median'], 10)
        self.assertEqual(groups[0]['unit'], 'nanoseconds_per_call')
    def test_corrupt_artifacts(self):
        corrupt = [HEADER, VALID.replace('elapsed_ns','cycles'), VALID.replace(',20,',',NaN,'),
                   VALID.replace(',4,2,',',0,2,'), VALID + VALID.splitlines()[1] + '\n',
                   '\n'.join(VALID.splitlines()[:-1]) + '\n', VALID.replace(',ff,',',unknown,'),
                   VALID.replace(',0,1,c,',',1,1,c,'), VALID.replace(',30,1020',',30'),
                   VALID.replace(',4,2,5,30',',8,2,5,30')]
        for contents in corrupt:
            with self.subTest(contents=contents), self.assertRaises(ValueError):
                self.run_csv(contents)
if __name__ == '__main__':
    unittest.main()
