ln -sf  ../../../bin/fds_nomp ./fds
#date
time mpirun --allow-run-as-root -n 1 ./fds ./HPC.fds
#date
time mpirun --allow-run-as-root -n 2 ./fds ./HPC_2m.fds
#date
time mpirun --allow-run-as-root -n 4 ./fds ./HPC_4m.fds
#date

