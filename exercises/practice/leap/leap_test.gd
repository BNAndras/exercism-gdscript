const TEST_CASES = [
	{"test_name": "year not divisible by 4 in common year", "method_name": "leap", "args": [2015], "expected": false},
	{"test_name": "year divisible by 2, not divisible by 4 in common year", "method_name": "leap", "args": [1970], "expected": false},
    {"test_name": "year divisible by 4, not divisible by 100 in leap year", "method_name": "leap", "args": [1996], "expected": true},
    {"test_name": "year divisible by 4 and 5 is still a leap year", "method_name": "leap", "args": [1960], "expected": true},
    {"test_name": "year divisible by 100, not divisible by 400 in common year", "method_name": "leap", "args": [2100], "expected": false},
    {"test_name": "year divisible by 100 but not by 3 is still not a leap year", "method_name": "leap", "args": [1900], "expected": false},
    {"test_name": "year divisible by 400 is leap year", "method_name": "leap", "args": [2000], "expected": true},
    {"test_name": "year divisible by 400 but not by 125 is still a leap year", "method_name": "leap", "args": [2400], "expected": true},
    {"test_name": "year divisible by 200, not divisible by 400 in common year", "method_name": "leap", "args": [1800], "expected": false},
]