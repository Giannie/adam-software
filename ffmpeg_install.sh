#!/bin/sh

dir=${1-/local/$USER/python}
tmpdir=/local/$USER/tmp

export LD_LIBRARY_PATH=/local/$USER/$dir/lib:$LD_LIBRARY_PATH
export PATH=/local/$USER/python/bin:$PATH

mkdir -p $dir
mkdir -p $tmpdir
cd $tmpdir

ffmpegurl=https://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2

ffmpeg_dl=${ffmpegurl##h*/}
ffmpeg_dir=ffmpeg

wget $ffmpegurl

tar jxvf ffmpeg-snapshot.tar.bz2

cd $ffmpeg_dir

./configure --prefix=$dir
make
make install

rm -rf $tmpdir
