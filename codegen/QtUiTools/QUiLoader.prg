%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
REQUEST QDIR
#endif

$beginClassFrom=QObject

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QDir>
#include <QAction>
#include <QLayout>

$prototype=QUiLoader ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addPluginPath ( const QString & path )
$method=|void|addPluginPath|const QString &

$prototype=QStringList availableLayouts () const
$method=|QStringList|availableLayouts|

$prototype=QStringList availableWidgets () const
$method=|QStringList|availableWidgets|

$prototype=void clearPluginPaths ()
$method=|void|clearPluginPaths|

$prototype=virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QAction *|createAction|QObject *=0,const QString &=QString()

$prototype=virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QActionGroup *|createActionGroup|QObject *=0,const QString &=QString()

$prototype=virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
$virtualMethod=|QLayout *|createLayout|const QString &,QObject *=0,const QString &=QString()

$prototype=virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
$virtualMethod=|QWidget *|createWidget|const QString &,QWidget *=0,const QString &=QString()

$prototype=bool isLanguageChangeEnabled () const
$method=|bool|isLanguageChangeEnabled|

$prototype=QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
$method=|QWidget *|load|QIODevice *,QWidget *=0

$prototype=QStringList pluginPaths () const
$method=|QStringList|pluginPaths|

$prototype=void setLanguageChangeEnabled ( bool enabled )
$method=|void|setLanguageChangeEnabled|bool

$prototype=void setWorkingDirectory ( const QDir & dir )
$method=|void|setWorkingDirectory|const QDir &

$prototype=QDir workingDirectory () const
$method=|QDir|workingDirectory|

#pragma ENDDUMP
