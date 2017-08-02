#!/bin/bash
echo "Compiling test"
rustc test.rs

echo "hard linking 'one' to 'test'"
ln -f test one

echo "symbolic linking 'two' to 'test'"
ln -sf test two

echo "Running ./test"
./test

echo "Running ./one"
./one

echo "Running ./two"
./two
