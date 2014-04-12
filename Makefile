#############################################################################
# Makefile for building: Babel
# Generated by qmake (2.01a) (Qt 4.7.4) on: Sun Jun 2 22:09:14 2013
# Project:  Babel.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile Babel.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/default -I. -I/usr/include/QtCore -I/usr/include/QtNetwork -I/usr/include/QtGui -I/usr/include -I. -I. -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib64 -lQtGui -L/usr/lib64 -L/usr/X11R6/lib64 -lQtNetwork -lQtCore -lpthread -lcrypto -lportaudio -lopus
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = AddFriend.cpp \
		babel.cpp \
		ClientProtocol.cpp \
		ClientSocket.cpp \
		ClientUdpSocket.cpp \
		Config.cpp \
		Endianness.cpp \
		FriendsList.cpp \
		GetCall.cpp \
		HandlerOpus.cpp \
		HandlerPortAudio.cpp \
		InCall.cpp \
		main.cpp \
		RegisterDialog.cpp \
		ThreadSound.cpp moc_AddFriend.cpp \
		moc_babel.cpp \
		moc_ClientProtocol.cpp \
		moc_ClientSocket.cpp \
		moc_ClientUdpSocket.cpp \
		moc_Config.cpp \
		moc_FriendsList.cpp \
		moc_GetCall.cpp \
		moc_InCall.cpp \
		moc_RegisterDialog.cpp \
		moc_ThreadSound.cpp \
		qrc_babel.cpp
OBJECTS       = AddFriend.o \
		babel.o \
		ClientProtocol.o \
		ClientSocket.o \
		ClientUdpSocket.o \
		Config.o \
		Endianness.o \
		FriendsList.o \
		GetCall.o \
		HandlerOpus.o \
		HandlerPortAudio.o \
		InCall.o \
		main.o \
		RegisterDialog.o \
		ThreadSound.o \
		moc_AddFriend.o \
		moc_babel.o \
		moc_ClientProtocol.o \
		moc_ClientSocket.o \
		moc_ClientUdpSocket.o \
		moc_Config.o \
		moc_FriendsList.o \
		moc_GetCall.o \
		moc_InCall.o \
		moc_RegisterDialog.o \
		moc_ThreadSound.o \
		qrc_babel.o
DIST          = /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		Babel.pro
QMAKE_TARGET  = Babel
DESTDIR       = 
TARGET        = Babel

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_AddFriend.h ui_babel.h ui_Config.h ui_Dialog\ -\ untitled.h ui_FriendList.h ui_GetCall.h ui_InCall.h ui_RegisterDialog.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Babel.pro  /usr/share/qt4/mkspecs/default/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib64/libQtGui.prl \
		/usr/lib64/libQtCore.prl \
		/usr/lib64/libQtNetwork.prl
	$(QMAKE) -o Makefile Babel.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib64/libQtGui.prl:
/usr/lib64/libQtCore.prl:
/usr/lib64/libQtNetwork.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile Babel.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/Babel1.0.0 || $(MKDIR) .tmp/Babel1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Babel1.0.0/ && $(COPY_FILE) --parents AddFriend.h babel.h ClientProtocol.hh ClientSocket.hh ClientUdpSocket.hh Config.h Convert.hpp Endianness.hh FriendsList.h GetCall.h HandlerOpus.hh HandlerPortAudio.hh IAudio.hh InCall.h RegisterDialog.h ThreadSound.hh .tmp/Babel1.0.0/ && $(COPY_FILE) --parents babel.qrc .tmp/Babel1.0.0/ && $(COPY_FILE) --parents AddFriend.cpp babel.cpp ClientProtocol.cpp ClientSocket.cpp ClientUdpSocket.cpp Config.cpp Endianness.cpp FriendsList.cpp GetCall.cpp HandlerOpus.cpp HandlerPortAudio.cpp InCall.cpp main.cpp RegisterDialog.cpp ThreadSound.cpp .tmp/Babel1.0.0/ && $(COPY_FILE) --parents AddFriend.ui babel.ui Config.ui Dialog - untitled.ui FriendList.ui GetCall.ui InCall.ui RegisterDialog.ui .tmp/Babel1.0.0/ && (cd `dirname .tmp/Babel1.0.0` && $(TAR) Babel1.0.0.tar Babel1.0.0 && $(COMPRESS) Babel1.0.0.tar) && $(MOVE) `dirname .tmp/Babel1.0.0`/Babel1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Babel1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_AddFriend.cpp moc_babel.cpp moc_ClientProtocol.cpp moc_ClientSocket.cpp moc_ClientUdpSocket.cpp moc_Config.cpp moc_FriendsList.cpp moc_GetCall.cpp moc_InCall.cpp moc_RegisterDialog.cpp moc_ThreadSound.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_AddFriend.cpp moc_babel.cpp moc_ClientProtocol.cpp moc_ClientSocket.cpp moc_ClientUdpSocket.cpp moc_Config.cpp moc_FriendsList.cpp moc_GetCall.cpp moc_InCall.cpp moc_RegisterDialog.cpp moc_ThreadSound.cpp
moc_AddFriend.cpp: ClientSocket.hh \
		ClientProtocol.hh \
		AddFriend.h
	/usr/bin/moc $(DEFINES) $(INCPATH) AddFriend.h -o moc_AddFriend.cpp

