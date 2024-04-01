# FDS_GPU_PUBLISH

  This is a beta version of GPU-ported FDS software based on this repository : https://github.com/firemodels/fds at the time of August, 2023

  Inside this repository, there are several folders:

  1. bin
     This folder includes 2 versions of fds executable binary file

     1) fds_gpu: GPU-ported fds. it supports MPI and multi GPUs, but does not get along with openmp. It's best to set the same number of MPI as the number of GPUs existing in a HPC cluster node. When two MPI processes share one GPU, the code may work but the performance may not be good.

     2) fds_nomp: CPU-based fds supporting MPI but not openmp. The users can compare the performances of nomp and GPU (Our tests show that  sometimes the MPI+openmp just lowers the performance, so in this distribution we do not include OMP variant of FDS). 

  2. GPU
     This folder include a GPU device folder: RTX4000, please use the shell lscpu-gpu.sh to record the CPU and GPU information. Under RTX4000, there is a HPC folder in which the appropriate fds executable file is linked. 
     1) The HPC*.fds examples used are simplified cases of that used in the report in the DOC folder (HPC_Report_05_FDS.pdf). 
     
     2) 32/64/128a.fds: these are the benchmark cases stemming from what are shipped with CPU-based FDS with the name of openmp_test32/64/128a(b,c,etc).fds 

     3) simple_test*.fds: another series of fds cases shipped with CPU-based FDS

     In all the above 3 groups, "2m" and "4m" means 4-meshes FDS cases, "NR" means "no radiation" cases of FDS.

     When you are testing with different GPU, like P5000, just mkdir another folder P5000 and copy the HPC folder to it.
     To run, just use ". ./run_fds.sh" 

  3. NOMP
     Please use the lscpu.sh to record the cpu infomration. Under this folder there is a HPC folder similar to that under RTX4000/HPC. just run the run_fds.sh to test the performance of the traditional fds with different meshes.

  4. DOC
     This folder includes a report about the performance of the traditioanl CPU-based fds similar to that in OMP/HPC
     It also includes a report about the potential of applications of GPUs in CFD with an over-simplified CFD problem. You can reference this document to have a rough idea about how much benefits you may get from your currently used CPU-based simulation software after porting them to GPUs.

  5. scripts
     This folder includes:
           hpc_sdk_install_2401.sh   :  install the Nvidia HPC-SDK needed by the fds_gpu executable, only needs to run in one terminal
           set_hpc_env_2401.sh       :  after install the HPC-SDK, in other terminals use this shell to set the environment variables.
           CmpGPU.ipynb              :  This is a python notebook tool, you can use this to visualize the comparison of performance between GPU fds and nomp fds

# How to set up the envirnonment and run the GPU-based FDS

  1. Prerequirments: Any computer installed NVIDIA GPUs with Compter Capacity >= 60 (we currently do not support other GPUS like AMD GPUs)
     To check the table of gpu vs compute capacity, check this link: https://developer.nvidia.com/cuda-gpus#compute

     if you do not have one, it is easy to grab one online at:

     1) https://console.paperspace.com
        Paperspace used to have free GPU resources available , but now you may need to upgrade to 8 or 40 dollar/month plan, otherwise it will be hard to hunter one free GPU there: you need to refresh the web page frequently to see if you are lucky.

     2) vast.vi 
        This company provides very cheap GPU resource. The problem is that you need to download your data after simulation since you may not be able to get the same GPU with your historical data, and they may not save the data for you even if you get the same GPU.

  2. git clone https://github.com/honggangwang1979/FDS_GPU_PUBLISH.git
  3. cd ./FDS_GPU_PUBLISH/scripts, run:
          . ./hpc_sdk_install_2401.sh
     then run:  nvfortran to test if the setup is successful (if you get command not found, then the setup is unsuccessful, you may need to reinstall , or you can reach out to us)

  4. Once step 3 is done, if you need to open another terminal, you should set the environment variables by running: 
          . ./set_hpc_env_2401.sh

  5. cd ../bin, run:
     tar -xvf fds_GPU_V0.1_Beta.tar.gz

  6. cd ../NOMP/RTX4000/HPC, change the run_fds.sh to include the FDS case you want to run, then run:
         . ./run_fds.sh
  7. do the same thing in GPU/RTX4000/HPC

  8. run ./FDS_GPU_PUBLISH/scripts/CmpGPU.ipynb to analyze the result. You need to change the python script according to the FDS cases you have run, and you need to run it in a jubiter notebook or other compatible tabs. 


# Note: 
     1. Due to the difference in physical performance of various GPUs, the performance improvement of our GPU-based FDS may vary among these GPUs. the general rule is that the more the domain cells, the higher the performance improvement. The critical cell size is around 64x64x64, below this number the GPU-based FDS has little performance advantage or even slower than the CPU-based FDS. As an example, In NVIDIA P5000, we have achieved 2x faster for 128a.fds, 1.6 x faster for 64a.fds, and slower for 32a.fds. (we got less performance improvment in RTX4000, and A4000)

     2. For Multi-GPU cases, at this stage of the GPU-based FDS, the performance improvment of 2-meshes with 2-processes and 2-GPUs over 1-mesh with 1 process and 1 GPU is about 30~40%, instead of what we are expecting (nealy 100%). The primary reason for this may be that the GPU-based FDS is more efficient when cell size per mesh is larger. (in single mesh scenario the cell size per mesh is  2x larger than that  in a 2-meshes scenario). We are investigating possible ways to enhance the multi-gpu performance.

     3. In this beta version of our GPU-based FDS, only the default physical models are GPU-accelerated, which means different FDS cases may come with different performance improvement. Please reach out to me in my LinkedIn page: https://www.linkedin.com/in/honggang-wang-38500285/ for general questions, or my email at honggangwang1979@gmail.com 

     4. Till now, we have been able to run the GPU-based FDS in RTX3060, RTX4000, RTX5000, RTX4090, A4000, A5000. It should be able to work in any NVIDIA GPUs with computer compacity >=60.


  

