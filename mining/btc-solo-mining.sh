#!/bin/sh
# This scrip if for buildin and testing Loot mining of a BTC in Solo

sudo apt-get install libusb-1.0-0-dev libusb-1.0-0 libcurl4-openssl-dev libncurses5-dev libudev-dev screen libtool automake pkg-config libjansson-dev screen git build-essential autoconf -y

wget https://github.com/pooler/cpuminer/releases/download/v2.5.1/pooler-cpuminer-2.5.1.tar.gz
tar -zxvf pooler-cpuminer-2.5.1.tar.gz
cd cpuminer-2.5.1


./configure CFLAGS="-O3"
make

#Starting with my BTC trustwallet adress bc1q4sxtydksmphxgts3dg5ec6jtxd2gncm0mcfj90
# in solo mod on https://tazmining.ch/ pool
screen ./minerd -a sha256d -o stratum+tcp://pool.tazmining.ch:33334 -u bc1q4sxtydksmphxgts3dg5ec6jtxd2gncm0mcfj90 -p x


