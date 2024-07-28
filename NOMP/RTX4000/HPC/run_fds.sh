#cp /notebooks/firemodels/fds/Build/ompi_gnu_linux_nomp/*nomp ./fds

date
#time mpirun --allow-run-as-root -n 1 ./fds ./32a.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./64a_quater.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./64a_half.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./64a.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./128a_quater.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./128a_half.fds
time mpirun --allow-run-as-root -n 1 ./fds ./128a.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./256a_quater.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./256a_half.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./256a.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./256a.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./128a_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./256a_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./128a_half.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./128a_2m.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_32.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_64.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_128.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_36.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_72.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_144.fds

#date
#time mpirun --allow-run-as-root -n 1 ./fds ./32a_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./64a_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./128a_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_32_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_64_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./HPC_128_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_36_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_72_NR.fds
#time mpirun --allow-run-as-root -n 1 ./fds ./simple_test_144_NR.fds

#date
#time mpirun --allow-run-as-root -n 2 ./fds ./32a_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./64a_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./128a_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./HPC_32_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./HPC_64_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./HPC_128_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./simple_test_36_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./simple_test_72_2m.fds
#time mpirun --allow-run-as-root -n 2 ./fds ./simple_test_144_2m.fds
#
#date
#time mpirun --allow-run-as-root -n 4 ./fds ./32a_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./64a_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./128a_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./HPC_32_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./HPC_64_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./HPC_128_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./simple_test_36_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./simple_test_72_4m.fds
#time mpirun --allow-run-as-root -n 4 ./fds ./simple_test_144m.fds
#date


#mpirun --allow-run-as-root -n 1 nsys profile ./fds ./*32a.fds
#nsys stats *rep >fds.report

