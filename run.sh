#!/bin/bash
echo "Compiling test"
rustc test.rs

echo "hard linking 'one' to 'test'"
ln test one

echo "symbolic linking 'two' to 'test'"
ln -s test two

echo "Running ./test"
./test

echo "Running ./one"
./one

echo "Running ./two"
./two
