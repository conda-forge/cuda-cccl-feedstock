#!/bin/bash

# Install to conda style directories
[[ -d lib64 ]] && mv lib64 lib

[[ ${target_platform} == "linux-64" ]] && targetsDir="targets/x86_64-linux"
[[ ${target_platform} == "linux-ppc64le" ]] && targetsDir="targets/ppc64le-linux"
# https://docs.nvidia.com/cuda/cuda-compiler-driver-nvcc/index.html?highlight=tegra#cross-compilation
[[ ${target_platform} == "linux-aarch64" && ${arm_variant_type} == "sbsa" ]] && targetsDir="targets/sbsa-linux"
[[ ${target_platform} == "linux-aarch64" && ${arm_variant_type} == "tegra" ]] && targetsDir="targets/aarch64-linux"

if [ -z "${targetsDir+x}" ]; then
    echo "target_platform: ${target_platform} is unknown! targetsDir must be defined!" >&2
    exit 1
fi

mkdir -p ${PREFIX}/${targetsDir}

cp -rv lib ${PREFIX}/${targetsDir}
cp -rv include ${PREFIX}/${targetsDir}
