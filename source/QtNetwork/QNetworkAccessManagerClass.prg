/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
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
   METHOD post1
   METHOD post2
   METHOD post
   METHOD proxy
   METHOD proxyFactory
   METHOD put1
   METHOD put2
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

PROCEDURE destroyObject () CLASS QNetworkAccessManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkAccessManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QNetworkConfiguration>
#include <QNetworkProxy>
#include <QAbstractNetworkCache>
#include <QNetworkCookieJar>
#include <QNetworkReply>

/*
QNetworkAccessManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QNetworkAccessManager * o = new QNetworkAccessManager ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
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
QNetworkConfiguration activeConfiguration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_ACTIVECONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->activeConfiguration () );
      _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAbstractNetworkCache * cache () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QAbstractNetworkCache * ptr = obj->cache ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QABSTRACTNETWORKCACHE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkConfiguration configuration () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_CONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configuration () );
      _qt4xhb_createReturnClass ( ptr, "QNETWORKCONFIGURATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkCookieJar * cookieJar () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_COOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkCookieJar * ptr = obj->cookieJar ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKCOOKIEJAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * deleteResource ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_DELETERESOURCE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
      QNetworkReply * ptr = obj->deleteResource ( *PQNETWORKREQUEST(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * get ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_GET )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
      QNetworkReply * ptr = obj->get ( *PQNETWORKREQUEST(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * head ( const QNetworkRequest & request )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_HEAD )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
    {
      QNetworkReply * ptr = obj->head ( *PQNETWORKREQUEST(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
NetworkAccessibility networkAccessible () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_NETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->networkAccessible () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
    {
      QNetworkReply * ptr = obj->post ( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
    {
      QNetworkReply * ptr = obj->post ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]QNetworkReply * post ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * post ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_POST2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QNetworkProxy proxy () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
      _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkProxyFactory * proxyFactory () const
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QNetworkProxyFactory * ptr = obj->proxyFactory ();
      _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXYFACTORY", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT1 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
    {
      QNetworkReply * ptr = obj->put ( *PQNETWORKREQUEST(1), PQIODEVICE(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT2 )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
    {
      QNetworkReply * ptr = obj->put ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

//[1]QNetworkReply * put ( const QNetworkRequest & request, QIODevice * data )
//[2]QNetworkReply * put ( const QNetworkRequest & request, const QByteArray & data )

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT1 );
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    HB_FUNC_EXEC( QNETWORKACCESSMANAGER_PUT2 );
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
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQIODEVICE(3)||ISNIL(3)) )
    {
      QNetworkReply * ptr = obj->sendCustomRequest ( *PQNETWORKREQUEST(1), *PQBYTEARRAY(2), OPQIODEVICE(3,0) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QNETWORKREPLY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCache ( QAbstractNetworkCache * cache )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCACHE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTNETWORKCACHE(1) )
    {
      obj->setCache ( PQABSTRACTNETWORKCACHE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setConfiguration ( const QNetworkConfiguration & config )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCONFIGURATION )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
    {
      obj->setConfiguration ( *PQNETWORKCONFIGURATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCookieJar ( QNetworkCookieJar * cookieJar )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETCOOKIEJAR )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKCOOKIEJAR(1) )
    {
      obj->setCookieJar ( PQNETWORKCOOKIEJAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNetworkAccessible ( NetworkAccessibility accessible )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETNETWORKACCESSIBLE )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setNetworkAccessible ( (QNetworkAccessManager::NetworkAccessibility) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProxy ( const QNetworkProxy & proxy )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
    {
      obj->setProxy ( *PQNETWORKPROXY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SETPROXYFACTORY )
{
  QNetworkAccessManager * obj = (QNetworkAccessManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQNETWORKPROXYFACTORY(1) )
    {
      obj->setProxyFactory ( PQNETWORKPROXYFACTORY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
