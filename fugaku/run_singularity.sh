#!/bin/bash
#PJM -L "node=1"
#PJM --mpi "shape=1" 
#PJM -L "rscgrp=small"
#PJM -L "elapse=00:30:00"
#PJM -L "jobenv=singularity"
#PJM -g ra010008
#PJM -x PJM_LLIO_GFSCACHE=/vol0004
#PJM -S # Direction of output statistic information file (-s or -S)

cd /vol0004/ra010008/data/u10393/dockerizeHPX/fugaku

newgrp fugaku
export TMPDIR=/worktmp

singularity exec --bind /vol0004/ra010008/data/u10393/dockerizeHPX/fugaku wamta24.simg bash run_octo_container.sh
