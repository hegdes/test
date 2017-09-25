sudo apt-get update
sudo apt-get install libcurl4-openssl-dev git
sudo apt-get install build-essential
sudo apt-get install autotools-dev autoconf
sudo apt-get install libcurl3 libcurl4-gnutls-dev
mkdir download
cd downloads
git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" 
./configure
sudo make
sudo make install
sudo minerd -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u eugeneduligal@gmail.com -p x
