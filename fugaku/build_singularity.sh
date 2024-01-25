#!/bin/bash
#PJM -L "node=1"
#PJM --mpi "shape=1" 
#PJM -L "rscgrp=small"
#PJM -L "elapse=08:30:00"
#PJM -L "jobenv=singularity"
#PJM -g ra010008
#PJM -x PJM_LLIO_GFSCACHE=/vol0004
#PJM -S # Direction of output statistic information file (-s or -S)


cd /vol0004/ra010008/data/u10393/dockerizeHPX/fugaku

export TMPDIR=/worktmp
newgrp fugaku

singularity build --fakeroot /worktmp/octotiger.simg octo.def

cp /worktmp/octiger.simg /vol0004/ra010008/data/u10393/dockerizeHPX/fugaku
