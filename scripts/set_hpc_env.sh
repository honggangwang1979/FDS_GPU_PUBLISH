NVARCH=`uname -s`_`uname -m`; export NVARCH
NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS
MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/23.7/compilers/man; export MANPATH
PATH=$NVCOMPILERS/$NVARCH/23.7/compilers/bin:$PATH; export PATH
export PATH=$NVCOMPILERS/$NVARCH/23.7/comm_libs/openmpi4/bin:$PATH
export MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/23.7/comm_libs/openmpi4/man
bash