moc_babel.cpp: ui_babel.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		FriendsList.h \
		AddFriend.h \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		RegisterDialog.h \
		Config.h \
		babel.h \
		Convert.hpp \
		babel.h
	/usr/bin/moc $(DEFINES) $(INCPATH) babel.h -o moc_babel.cpp

moc_ClientProtocol.cpp: ClientProtocol.hh
	/usr/bin/moc $(DEFINES) $(INCPATH) ClientProtocol.hh -o moc_ClientProtocol.cpp

moc_ClientSocket.cpp: ClientProtocol.hh \
		ClientSocket.hh
	/usr/bin/moc $(DEFINES) $(INCPATH) ClientSocket.hh -o moc_ClientSocket.cpp

moc_ClientUdpSocket.cpp: ClientProtocol.hh \
		ClientUdpSocket.hh
	/usr/bin/moc $(DEFINES) $(INCPATH) ClientUdpSocket.hh -o moc_ClientUdpSocket.cpp

moc_Config.cpp: babel.h \
		ui_babel.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		FriendsList.h \
		AddFriend.h \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		RegisterDialog.h \
		Config.h \
		Convert.hpp \
		Config.h
	/usr/bin/moc $(DEFINES) $(INCPATH) Config.h -o moc_Config.cpp

moc_FriendsList.cpp: AddFriend.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		FriendsList.h
	/usr/bin/moc $(DEFINES) $(INCPATH) FriendsList.h -o moc_FriendsList.cpp

moc_GetCall.cpp: InCall.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		GetCall.h
	/usr/bin/moc $(DEFINES) $(INCPATH) GetCall.h -o moc_GetCall.cpp

moc_InCall.cpp: ClientSocket.hh \
		ClientProtocol.hh \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		InCall.h
	/usr/bin/moc $(DEFINES) $(INCPATH) InCall.h -o moc_InCall.cpp

moc_RegisterDialog.cpp: ClientSocket.hh \
		ClientProtocol.hh \
		RegisterDialog.h
	/usr/bin/moc $(DEFINES) $(INCPATH) RegisterDialog.h -o moc_RegisterDialog.cpp

moc_ThreadSound.cpp: ClientUdpSocket.hh \
		ClientProtocol.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		ThreadSound.hh
	/usr/bin/moc $(DEFINES) $(INCPATH) ThreadSound.hh -o moc_ThreadSound.cpp

compiler_rcc_make_all: qrc_babel.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_babel.cpp
qrc_babel.cpp: babel.qrc
	/usr/bin/rcc -name babel babel.qrc -o qrc_babel.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_AddFriend.h ui_babel.h ui_Config.h ui_Dialog\ -\ untitled.h ui_FriendList.h ui_GetCall.h ui_InCall.h ui_RegisterDialog.h
compiler_uic_clean:
	-$(DEL_FILE) ui_AddFriend.h ui_babel.h ui_Config.h ui_Dialog - untitled.h ui_FriendList.h ui_GetCall.h ui_InCall.h ui_RegisterDialog.h
ui_AddFriend.h: AddFriend.ui
	/usr/bin/uic AddFriend.ui -o ui_AddFriend.h

ui_babel.h: babel.ui
	/usr/bin/uic babel.ui -o ui_babel.h

ui_Config.h: Config.ui
	/usr/bin/uic Config.ui -o ui_Config.h

ui_Dialog\ -\ untitled.h: Dialog\ -\ untitled.ui
	/usr/bin/uic Dialog\ -\ untitled.ui -o ui_Dialog\ -\ untitled.h

