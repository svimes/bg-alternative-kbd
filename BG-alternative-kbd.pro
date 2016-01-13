TEMPLATE = aux

NAME=Sailfish_Keyboard_BG

OTHER_FILES = \
        layout/* \
        rpm/*        

layout.files = layout/*
layout.path = /usr/share/maliit/plugins/com/jolla/layouts/

INSTALLS += \
        layout
