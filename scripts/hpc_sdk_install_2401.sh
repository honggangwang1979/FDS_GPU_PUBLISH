#for non-root user, please add sudo to each command

#install vi
apt update
apt install -y vim

#install zip
apt install -y zip

#install make
apt install -y make

#install gdb
apt install -y gdb

#install nvidia hpc sdk
#for non-root user, use sudo ...
# sudo curl https://developer.download.nvidia.com/hpc-sdk/ubuntu/DEB-GPG-KEY-NVIDIA-HPC-SDK |  sudo gpg --dearmor -o /usr/share/keyrings/nvidia-hpcsdk-archive-keyring.gpg
#echo 'deb [signed-by=/usr/share/keyrings/nvidia-hpcsdk-archive-keyring.gpg] https://developer.download.nvidia.com/hpc-sdk/ubuntu/amd64 /' |sudo tee /etc/apt/sources.list.d/nvhpc.list

curl https://developer.download.nvidia.com/hpc-sdk/ubuntu/DEB-GPG-KEY-NVIDIA-HPC-SDK | gpg --dearmor -o /usr/share/keyrings/nvidia-hpcsdk-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/nvidia-hpcsdk-archive-keyring.gpg] https://developer.download.nvidia.com/hpc-sdk/ubuntu/amd64 /' | tee /etc/apt/sources.list.d/nvhpc.list
apt-get update -y
apt-get install -y nvhpc-24-1



NVARCH=`uname -s`_`uname -m`; export NVARCH
NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS
MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/compilers/man; export MANPATH
PATH=$NVCOMPILERS/$NVARCH/24.1/compilers/bin:$PATH; export PATH
export PATH=$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/bin:$PATH
export MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/man

#echo "NVARCH=`uname -s`_`uname -m`; export NVARCH" >> ~/.bashrc
#echo "NVCOMPILERS=/opt/nvidia/hpc_sdk; export NVCOMPILERS" >> ~/.bashrc
#echo "MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/compilers/man; export MANPATH" >> ~/.bashrc
#echo "PATH=$NVCOMPILERS/$NVARCH/24.1/compilers/bin:$PATH; export PATH" >> ~/.bashrc
#echo "export PATH=$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/bin:$PATH" >> ~/.bashrc
#echo "export MANPATH=$MANPATH:$NVCOMPILERS/$NVARCH/24.1/comm_libs/openmpi4/man" >> ~/.bashrc

#pip install h5py
#pip install plotly
