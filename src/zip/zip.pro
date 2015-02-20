include( ../../shared.pri )

INCLUDEPATH+=../3rdparty/quazip/src

HEADERS = \
    RZip.h

SOURCES = \
    RZip.cpp

TEMPLATE = lib
r_static_libs {
    CONFIG += staticlib
}
else {
    CONFIG += plugin
}
TARGET = qcadzip
LIBS += -lqcadcore -lquazip
OTHER_FILES += zip.dox
DEFINES += QCADZIP_LIBRARY

#POST_TARGETDEPS += ../../$$ROUTDIR/$${RLIBPRE}zip$${RLIBPOSTDLL}