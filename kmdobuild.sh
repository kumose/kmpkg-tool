#! /bin/bash


if [ -d build ]; then
    rm -rf build/*
fi

rm -rf output/*

cmake -S . -B build -DBUILD_TESTING=OFF
cmake --build build -j 6

cp build/kmpkg output

