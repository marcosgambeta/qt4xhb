/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCONFIGURATION
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
REQUEST QNETWORKREPLY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeConfiguration
   METHOD cache
   METHOD configuration
   METHOD cookieJar
   METHOD deleteResource
   METHOD get
   METHOD head
   METHOD networkAccessible
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put
   METHOD sendCustomRequest
   METHOD setCache
   METHOD setConfiguration
   METHOD setCookieJar
   METHOD setNetworkAccessible
   METHOD setProxy
   METHOD setProxyFactory

   METHOD onAuthenticationRequired
   METHOD onFinished
   METHOD onNetworkAccessibleChanged
   METHOD onProxyAuthenticationRequired
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QNetworkAccessManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtNetwork/QNetworkConfiguration>
#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QAbstractNetworkCache>
#include <QtNetwork/QNetworkCookieJar>
#include <QtNetwork/QNetworkReply>

/*
QNetworkAccessManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QNetworkAccessManager * obj = new QNetworkAccessManager( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QNetworkConfiguration activeConfiguration() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ACTIVECONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->activeConfiguration() );
      Qt4xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstractNetworkCache * cache() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractNetworkCache * ptr = obj->cache();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTNETWORKCACHE" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkConfiguration configuration() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration() );
      Qt4xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkCookieJar * cookieJar() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_COOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkCookieJar * ptr = obj->cookieJar();
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKCOOKIEJAR" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkReply * deleteResource( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETERESOURCE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->deleteResource( *PQNETWORKREQUEST(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkReply * get( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_GET )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->get( *PQNETWORKREQUEST(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkReply * head( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_HEAD )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
#endif
      QNetworkReply * ptr = obj->head( *PQNETWORKREQUEST(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkAccessManager::NetworkAccessibility networkAccessible() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->networkAccessible() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
*/
void QNetworkAccessManager_post1()
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkReply * ptr = obj->post( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
    Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
  }
}

/*
QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/
void QNetworkAccessManager_post2()
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkReply * ptr = obj->post( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
    Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
  }
}

/*
[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_post1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_post2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkProxy * ptr = new QNetworkProxy( obj->proxy() );
      Qt4xHb::createReturnClass( ptr, "QNETWORKPROXY", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkProxyFactory * proxyFactory() const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QNetworkProxyFactory * ptr = obj->proxyFactory();
      Qt4xHb::createReturnClass( ptr, "QNETWORKPROXYFACTORY", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
*/
void QNetworkAccessManager_put1()
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkReply * ptr = obj->put( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
    Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
  }
}

/*
QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/
void QNetworkAccessManager_put2()
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkReply * ptr = obj->put( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
    Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
  }
}

/*
[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_put1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_put2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkReply * sendCustomRequest ( const QNetworkRequest & request, const QByteArray & verb, QIODevice * data = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SENDCUSTOMREQUEST )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQIODEVICE(3)||ISNIL(3)) )
    {
#endif
      QNetworkReply * ptr = obj->sendCustomRequest( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), OPQIODEVICE(3,0) );
      Qt4xHb::createReturnQObjectClass( ptr, "QNETWORKREPLY" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCache( QAbstractNetworkCache * cache )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTNETWORKCACHE(1) )
    {
#endif
      obj->setCache( PQABSTRACTNETWORKCACHE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setConfiguration( const QNetworkConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
    {
#endif
      obj->setConfiguration( *PQNETWORKCONFIGURATION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCookieJar( QNetworkCookieJar * cookieJar )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCOOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKCOOKIEJAR(1) )
    {
#endif
      obj->setCookieJar( PQNETWORKCOOKIEJAR(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessible( QNetworkAccessManager::NetworkAccessibility accessible )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETNETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setNetworkAccessible( (QNetworkAccessManager::NetworkAccessibility) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProxy( const QNetworkProxy & proxy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
#endif
      obj->setProxy( *PQNETWORKPROXY(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProxyFactory( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQNETWORKPROXYFACTORY(1) )
    {
#endif
      obj->setProxyFactory( PQNETWORKPROXYFACTORY(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QNetworkAccessManagerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONAUTHENTICATIONREQUIRED )
{
  QNetworkAccessManagerSlots_connect_signal( "authenticationRequired(QNetworkReply*,QAuthenticator*)", "authenticationRequired(QNetworkReply*,QAuthenticator*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONFINISHED )
{
  QNetworkAccessManagerSlots_connect_signal( "finished(QNetworkReply*)", "finished(QNetworkReply*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONNETWORKACCESSIBLECHANGED )
{
  QNetworkAccessManagerSlots_connect_signal( "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)", "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONPROXYAUTHENTICATIONREQUIRED )
{
  QNetworkAccessManagerSlots_connect_signal( "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)", "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" );
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ONSSLERRORS )
{
  QNetworkAccessManagerSlots_connect_signal( "sslErrors(QNetworkReply*,QList<QSslError>)", "sslErrors(QNetworkReply*,QList<QSslError>)" );
}

#pragma ENDDUMP
