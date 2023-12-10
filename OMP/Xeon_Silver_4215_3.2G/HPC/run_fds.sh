ln -sf  ../../../bin/fds_omp ./fds

export OMP_NUM_THREADS=1
date
time mpirun --allow-run-as-root -n 1 ./fds ./HPC_1p_1t.fds
date
time mpirun --allow-run-as-root -n 2 ./fds ./HPC_2p_1t.fds
date

export OMP_NUM_THREADS=2
date
time mpirun --allow-run-as-root -n 1 ./fds ./HPC_1p_2t.fds
date
time mpirun --allow-run-as-root -n 2 ./fds ./HPC_2p_2t.fds
date

export OMP_NUM_THREADS=4
date
time mpirun --allow-run-as-root -n 2 ./fds ./HPC_2p_4t.fds
date

