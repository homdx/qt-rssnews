FROM homdx/qt-android-docker

RUN cd / && git clone https://github.com/homdx/android_openssl.git && cd /android_openssl && git checkout 5.12.4_5.13.0 && \
    mkdir /app && cd /app && export ANDROID_TARGET_SDK_VERSION=28 && \
    echo run && git clone https://github.com/homdx/qt-rssnews && cd qt-rssnews/src && build-android-gradle-project rssnews.pro --debug && \
    echo 'fix missing libc++_shared.so' && cp -vf /android-ndk-r17c/sources/cxx-stl/llvm-libc++/libs/armeabi-v7a/libc++_shared.so android-build/libs/armeabi-v7a/ && \
    echo mkdir /android-ndk-r20/sources/cxx-stl/gnu-libstdc++/4.9/libs/armeabi-v7a -pv && \
    build-android-gradle-project rssnews.pro --debug && \
    echo copy result apk && \
    cp -vf /app/qt-rssnews/src/android-build/build/outputs/apk/debug/android-build-debug.apk /app

CMD tail -f /var/log/faillog
