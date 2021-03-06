QT       += core gui widgets opengl multimedia

TARGET = cube
TEMPLATE = app

SOURCES += main.cpp \
    playground.cpp \
    glann.cpp \
    sceneloader.cpp \
    scene.cpp \
    lineobject.cpp \
    pointlight.cpp \
    mainwindow.cpp \
    waveloader.cpp \
    multiglann.cpp

qtHaveModule(opengl) {
    QT += opengl

    SOURCES +=

    HEADERS +=

    RESOURCES += \
        shaders.qrc
}

# install
target.path = $$[QT_INSTALL_EXAMPLES]/opengl/cube
INSTALLS += target

HEADERS += \
    playground.h \
    glann.h \
    sceneloader.h \
    Floatbits.h \
    scene.h \
    lineobject.h \
    pointlight.h \
    errorCodes.h \
    mainwindow.h \
    waveloader.h \
    multiglann.h

OTHER_FILES += \
    Temp.txt

FORMS += \
    mainwindow.ui
