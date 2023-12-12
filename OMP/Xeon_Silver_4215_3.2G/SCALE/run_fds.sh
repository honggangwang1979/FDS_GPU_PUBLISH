ln -sf ../../../bin/fds_omp ./fds
#date
export OMP_NUM_THREADS=1
time mpirun --allow-run-as-root -n 1 ./fds ./*32a.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*64a.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*128a.fds
#dat*e
export OMP_NUM_THREADS=2
time mpirun --allow-run-as-root -n 1 ./fds ./*32b.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*64b.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*128b.fds
#date
export OMP_NUM_THREADS=4
time mpirun --allow-run-as-root -n 1 ./fds ./*32c.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*64c.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*128c.fds
#date
export OMP_NUM_THREADS=8
time mpirun --allow-run-as-root -n 1 ./fds ./*32d.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*64d.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*128d.fds
#date
export OMP_NUM_THREADS=16
time mpirun --allow-run-as-root -n 1 ./fds ./*32e.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*64e.fds
time mpirun --allow-run-as-root -n 1 ./fds ./*128e.fds
#date

