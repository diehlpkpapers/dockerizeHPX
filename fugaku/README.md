## Singularity on Fugaku

Get a special allocation to run singularity

```bash
pjsub --interact -L "rscunit=rscunit_ft01,rscgrp=int,node=1,elapse=0:30:00,jobenv=singularity" -g ra****  -x  PJM_LLIO_GFSCACHE=/vol0004
```
