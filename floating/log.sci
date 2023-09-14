# sci

sudo chown sbkim:sbkim eun
sudo ./openfoam-docker -default -data=/media/sbkim/urban/urban/hines

eigen
boost
vtk
lapack
lapacke
blas

qt
vtk
pcl

## vtk ref. log.vtk



2018-08-13 13:36

CCFLAGS =       -O3 -fno-alias -restrict -ip -unroll0 -shared-intel



LINKFLAGS =     -O -L/cm/shared/apps/intel/compilers_and_libraries/2018.3.222/linux/mkl/lib/intel64



LIB =           -lstdc++ -lpthread -lmkl_sequential -lmkl_intel_lp64 -lmkl_core



MPI_INC = -I/cm/shared/apps/intel/compilers_and_libraries/2018.3.222/linux/mpi/include64 -DMPICH_SKIP_MPICXX -DOMPI_SKIP_MPICXX=1
MPI_PATH =
MPI_LIB = -L/cm/shared/apps/intel/compilers_and_libraries/2018.3.222/linux/mpi/lib64



FFT_INC = -DFFT_MKL -I/applic/compilers/mic-knl/intel/18.0.3/mpi/impi/18.0.3/applib2/fftw/3.3.7/include
FFT_PATH =
FFT_LIB = -L/applic/compilers/mic-knl/intel/18.0.3/mpi/impi/18.0.3/applib2/fftw/3.3.7/lib
CCFLAGS = -O3 -unroll0

module purge
module load

    sudo apt install \
    build-essential \
    cmake \
    cmake-curses-gui \
    mesa-common-dev \
    mesa-utils \
    freeglut3-dev \
    ninja-build

    sudo apt install \
    build-essential \
    cmake \
    mesa-common-dev \
    mesa-utils \
    freeglut3-dev \
    python3-dev \
    python3-venv \
    git-core \
    ninja-build

sudo apt install \
build-essential \
cmake \
cmake-curses-gui \
mesa-common-dev \
mesa-utils \
freeglut3-dev \
python3-dev \
python3-venv \
git-core \
ninja-build

sudo apt install graphviz* doxygen

git clone git://code.qt.io/qt/qt5.git

perl init-repository


#### graphviz* \

#### Qt5
https://download.qt.io/new_archive/qt/5.5/5.5.1/

   x sudo apt-get install libqt4-dev libvtk5-qt4-dev

#### Qt6
https://www.qt.io/download-qt-installer?hsCtaTracking=99d9dd4f-5681-48d2-b096-470725510d34%7C074ddad0-fdef-4e53-8aa8-5e8a876d6ab4

#####
    https://my.qt.io/profile

    sbkim@tesolution.com
    akrur0824!

    sbkim.bnes@gmail.com
    akrur0824!

/home/sbkim/Qt

sudo apt install qtcreator


#### vtk
rm -rf ~/vtk/build
mkdir -p ~/vtk/build
cd ~/vtk/build
ccmake -GNinja /home/sbkim/Work/sci/VTK-9.2.6

ccmake -GNinja /home/sbkim/Work/sci/vtk-master

cmake --build ~/vtk/build

#### itk
https://itk.org/download/


### 2
https://vtk.org/Wiki/VTK/Configure_and_Build




mkdir -p ~/vtk/build
cd ~/vtk/build
<!-- ccmake -GNinja /data/animoBNES.github.io/floating/tools/vtk-master/source -->
ccmake -GNinja /data/animoBNES.github.io/floating/tools/vtk-master
    cmake --build ~/vtk/build

cd /data/animoBNES.github.io/floating/tools/foamMooring
cd /data/animoBNES.github.io/floating/tools/vtk-master


## Installing BLAS and LAPACK packages
        https://www.netlib.org/blas/
        https://www.netlib.org/lapack/

        https://github.com/Reference-LAPACK/lapack

        sudo apt-get install libblas-dev liblapack-dev
        sudo apt-get install gfortran
        sudo apt-get install libatlas-base-dev

        sudo apt install libblas-dev

        sudo apt update
        sudo apt install liblapack3
        sudo apt install liblapack-dev
        sudo apt install libopenblas-base
        sudo apt install libopenblas-dev
        sudo apt install liblapacke-dev
        sudo apt install liblapack-dev

## blass
    CPU throttling: off
        sudo apt-get install cpufrequtils
        cpufreq-set -g performance <CPU number>
            cat /proc/cpuinfo

    sudo apt-get install gfortran


##


### qt5
sudo apt-get build-dep qtbase5-dev

sudo apt install software-properties-gtk

sudo apt-get install build-essential perl python3 git

sudo apt-get install '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev

sudo apt-get install flex bison gperf libicu-dev libxslt-dev ruby

sudo apt-get install libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libxtst-dev libxss-dev libdbus-1-dev libevent-dev libfontconfig1-dev libcap-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libegl1-mesa-dev gperf bison nodejs

sudo apt-get install libasound2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev libgstreamer-plugins-bad1.0-dev

sudo apt install clang libclang-dev

git clone git://code.qt.io/qt/qt5.git

cd qt5
perl init-repository

mkdir qt5-build
cd qt5-build
../qt5/configure -developer-build -opensource -nomake examples -nomake tests

make -j$(nproc)

#### installing
make install

#### updates
git pull
perl init-repository -f

##### absolute latest submodules
cd qtdeclarative
git fetch
git checkout -b 5.9 origin/5.9

or

perl init-repository -f --branch


#### troubles
sudo apt-get install libx11-xcb-dev
sudo apt-get install libicu-dev

#### ref
https://wiki.qt.io/Building_Qt_5_from_Git#Getting_the_source_code

#### vtk
rm -rf ~/vtk/build
mkdir -p ~/vtk/build
cd ~/vtk/build
ccmake -GNinja /data/eun/VTK-9.2.6
ccmake -GNinja /home/sbkim/Work/sci/VTK-9.2.6

##### configure error
CUDACXX=/usr/local/cuda/bin/nvcc
    into /etc/environment

sudo apt policy libgles2-mesa-dev

sudo make -j$(nproc)
sudo make install

###### Build VTK
cd ~/vtk/build
make -j$(nproc)

####

export VTK_DIR=~/vtk/build

####

python3 -m venv ./env
source ./env/bin/activate
pip install vtk

libvtk9-dev
