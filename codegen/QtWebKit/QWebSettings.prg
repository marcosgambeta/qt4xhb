%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QWEBSETTINGS
REQUEST QICON
REQUEST QPIXMAP
#endif

CLASS QWebSettings

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD defaultTextEncoding
   METHOD fontFamily
   METHOD fontSize
   METHOD localStoragePath
   METHOD resetAttribute
   METHOD resetFontFamily
   METHOD resetFontSize
   METHOD setAttribute
   METHOD setDefaultTextEncoding
   METHOD setFontFamily
   METHOD setFontSize
   METHOD setLocalStoragePath
   METHOD setUserStyleSheetUrl
   METHOD testAttribute
   METHOD userStyleSheetUrl
   METHOD clearIconDatabase
   METHOD clearMemoryCaches
   METHOD enablePersistentStorage
   METHOD globalSettings
   METHOD iconDatabasePath
   METHOD iconForUrl
   METHOD maximumPagesInCache
   METHOD offlineStorageDefaultQuota
   METHOD offlineStoragePath
   METHOD offlineWebApplicationCachePath
   METHOD offlineWebApplicationCacheQuota
   METHOD setIconDatabasePath
   METHOD setMaximumPagesInCache
   METHOD setObjectCacheCapacities
   METHOD setOfflineStorageDefaultQuota
   METHOD setOfflineStoragePath
   METHOD setOfflineWebApplicationCachePath
   METHOD setOfflineWebApplicationCacheQuota
   METHOD setWebGraphic
   METHOD webGraphic

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebSettings>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QUrl>

$prototype=QString defaultTextEncoding () const
$method=|QString|defaultTextEncoding|

$prototype=QString fontFamily ( FontFamily which ) const
$method=|QString|fontFamily|QWebSettings::FontFamily

$prototype=int fontSize ( FontSize type ) const
$method=|int|fontSize|QWebSettings::FontSize

$prototype=QString localStoragePath () const
$method=|QString|localStoragePath|

$prototype=void resetAttribute ( WebAttribute attribute )
$method=|void|resetAttribute|QWebSettings::WebAttribute

$prototype=void resetFontFamily ( FontFamily which )
$method=|void|resetFontFamily|QWebSettings::FontFamily

$prototype=void resetFontSize ( FontSize type )
$method=|void|resetFontSize|QWebSettings::FontSize

$prototype=void setAttribute ( WebAttribute attribute, bool on )
$method=|void|setAttribute|QWebSettings::WebAttribute,bool

$prototype=void setDefaultTextEncoding ( const QString & encoding )
$method=|void|setDefaultTextEncoding|const QString &

$prototype=void setFontFamily ( FontFamily which, const QString & family )
$method=|void|setFontFamily|QWebSettings::FontFamily,const QString &

$prototype=void setFontSize ( FontSize type, int size )
$method=|void|setFontSize|QWebSettings::FontSize,int

$prototype=void setLocalStoragePath ( const QString & path )
$method=|void|setLocalStoragePath|const QString &

$prototype=void setUserStyleSheetUrl ( const QUrl & location )
$method=|void|setUserStyleSheetUrl|const QUrl &

$prototype=bool testAttribute ( WebAttribute attribute ) const
$method=|bool|testAttribute|QWebSettings::WebAttribute

$prototype=QUrl userStyleSheetUrl () const
$method=|QUrl|userStyleSheetUrl|

$prototype=static void clearIconDatabase ()
$staticMethod=|void|clearIconDatabase|

$prototype=static void clearMemoryCaches ()
$staticMethod=|void|clearMemoryCaches|

$prototype=static void enablePersistentStorage ( const QString & path = QString() )
$staticMethod=|void|enablePersistentStorage|const QString &=QString()

$prototype=static QWebSettings * globalSettings ()
$staticMethod=|QWebSettings *|globalSettings|

$prototype=static QString iconDatabasePath ()
$staticMethod=|QString|iconDatabasePath|

$prototype=static QIcon iconForUrl ( const QUrl & url )
$staticMethod=|QIcon|iconForUrl|const QUrl &

$prototype=static int maximumPagesInCache ()
$staticMethod=|int|maximumPagesInCache|

$prototype=static qint64 offlineStorageDefaultQuota ()
$staticMethod=|qint64|offlineStorageDefaultQuota|

$prototype=static QString offlineStoragePath ()
$staticMethod=|QString|offlineStoragePath|

$prototype=static QString offlineWebApplicationCachePath ()
$staticMethod=|QString|offlineWebApplicationCachePath|

$prototype=static qint64 offlineWebApplicationCacheQuota ()
$staticMethod=|qint64|offlineWebApplicationCacheQuota|

$prototype=static void setIconDatabasePath ( const QString & path )
$staticMethod=|void|setIconDatabasePath|const QString &

$prototype=static void setMaximumPagesInCache ( int pages )
$staticMethod=|void|setMaximumPagesInCache|int

$prototype=static void setObjectCacheCapacities ( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )
$staticMethod=|void|setObjectCacheCapacities|int,int,int

$prototype=static void setOfflineStorageDefaultQuota ( qint64 maximumSize )
$staticMethod=|void|setOfflineStorageDefaultQuota|qint64

$prototype=static void setOfflineStoragePath ( const QString & path )
$staticMethod=|void|setOfflineStoragePath|const QString &

$prototype=static void setOfflineWebApplicationCachePath ( const QString & path )
$staticMethod=|void|setOfflineWebApplicationCachePath|const QString &

$prototype=static void setOfflineWebApplicationCacheQuota ( qint64 maximumSize )
$staticMethod=|void|setOfflineWebApplicationCacheQuota|qint64

$prototype=static void setWebGraphic ( WebGraphic type, const QPixmap & graphic )
$staticMethod=|void|setWebGraphic|QWebSettings::WebGraphic,const QPixmap &

$prototype=static QPixmap webGraphic ( WebGraphic type )
$staticMethod=|QPixmap|webGraphic|QWebSettings::WebGraphic

$extraMethods

#pragma ENDDUMP
