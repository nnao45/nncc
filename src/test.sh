#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  cc -o nncc nncc.c
  ./nncc "$input" > tmp.s
  cc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42
assert 21 "5+20-4"
assert 42 "10+36-4"

echo OK