#!/bin/sh

if [ -d build ]
then
  echo "Starting SensorNode App Building..."
else
  echo "Make Output Folder "
  mkdir build
  echo "Starting SensorNode App Building..."
fi

rm -rf ./build/*
cd build

cmake -DCMAKE_TOOLCHAIN_FILE="cmake/toolchain-arm-none-eabi.cmake" ..
make
echo "Build Done"
