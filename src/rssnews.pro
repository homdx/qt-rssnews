TEMPLATE = app

include (/android_openssl/openssl.pri)


QT += quick qml xml xmlpatterns
SOURCES += main.cpp
RESOURCES += rssnews.qrc

 #if defined(Q_OS_ANDROID)
 QMAKE_LINK += -nostdlib++
 #elif defined(Q_OS_LINUX)
 QMAKE_LINK += ''
 #elif defined(Q_OS_WIN)
 QMAKE_LINK += ''
 #else
 QMAKE_LINK += ''
 #endif

OTHER_FILES = rssnews.qml \
              content/*.qml \
              content/*.js \
              content/images/*

#target.path = $$[QT_INSTALL_EXAMPLES]/demos/rssnews
#INSTALLS += target

