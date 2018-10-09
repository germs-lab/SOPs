## MSU's HPCC
GERMS LAB use MSU's HPCC

## Update for dev-intel18
https://wiki.hpcc.msu.edu/display/ITH/2018+Environment+Update+and+Migration

## How to submit job
```
sbatch myjob.sb
```

## Here more tips
squeue -u <username> to see what's running
sinfo -t idle   - to see which partitions have space to run your job
sinfo -t mixed   - to see partitions that are only partially used
squeue -j <jobID> --start      - to see how long until your job starts
sacct --format="JobID,jobname,NTasks,nodelist,MaxRSS,MaxVMSize,AveRSS,AveVMSize,ReqMem"  - to see how much memory a job used after it was run (and there are lots of other things you can see also listed in the manual)

## For more information
https://wiki.hpcc.msu.edu/display/ITH/Job+Script+and+Job+Submission
https://wiki.hpcc.msu.edu/display/ITH/System+Commands



