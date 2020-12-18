#! /bin/bash

wget 'https://openresty.org/download/nginx-1.17.8.tar.gz'
tar -zxvf nginx-1.17.8.tar.gz

cd /usr/local/bin
mkdir ffmpeg

wget 'http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz'
tar xf ffmpeg-release-64bit-static.tar.xz
mv * ../

chmod 777 start.py 
python start.py
