## Singularity on Fugaku

The two PJM scripts compile Octo-Tiger using spack with and without Fusitju MPI on the A64FX nodes. 

To build the singularity image, a special job environment was needed on Supercomputer\ Fugaku.

```bash
pjsub --interact -L "rscunit=rscunit_ft01,rscgrp=int,node=1,elapse=0:30:00,jobenv=singularity" -g ra****  -x  PJM_LLIO_GFSCACHE=/vol0004
```
