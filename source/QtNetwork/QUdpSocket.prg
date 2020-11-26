/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QUdpSocket INHERIT QAbstractSocket

   METHOD new
   METHOD delete
   METHOD bind
   METHOD hasPendingDatagrams
   METHOD pendingDatagramSize
   METHOD writeDatagram

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUdpSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QUdpSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QUdpSocket( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUDPSOCKET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QUdpSocket * obj = new QUdpSocket( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUDPSOCKET_DELETE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

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
bool bind( const QHostAddress & address, quint16 port )
*/
void QUdpSocket_bind1()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind( *PQHOSTADDRESS(1), PQUINT16(2) ) );
  }
}

/*
bool bind( const QHostAddress & address, quint16 port, QUdpSocket::BindMode mode )
*/
void QUdpSocket_bind2()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind( *PQHOSTADDRESS(1), PQUINT16(2), (QUdpSocket::BindMode) hb_parni(3) ) );
  }
}

/*
bool bind( quint16 port = 0 )
*/
void QUdpSocket_bind3()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind( OPQUINT16(1,0) ) );
  }
}

/*
bool bind( quint16 port, QUdpSocket::BindMode mode )
*/
void QUdpSocket_bind4()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->bind( PQUINT16(1), (QUdpSocket::BindMode) hb_parni(2) ) );
  }
}

HB_FUNC_STATIC( QUDPSOCKET_BIND )
{
  if( ISNUMPAR(2) && ISQHOSTADDRESS(1) && ISNUM(2) )
  {
    QUdpSocket_bind1();
  }
  else if( ISNUMPAR(3) && ISQHOSTADDRESS(1) && ISNUM(2) && ISNUM(3) )
  {
    QUdpSocket_bind2();
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QUdpSocket_bind3();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) )
  {
    QUdpSocket_bind4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasPendingDatagrams() const
*/
HB_FUNC_STATIC( QUDPSOCKET_HASPENDINGDATAGRAMS )
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasPendingDatagrams() );
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
qint64 pendingDatagramSize() const
*/
HB_FUNC_STATIC( QUDPSOCKET_PENDINGDATAGRAMSIZE )
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pendingDatagramSize() );
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
qint64 writeDatagram( const char * data, qint64 size, const QHostAddress & address, quint16 port )
*/
void QUdpSocket_writeDatagram1()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->writeDatagram( PCONSTCHAR(1), PQINT64(2), *PQHOSTADDRESS(3), PQUINT16(4) ) );
  }
}

/*
qint64 writeDatagram( const QByteArray & datagram, const QHostAddress & host, quint16 port )
*/
void QUdpSocket_writeDatagram2()
{
  QUdpSocket * obj = (QUdpSocket *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RQINT64( obj->writeDatagram( *PQBYTEARRAY(1), *PQHOSTADDRESS(2), PQUINT16(3) ) );
  }
}

HB_FUNC_STATIC( QUDPSOCKET_WRITEDATAGRAM )
{
  if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISQHOSTADDRESS(3) && ISNUM(4) )
  {
    QUdpSocket_writeDatagram1();
  }
  else if( ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && ISNUM(3) )
  {
    QUdpSocket_writeDatagram2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
