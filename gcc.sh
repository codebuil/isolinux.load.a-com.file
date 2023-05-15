printf "\033c\033[44;30m\n"
mkdir $HOME/src
cd $HOME/src
PREFIX="$HOME/opt/cross"
TARGET="i386-elf"
PATH="$PREFIX/bin:$PATH" 
mkdir gcc
cd gcc
wget https://ftp.gnu.org/gnu/gcc/gcc-10.1.0/gcc-10.1.0.tar.gz 
tar -xvf gcc-10.1.0.tar.gz
cd gcc-10.1.0
./configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ 
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
