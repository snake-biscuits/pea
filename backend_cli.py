"""PEA Python backend CLI"""
import argparse
import sys

import python_backend


parser = argparse.ArgumentParser(description="PEA Python backend CLI")
group = parser.add_mutually_exclusive_group()
group.add_argument("-a", "--add", type=int, help="input", metavar="X")
group.add_argument("-l", "--login", help="get credentials json", action="store_true")
args = parser.parse_args()

if args.login:
    print(python_backend.encode_json.credentials())
else:
    x = args.add.x
    print(f"{x} + 1 =", python_backend.add.plus_one(x))
    print(f"{x} + 2 =", python_backend.add.plus_two(x))
sys.stdout.flush()  # send stdout to Node.js
