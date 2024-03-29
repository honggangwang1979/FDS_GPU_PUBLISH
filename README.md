# FDS_GPU_PUBLISH
  This is a beta version of GPU-ported FDS software.
  Inside this repository, there are several folders:
  1. bin
     This folder includes 2 versions of fds executable  binary file
     fds_gpu: GPU-ported fds. it supports MPI and multi GPUs, but does not get along with openmp. It's best to set the same number of MPI as the number of GPUs existing in a HPC cluster node. When two MPI processes share one GPU, the code may work but the performance may not be good.
     fds_nomp: CPU_based fds supporting MPI but not openmp. The users can compare the performances of nomp and GPU. sometimes the MPI+openmp just lowers the performance. 

  2. GPU
     This folder include a GPU device folder: RTX4000, please use the shell to record the CPU and GPU information. Under RTX4000, there is a HPC folder in which the appropriate fds executable file is linked. The HPC*.fds examples used are simplified cases of that used in the report in the DOC folder (HPC_Report_05_FDS.pdf). 
     32/64/128a.fds: benchmark
     simple_test*.fds: another series of fds cases

     When you are testing with different GPU, like P5000, just mkdir another folder P5000 and copy the HPC folder to it.
     To run, just use ". ./run_fds.sh" to test the performance of traditional fds with different meshes and openmp threads.

  3. NOMP
     Please use the lscpu.sh to record the cpu infomration. Under this folder there is a HPC folder similar to that under RTX4000/HPC. just run the run_fds.sh to test the performance of the traditional fds with different meshes.
     To run, just use ". ./run_fds.sh" to test the performance of traditional fds with different meshes and openmp threads.

  4. DOC
     This folder includes a report about the performance of the traditioanl CPU-based fds similar to that in OMP/HPC

  5. scripts
     This folder includes:
           hpc_sdk_install_2401.sh   :  install the Nvidia HPC-SDK needed by the fds_gpu executable, only needs to run in one terminal
           set_hpc_env_2401.sh       :  after install the HPC-SDK, in other terminals use this shell to set the environment variables.
        


  

