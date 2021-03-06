#
# Project paint, paint
#

TARGET = harbour-paint

CONFIG += sailfishapp
QT += dbus

DEFINES += "APPVERSION=\\\"$${SPECVERSION}\\\""

message($${DEFINES})

system(lupdate qml -ts $$PWD/i18n/en.ts)
system(lrelease $$PWD/i18n/*.ts)

i18n.path = /usr/share/harbour-paint/i18n
i18n.files = i18n/*.qm

INSTALLS += i18n

SOURCES += src/paint.cpp \
    src/PainterClass.cpp
	
HEADERS += \
    src/PainterClass.h \
    src/IconProvider.h

OTHER_FILES += qml/paint.qml \
    qml/cover/CoverPage.qml \
    qml/pages/Paint.qml \
    qml/pages/AboutPage.qml \
    rpm/paint.spec \
    qml/pages/bgSettingsDialog.qml \
    harbour-paint.desktop \
    harbour-paint.png \
    qml/components/Messagebox.qml \
    qml/components/Toolbox.qml \
    qml/pages/genSettings.qml \
    qml/components/Toolbar1.qml \
    qml/components/Toolbar2.qml \
    qml/icons/icon-m-spray.png \
    qml/icons/icon-m-eraser.png \
    qml/pages/penSettingsDialog.qml \
    qml/icons/icon-m-toolsettings.png \
    qml/icons/icon-m-geometrics.png \
    qml/components/GeometryPopup.qml \
    qml/icons/icon-m-geom-rectangle.png \
    qml/icons/icon-m-geom-line.png \
    qml/icons/icon-m-geom-circle.png \
    qml/icons/icon-m-geom-rectangle-filled.png \
    qml/icons/icon-m-geom-circle-filled.png \
    qml/pages/eraserSettingsDialog.qml \
    qml/pages/spraySettingsDialog.qml \
    qml/icons/icon-m-save.png \
    qml/components/Toolbar3.qml \
    qml/pages/textSettingsDialog.qml \
    qml/pages/textEntryDialog.qml \
    qml/icons/icon-m-toolsettings.png \
    qml/icons/icon-m-texttool.png \
    qml/icons/icon-m-textsettings.png \
    qml/icons/icon-m-spray.png \
    qml/icons/icon-m-save.png \
    qml/icons/icon-m-geom-rectangle-filled.png \
    qml/icons/icon-m-geom-rectangle.png \
    qml/icons/icon-m-geom-line.png \
    qml/icons/icon-m-geometrics.png \
    qml/icons/icon-m-geom-circle-filled.png \
    qml/icons/icon-m-geom-circle.png \
    qml/icons/icon-m-erasersettings.png \
    qml/icons/icon-m-eraser.png \
    qml/icons/icon-m-dimensiontool.png \
    qml/pages/dimensionDialog.qml \
    qml/components/DimensionPopup.qml \
    qml/icons/icon-m-move.png \
    qml/icons/icon-m-grid.png \
    qml/icons/icon-m-geom-ellipse.png \
    qml/icons/icon-m-geom-ellipse-filled.png \
    qml/icons/icon-m-geom-fill.png \
    qml/components/ColorSelector.qml \
    i18n/*.ts

TRANSLATIONS += i18n/*.ts

RESOURCES +=

