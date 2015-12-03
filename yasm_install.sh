#!/bin/sh

dir=${1-/local/$USER/python}
tmpdir=/local/$USER/tmp

mkdir -p $dir
mkdir -p $tmpdir
cd $tmpdir

url=http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz

dl=${ffmpegurl##h*/}
src_dir=${dl%.tar.gz}

wget $url

tar xzvf $dl

cd $src_dir

./configure --prefix=$dir
make
make install

rm -rf $tmpdir
