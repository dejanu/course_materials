#!/usr/bin/env python3


import unittest


def hello(a):
	return a.upper()

class TestHelloFunction(unittest.TestCase):
    def test_hello(self):
        # Test the function with a sample input
        result = hello("dsa")
        self.assertEqual(result, "DSA")  # Check if the output is "DSA"

if __name__ == '__main__':
    unittest.main()


# python -m unittest smal.py
