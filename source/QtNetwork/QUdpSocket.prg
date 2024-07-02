/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

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

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QUdpSocket>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QUdpSocket( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QUDPSOCKET_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QUdpSocket *obj = new QUdpSocket(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QUDPSOCKET_DELETE)
{
  QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QUDPSOCKET_BIND)
{
  if (ISNUMPAR(2) && ISQHOSTADDRESS(1) && HB_ISNUM(2))
  {
    /*
    bool bind( const QHostAddress & address, quint16 port )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->bind(*PQHOSTADDRESS(1), PQUINT16(2)));
    }
  }
  else if (ISNUMPAR(3) && ISQHOSTADDRESS(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    bool bind( const QHostAddress & address, quint16 port, QUdpSocket::BindMode mode )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->bind(*PQHOSTADDRESS(1), PQUINT16(2), (QUdpSocket::BindMode)hb_parni(3)));
    }
  }
  else if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
    /*
    bool bind( quint16 port = 0 )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->bind(OPQUINT16(1, 0)));
    }
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    bool bind( quint16 port, QUdpSocket::BindMode mode )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->bind(PQUINT16(1), (QUdpSocket::BindMode)hb_parni(2)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool hasPendingDatagrams() const
*/
HB_FUNC_STATIC(QUDPSOCKET_HASPENDINGDATAGRAMS)
{
  QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingDatagrams());
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
qint64 pendingDatagramSize() const
*/
HB_FUNC_STATIC(QUDPSOCKET_PENDINGDATAGRAMSIZE)
{
  QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->pendingDatagramSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QUDPSOCKET_WRITEDATAGRAM)
{
  if (ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISNUM(2) && ISQHOSTADDRESS(3) && HB_ISNUM(4))
  {
    /*
    qint64 writeDatagram( const char * data, qint64 size, const QHostAddress & address, quint16 port )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RQINT64(obj->writeDatagram(PCONSTCHAR(1), PQINT64(2), *PQHOSTADDRESS(3), PQUINT16(4)));
    }
  }
  else if (ISNUMPAR(3) && ISQBYTEARRAY(1) && ISQHOSTADDRESS(2) && HB_ISNUM(3))
  {
    /*
    qint64 writeDatagram( const QByteArray & datagram, const QHostAddress & host, quint16 port )
    */
    QUdpSocket *obj = qobject_cast<QUdpSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RQINT64(obj->writeDatagram(*PQBYTEARRAY(1), *PQHOSTADDRESS(2), PQUINT16(3)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
