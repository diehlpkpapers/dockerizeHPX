#!/bin/bash
#PJM -L "node=1"
#PJM --mpi "shape=1" 
#PJM -L "rscgrp=small"
#PJM -L "elapse=08:30:00"
#PJM -g ra010008
#PJM -x PJM_LLIO_GFSCACHE=/vol0004
#PJM -S # Direction of output statistic information file (-s or -S)



# Load private spack 
cd /vol0004/ra010008/data/u10393
git clone https://github.com/RIKEN-RCCS/spack.git spackfugaku
. ./spackfugaku/share/spack/setup-env.sh
echo "upstreams:\n\tspack-public-instance:\n\t\tinstall_tree: /vol0004/apps/oss/spack/opt/spack" > ~/.spack/upstreams.yaml
spack repo add /vol0004/apps/oss/spack/var/spack/repos/local

# Install bzip
spack install bzip2%gcc@12.2.0

# Build Ocot-Tiger without mpi
spack -v  install -j 4 octotiger@0.10.0 +kokkos +kokkos_hpx_kernels simd_extension=SVE simd_library=STD build_type=Release %gcc@12.2.0 ^hpx malloc=jemalloc networking=none +generic_coroutines ^bzip2@1.0.6 ^git@2.39.1 ^silo~mpi


