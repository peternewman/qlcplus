#############################################################################
# Application name & version
#############################################################################

APPNAME    = Q Light Controller Plus
FXEDNAME   = Fixture Definition Editor
APPVERSION = 4.9.0 GIT

#############################################################################
# Compiler & linker configuration
#############################################################################

# Treat all compiler warnings as errors
QMAKE_CXXFLAGS += -Werror
!macx:QMAKE_CXXFLAGS += -Wno-unused-local-typedefs # Fix to build with GCC 4.8
CONFIG         += warn_on

# Build everything in the order specified in .pro files
CONFIG         += ordered

# Enable the following 2 lines when making a release
CONFIG         -= release
#DEFINES        += QT_NO_DEBUG_OUTPUT

# Disable this when making a release
CONFIG         += debug

# Disable these if you don't want to see SVN revision in the About Box
#unix:REVISION = $$system(svn info | grep "Revision" | sed 's/Revision://')
#unix:APPVERSION = $$APPVERSION-r$$REVISION

unix:OLA_GIT    = /usr/src/ola    # OLA directories

#macx:CONFIG   += x86 ppc  # Build universal binaries (Leopard only)
macx:CONFIG    -= app_bundle # Let QLC+ construct the .app bundle

# Produce build targets to the source directory
win32:DESTDIR  = ./

# Don't whine about some imports
win32:QMAKE_LFLAGS += -Wl,--enable-auto-import

# Enable unit test coverage measurement ('qmake CONFIG+=coverage' works, too)
#CONFIG        += coverage

#############################################################################
# Installation paths
#############################################################################

# Install root
win32:INSTALLROOT       = $$(SystemDrive)/qlcplus
macx:INSTALLROOT        = ~/QLC+.app/Contents
unix:!macx:INSTALLROOT += /usr
android:INSTALLROOT     = /

# Binaries
win32:BINDIR      =
unix:!macx:BINDIR = bin
macx:BINDIR       = MacOS
android:BINDIR    = bin

# Libraries
win32:LIBSDIR      =
unix:!macx:LIBSDIR = lib
macx:LIBSDIR       = Frameworks
android:LIBSDIR    = /libs/armeabi-v7a

# Data
win32:DATADIR      =
unix:!macx:DATADIR = share/qlcplus
macx:DATADIR       = Resources
android:DATADIR    = /assets

# User Data
win32:USERDATADIR      = QLC+
unix:!macx:USERDATADIR = .qlcplus
macx:USERDATADIR       = "Library/Application Support/QLC+"
android:USERDATADIR    = .qlcplus

# Documentation
win32:DOCSDIR      = Documents
unix:!macx:DOCSDIR = $$DATADIR/documents
macx:DOCSDIR       = $$DATADIR/Documents
android:DOCSDIR    = $$DATADIR/documents

# Input profiles
win32:INPUTPROFILEDIR      = InputProfiles
unix:!macx:INPUTPROFILEDIR = $$DATADIR/inputprofiles
macx:INPUTPROFILEDIR       = $$DATADIR/InputProfiles
android:INPUTPROFILEDIR    = $$DATADIR/inputprofiles

# User input profiles
win32:USERINPUTPROFILEDIR      = $$USERDATADIR/InputProfiles
unix:!macx:USERINPUTPROFILEDIR = $$USERDATADIR/inputprofiles
macx:USERINPUTPROFILEDIR       = $$USERDATADIR/InputProfiles
android:USERINPUTPROFILEDIR    = $$USERDATADIR/inputprofiles

# Midi templates
win32:MIDITEMPLATEDIR      = MidiTemplates
unix:!macx:MIDITEMPLATEDIR = $$DATADIR/miditemplates
macx:MIDITEMPLATEDIR       = $$DATADIR/MidiTemplates
android:MIDITEMPLATEDIR    = $$DATADIR/miditemplates

# User midi templates
win32:USERMIDITEMPLATEDIR      = $$USERDATADIR/MidiTemplates
unix:!macx:USERMIDITEMPLATEDIR = $$USERDATADIR/miditemplates
macx:USERMIDITEMPLATEDIR       = $$USERDATADIR/MidiTemplates
android:USERMIDITEMPLATEDIR    = $$USERDATADIR/miditemplates

# Channel modifiers templates
win32:MODIFIERSTEMPLATEDIR      = ModifiersTemplates
unix:!macx:MODIFIERSTEMPLATEDIR = $$DATADIR/modifierstemplates
macx:MODIFIERSTEMPLATEDIR       = $$DATADIR/ModifiersTemplates
android:MODIFIERSTEMPLATEDIR = $$DATADIR/modifierstemplates

# User midi templates
win32:USERMODIFIERSTEMPLATEDIR      = $$USERDATADIR/ModifiersTemplates
unix:!macx:USERMODIFIERSTEMPLATEDIR = $$USERDATADIR/modifierstemplates
macx:USERMODIFIERSTEMPLATEDIR       = $$USERDATADIR/ModifiersTemplates
android:USERMODIFIERSTEMPLATEDIR = $$USERDATADIR/modifierstemplates

# Fixtures
win32:FIXTUREDIR      = Fixtures
unix:!macx:FIXTUREDIR = $$DATADIR/fixtures
macx:FIXTUREDIR       = $$DATADIR/Fixtures
android:FIXTUREDIR    = $$DATADIR/fixtures

# Gobos
win32:GOBODIR      = Gobos
unix:!macx:GOBODIR = $$DATADIR/gobos
macx:GOBODIR       = $$DATADIR/Gobos
android:GOBODIR    = $$DATADIR/gobos

# User fixtures
win32:USERFIXTUREDIR      = $$USERDATADIR/Fixtures
unix:!macx:USERFIXTUREDIR = $$USERDATADIR/fixtures
macx:USERFIXTUREDIR       = $$USERDATADIR/Fixtures
android:USERFIXTUREDIR    = $$USERDATADIR/fixtures

# Plugins
win32:PLUGINDIR      = Plugins
unix:!macx:PLUGINDIR = $$LIBSDIR/qt4/plugins/qlcplus
macx:PLUGINDIR       = PlugIns
android:PLUGINDIR    = Plugins

# Translations
win32:TRANSLATIONDIR      =
unix:!macx:TRANSLATIONDIR = $$DATADIR/translations
macx:TRANSLATIONDIR       = $$DATADIR/Translations
android:TRANSLATIONDIR    = $$DATADIR/translations

# RGB Scripts
win32:RGBSCRIPTDIR      = RGBScripts
unix:!macx:RGBSCRIPTDIR = $$DATADIR/rgbscripts
macx:RGBSCRIPTDIR       = $$DATADIR/RGBScripts
android:RGBSCRIPTDIR    = $$DATADIR/rgbscripts

# User RGB Scripts
win32:USERRGBSCRIPTDIR      = $$USERDATADIR/RGBScripts
unix:!macx:USERRGBSCRIPTDIR = $$USERDATADIR/rgbscripts
macx:USERRGBSCRIPTDIR       = $$USERDATADIR/RGBScripts

# RGB Scripts
win32:WEBFILESDIR      = Web
unix:!macx:WEBFILESDIR = $$DATADIR/web
macx:WEBFILESDIR       = $$DATADIR/Web
