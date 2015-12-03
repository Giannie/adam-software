#!/bin/sh

dir=${1-/local/$USER/python}

python_url=https://www.python.org/ftp/python/2.7.10/Python-2.7.10.tar.xz
getpip_url=https://raw.github.com/pypa/pip/master/contrib/get-pip.py

python_dl=${python_url##h*/}
python_dl=${python_dl%.tar.xz}

mkdir -p $dir
cd $dir

wget $python_url
wget $getpip_url

tar xf "$python_dl".tar.xz

cd $python_dl

./configure --prefix=$dir
make
make install

cd $dir

ln -s $dir/bin/python2.7 $dir/bin/python
export PATH=$dir/bin:$PATH

python get-pip.py

pip install numpy
pip install scipy matplotlib sympy virtualenv virtualenvwrapper
