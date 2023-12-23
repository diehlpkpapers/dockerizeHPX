#!/usr/bin/bash

. $HOME/spack/share/spack/setup-env.sh
spack containerize > hpx.def
singularity build --fakeroot hpx.sif hpx.def

