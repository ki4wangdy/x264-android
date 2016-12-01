#i

export NDK=/ndk/android-ndk-r10e
export PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt
export PLATFORM=$NDK/platforms/android-8/arch-arm
export PREFIX=./x264_android

./configure --prefix=$PREFIX \
	--enable-static \
	--enable-pic \
	--disable-asm \
	--disable-cli \
	--host=arm-linux \
	--cross-prefix=$PREBUILT/linux-x86/bin/arm-linux-androideabi- \
	--sysroot=$PLATFORM

make

make install

