# FDS_GPU_PUBLISH
  This is a beta version of GPU-ported FDS software.
  Inside this repository, there are several folders:
  1. bin
     This folder includes 3 versions of fds executable  binary file
     fds_gpu: GPU-ported fds. it supports MPI and multi GPUs, but does not get along with openmp. It's best to set the same number of MPI as the number of GPUs existing in a HPC cluster node. When two MPI processes share one GPU, the code may work but the performance may not be good.
     fds_omp: CPU-based fds supporting MPI and openmp. This is the traditional, most used version of fds.
     fds_nomp: CPU_based fds supporting MPI but not openmp. This users can compare the performances of omp and nomp. sometimes the MPI+openmp just lowers the performance. 
  2. GPU
     This folder include a GPU device folder: RTX5000, please use the shell to record the CPU and GPU information. Under RTX5000, there is a HPC folder in which the appropriate fds executable file is linked. The fds example used is a simplified case of that used in the report in the DOC folder (HPC_Report_05_FDS.pdf)
     When you are testing with different GPU, like P5000, just mkdir another folder P5000 and copy the HPC folder to it.
     To run, just use ". ./run_fds.sh"
  3. OMP
     This folder includes a CPU machine folder: Xeon**, please use the lscpu.sh to record the cpu information. Under this folder there is HPC folder similar to that under RTX5000/HPC. just run the run_fds.sh to test the performance of the traditional fds. All the fds cases with same number of processes are identical except the CHILD.  HPC_1p_1t.fds means MPI=1, namely one mesh, and Openmp thread = 1.
  4. NOMP
     This folder includes CPU machine folder: Xeon**, please use the lscpu.sh to record the cpu infomration. Uner this folder there is a HPC folder similar to that under RTX5000/HPC. just run the run_fds.sh to test the performance of the traditional fds.
  5. DOC
     This folder includes a report about the performance of the traditioanl CPU-based fds similar to that in OMP/HPC
  6. scripts
     This folder includes:
           hpc_sdk_install.sh   :  install the Nvidia HPC-SDK needed by the fds_gpu executable, only needs to run in one terminal
           set_hpc_env.sh       :  after install the HPC-SDK, in other terminals use this shell to set the environment variables.
        


  

