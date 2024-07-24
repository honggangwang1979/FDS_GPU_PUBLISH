NVARCH=`uname -s`_`uname -m`; export NVARCH
NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS
MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/compilers/man; export MANPATH
PATH=$NVCOMPILERS/$NVARCH/24.1/compilers/bin:$PATH; export PATH
export PATH=$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/bin:$PATH
export MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/man

export CUDA_MPS_PIPE_DIRECTORY=/tmp/nvidia-mps
export CUDA_MPS_LOG_DIRECTORY=/tmp/nvidia-log

bash
