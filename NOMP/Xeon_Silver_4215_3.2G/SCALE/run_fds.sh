ln -sf ../../../bin/fds_nomp ./fds
#date
time mpirun --allow-run-as-root -n 1 ./fds ./32a.fds
#date
time mpirun --allow-run-as-root -n 1 ./fds ./64a.fds
#date
time mpirun --allow-run-as-root -n 1 ./fds ./128a.fds
#date
