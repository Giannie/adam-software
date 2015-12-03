#!/bin/sh

dir=${1-/local/$USER/python}
tmpdir=/local/$USER/tmp
python_url=https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz
getpip_url=https://raw.github.com/pypa/pip/master/contrib/get-pip.py

python_dl=${python_url##h*/}
python_dl=${python_dl%.tar.xz}

mkdir -p $dir
mkdir -p $tmpdir
cd $tmpdir

wget $python_url
wget $getpip_url

tar xf "$python_dl".tar.xz

cd $python_dl

./configure --prefix=$dir
make
make install

cd $tmpdir

ln -s $dir/bin/python2.7 $dir/bin/python
export PATH=$dir/bin:$PATH
#export LD_LIBRARY_PATH=$dir/lib:$LD_LIBRARY_PATH

python get-pip.py

rm -r ~/.cache/pip

pip install numpy
pip install scipy matplotlib sympy virtualenv virtualenvwrapper

rm -rf $tmpdir
