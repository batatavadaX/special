#! /bin/bash

chmod 777 start.py 
python start.py

mkdir -p bin/nginx
cd bin/nginx

wget http://zlib.net/zlib-1.2.11.tar.gz
tar -zxf zlib-1.2.11.tar.gz

wget http://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar -zxf openssl-1.1.1g.tar.gz

wget https://nginx.org/download/nginx-1.18.0.tar.gz
tar zxf nginx-1.18.0.tar.gz

(
  cd nginx-1.18.0
  ./configure
  --conf-path=../nginx.conf \
  --pid-path=/bin/nginx/nginx.pid \
  --with-zlib=bin/nginx/zlib-1.2.11 \
  --with-http_ssl_module \
  --with-stream \
  --with-mail=dynamic \
  --with-http_flv_module \
  --add-module=/bin/nginx/nginx-rtmp-module-1.18.0 \
  --add-dynamic-module=/bin/nginx
  make install
)
bin/nginx -p 
../nginx.conf -c

echo "server online with nginx rtmp !"


