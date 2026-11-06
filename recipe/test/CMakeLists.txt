cmake_minimum_required(VERSION 3.20)
project(test LANGUAGES NONE)

find_package(thrust REQUIRED)
find_package(cub REQUIRED)
find_package(cccl REQUIRED)
find_package(libcudacxx REQUIRED)
