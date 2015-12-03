#!/bin/sh

dir=${1-/local/$USER/python}

mkdir -p $dir
cd /tmp

ffmpegurl=https://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2

ffmpeg_dl=${ffmpegurl##h*/}
ffmpeg_dir=ffmpeg

wget $ffmpegurl

tar jxvf ffmpeg-snapshot.tar.bz2

cd $ffmpeg_dir

./configure --prefix=$dir
make
make install