ui_FriendList.h: FriendList.ui
	/usr/bin/uic FriendList.ui -o ui_FriendList.h

ui_GetCall.h: GetCall.ui
	/usr/bin/uic GetCall.ui -o ui_GetCall.h

ui_InCall.h: InCall.ui
	/usr/bin/uic InCall.ui -o ui_InCall.h

ui_RegisterDialog.h: RegisterDialog.ui
	/usr/bin/uic RegisterDialog.ui -o ui_RegisterDialog.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

AddFriend.o: AddFriend.cpp AddFriend.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		ui_AddFriend.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o AddFriend.o AddFriend.cpp

babel.o: babel.cpp babel.h \
		ui_babel.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		FriendsList.h \
		AddFriend.h \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		RegisterDialog.h \
		Config.h \
		Convert.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o babel.o babel.cpp

ClientProtocol.o: ClientProtocol.cpp ClientProtocol.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ClientProtocol.o ClientProtocol.cpp

ClientSocket.o: ClientSocket.cpp ClientSocket.hh \
		ClientProtocol.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ClientSocket.o ClientSocket.cpp

ClientUdpSocket.o: ClientUdpSocket.cpp ClientUdpSocket.hh \
		ClientProtocol.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ClientUdpSocket.o ClientUdpSocket.cpp

Config.o: Config.cpp Config.h \
		babel.h \
		ui_babel.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		FriendsList.h \
		AddFriend.h \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		RegisterDialog.h \
		Convert.hpp \
		ui_Config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Config.o Config.cpp

Endianness.o: Endianness.cpp Endianness.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Endianness.o Endianness.cpp

FriendsList.o: FriendsList.cpp FriendsList.h \
		AddFriend.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		ui_FriendList.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o FriendsList.o FriendsList.cpp

GetCall.o: GetCall.cpp GetCall.h \
		InCall.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		ui_GetCall.h \
		Endianness.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o GetCall.o GetCall.cpp

HandlerOpus.o: HandlerOpus.cpp HandlerOpus.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o HandlerOpus.o HandlerOpus.cpp

HandlerPortAudio.o: HandlerPortAudio.cpp HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o HandlerPortAudio.o HandlerPortAudio.cpp

InCall.o: InCall.cpp InCall.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		ui_InCall.h \
		Endianness.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o InCall.o InCall.cpp

main.o: main.cpp babel.h \
		ui_babel.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		FriendsList.h \
		AddFriend.h \
		GetCall.h \
		InCall.h \
		ClientUdpSocket.hh \
		ThreadSound.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh \
		RegisterDialog.h \
		Config.h \
		Convert.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

RegisterDialog.o: RegisterDialog.cpp RegisterDialog.h \
		ClientSocket.hh \
		ClientProtocol.hh \
		ui_RegisterDialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o RegisterDialog.o RegisterDialog.cpp

ThreadSound.o: ThreadSound.cpp ThreadSound.hh \
		ClientUdpSocket.hh \
		ClientProtocol.hh \
		HandlerPortAudio.hh \
		IAudio.hh \
		HandlerOpus.hh
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ThreadSound.o ThreadSound.cpp

moc_AddFriend.o: moc_AddFriend.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_AddFriend.o moc_AddFriend.cpp

moc_babel.o: moc_babel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_babel.o moc_babel.cpp

moc_ClientProtocol.o: moc_ClientProtocol.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ClientProtocol.o moc_ClientProtocol.cpp

moc_ClientSocket.o: moc_ClientSocket.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ClientSocket.o moc_ClientSocket.cpp

moc_ClientUdpSocket.o: moc_ClientUdpSocket.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ClientUdpSocket.o moc_ClientUdpSocket.cpp

moc_Config.o: moc_Config.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Config.o moc_Config.cpp

moc_FriendsList.o: moc_FriendsList.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_FriendsList.o moc_FriendsList.cpp

moc_GetCall.o: moc_GetCall.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_GetCall.o moc_GetCall.cpp

moc_InCall.o: moc_InCall.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_InCall.o moc_InCall.cpp

moc_RegisterDialog.o: moc_RegisterDialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_RegisterDialog.o moc_RegisterDialog.cpp

moc_ThreadSound.o: moc_ThreadSound.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_ThreadSound.o moc_ThreadSound.cpp

qrc_babel.o: qrc_babel.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_babel.o qrc_babel.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
