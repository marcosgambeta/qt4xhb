/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkProxyQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QNetworkProxyQuery>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtCore/QUrl>

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QNetworkProxyQuery()
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && ISQURL(1) && HB_ISNUM(2) )
  {
    /*
    QNetworkProxyQuery( const QUrl & requestUrl, QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::UrlRequest )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQURL(1), HB_ISNIL(2) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::UrlRequest : ( QNetworkProxyQuery::QueryType ) hb_parni(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISNUM(4) )
  {
    /*
    QNetworkProxyQuery( const QString & hostname, int port, const QString & protocolTag = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpSocket )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( PQSTRING(1), PINT(2), OPQSTRING( 3, QString() ), HB_ISNIL(4) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::TcpSocket : ( QNetworkProxyQuery::QueryType ) hb_parni(4) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && HB_ISNUM(3) )
  {
    /*
    QNetworkProxyQuery( quint16 bindPort, const QString & protocolTag = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpServer )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( PQUINT16(1), OPQSTRING( 2, QString() ), HB_ISNIL(3) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::TcpServer : ( QNetworkProxyQuery::QueryType ) hb_parni(3) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    /*
    QNetworkProxyQuery( const QNetworkProxyQuery & other )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKPROXYQUERY(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && HB_ISNUM(3) )
  {
    /*
    QNetworkProxyQuery( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::UrlRequest )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), *PQURL(2), HB_ISNIL(3) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::UrlRequest : ( QNetworkProxyQuery::QueryType ) hb_parni(3) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(5) && ISQNETWORKCONFIGURATION(1) && HB_ISCHAR(2) && HB_ISNUM(3) && HB_ISCHAR(4) && HB_ISNUM(5) )
  {
    /*
    QNetworkProxyQuery( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpSocket )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), PQSTRING(2), PINT(3), OPQSTRING( 4, QString() ), HB_ISNIL(5) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::TcpSocket : ( QNetworkProxyQuery::QueryType ) hb_parni(5) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(4) && ISQNETWORKCONFIGURATION(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISNUM(4) )
  {
    /*
    QNetworkProxyQuery( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QNetworkProxyQuery::QueryType queryType = QNetworkProxyQuery::TcpServer )
    */
    QNetworkProxyQuery * obj = new QNetworkProxyQuery( *PQNETWORKCONFIGURATION(1), PQUINT16(2), OPQSTRING( 3, QString() ), HB_ISNIL(4) ? ( QNetworkProxyQuery::QueryType ) QNetworkProxyQuery::TcpServer : ( QNetworkProxyQuery::QueryType ) hb_parni(4) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_DELETE )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int localPort() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_LOCALPORT )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->localPort() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString peerHostName() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERHOSTNAME )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->peerHostName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
int peerPort() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERPORT )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->peerPort() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString protocolTag() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PROTOCOLTAG )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->protocolTag() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkProxyQuery::QueryType queryType() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_QUERYTYPE )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->queryType() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setLocalPort( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETLOCALPORT )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLocalPort( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerHostName( const QString & hostname )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERHOSTNAME )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPeerHostName( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPeerPort( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERPORT )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPeerPort( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setProtocolTag( const QString & protocolTag )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPROTOCOLTAG )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setProtocolTag( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setQueryType( QNetworkProxyQuery::QueryType type )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETQUERYTYPE )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setQueryType( ( QNetworkProxyQuery::QueryType ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setUrl( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETURL )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_URL )
{
  QNetworkProxyQuery * obj = static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUrl * ptr = new QUrl( obj->url() );
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
