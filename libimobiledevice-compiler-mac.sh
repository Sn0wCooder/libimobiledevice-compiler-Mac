#!/bin/bash

cd ~/Desktop/
rm -rf libimobiledevice-mac
mkdir libimobiledevice-mac
cd libimobiledevice-mac

xcode-select --install

git clone https://github.com/libimobiledevice/sbmanager.git
cd sbmanager
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/ifuse.git
cd ifuse
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/usbmuxd.git
cd usbmuxd
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/libplist.git
cd libplist
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/ideviceinstaller.git
cd ideviceinstaller
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/libirecovery.git
cd libirecovery
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/idevicerestore.git
cd idevicerestore
./autogen.sh
make
make install
cd ..

git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
./autogen.sh
make
make install
cd ..

echo "By Leonardo Alfreducci"
echo "DONE!"