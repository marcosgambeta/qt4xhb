//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QVARIANT
#endif

CLASS QAbstractSocket INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD connectToHost
   METHOD disconnectFromHost
   METHOD error
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD readBufferSize
   METHOD setProxy
   METHOD setReadBufferSize
   METHOD setSocketDescriptor
   METHOD setSocketOption
   METHOD socketDescriptor
   METHOD socketOption
   METHOD socketType
   METHOD state
   METHOD waitForConnected
   METHOD waitForDisconnected
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead

   METHOD onConnected
   METHOD onDisconnected
   METHOD onError
   METHOD onHostFound
   METHOD onProxyAuthenticationRequired
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QAbstractSocket>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtNetwork/QHostAddress>
#include <QtNetwork/QNetworkProxy>

    // QAbstractSocket(QAbstractSocket::SocketType socketType, QObject *parent)
HB_FUNC_STATIC(QABSTRACTSOCKET_NEW)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQOBJECT(2))
  {
    QAbstractSocket *obj = new QAbstractSocket((QAbstractSocket::SocketType)hb_parni(1), PQOBJECT(2));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QABSTRACTSOCKET_DELETE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// void abort()
HB_FUNC_STATIC(QABSTRACTSOCKET_ABORT)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->abort();
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

HB_FUNC_STATIC(QABSTRACTSOCKET_CONNECTTOHOST)
{
  if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // void connectToHost(const QString &hostName, quint16 port, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
    QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->connectToHost(PQSTRING(1), PQUINT16(2),
                         HB_ISNIL(3) ? (QIODevice::OpenMode)QIODevice::ReadWrite : (QIODevice::OpenMode)hb_parni(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(2, 3) && ISQHOSTADDRESS(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // void connectToHost(const QHostAddress &address, quint16 port, QIODevice::OpenMode openMode =
    // QIODevice::ReadWrite)
    QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->connectToHost(*PQHOSTADDRESS(1), PQUINT16(2),
                         HB_ISNIL(3) ? (QIODevice::OpenMode)QIODevice::ReadWrite : (QIODevice::OpenMode)hb_parni(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void disconnectFromHost()
HB_FUNC_STATIC(QABSTRACTSOCKET_DISCONNECTFROMHOST)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->disconnectFromHost();
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

// QAbstractSocket::SocketError error() const
HB_FUNC_STATIC(QABSTRACTSOCKET_ERROR)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool flush()
HB_FUNC_STATIC(QABSTRACTSOCKET_FLUSH)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->flush());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isValid() const
HB_FUNC_STATIC(QABSTRACTSOCKET_ISVALID)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QHostAddress localAddress() const
HB_FUNC_STATIC(QABSTRACTSOCKET_LOCALADDRESS)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->localAddress());
      Qt4xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// quint16 localPort() const
HB_FUNC_STATIC(QABSTRACTSOCKET_LOCALPORT)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->localPort());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QHostAddress peerAddress() const
HB_FUNC_STATIC(QABSTRACTSOCKET_PEERADDRESS)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->peerAddress());
      Qt4xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString peerName() const
HB_FUNC_STATIC(QABSTRACTSOCKET_PEERNAME)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->peerName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// quint16 peerPort() const
HB_FUNC_STATIC(QABSTRACTSOCKET_PEERPORT)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->peerPort());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QNetworkProxy proxy() const
HB_FUNC_STATIC(QABSTRACTSOCKET_PROXY)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QNetworkProxy *ptr = new QNetworkProxy(obj->proxy());
      Qt4xHb::createReturnClass(ptr, "QNETWORKPROXY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qint64 readBufferSize() const
HB_FUNC_STATIC(QABSTRACTSOCKET_READBUFFERSIZE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->readBufferSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setProxy(const QNetworkProxy &networkProxy)
HB_FUNC_STATIC(QABSTRACTSOCKET_SETPROXY)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKPROXY(1))
    {
#endif
      obj->setProxy(*PQNETWORKPROXY(1));
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

// void setReadBufferSize(qint64 size)
HB_FUNC_STATIC(QABSTRACTSOCKET_SETREADBUFFERSIZE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setReadBufferSize(PQINT64(1));
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

// bool setSocketDescriptor(int socketDescriptor, QAbstractSocket::SocketState socketState =
// QAbstractSocket::ConnectedState, QIODevice::OpenMode openMode = QIODevice::ReadWrite)
HB_FUNC_STATIC(QABSTRACTSOCKET_SETSOCKETDESCRIPTOR)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->setSocketDescriptor(PINT(1),
                                     HB_ISNIL(2) ? (QAbstractSocket::SocketState)QAbstractSocket::ConnectedState
                                                 : (QAbstractSocket::SocketState)hb_parni(2),
                                     HB_ISNIL(3) ? (QIODevice::OpenMode)QIODevice::ReadWrite
                                                 : (QIODevice::OpenMode)hb_parni(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setSocketOption(QAbstractSocket::SocketOption option, const QVariant &value)
HB_FUNC_STATIC(QABSTRACTSOCKET_SETSOCKETOPTION)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQVARIANT(2))
    {
#endif
      obj->setSocketOption((QAbstractSocket::SocketOption)hb_parni(1), *PQVARIANT(2));
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

// int socketDescriptor() const
HB_FUNC_STATIC(QABSTRACTSOCKET_SOCKETDESCRIPTOR)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->socketDescriptor());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant socketOption(QAbstractSocket::SocketOption option)
HB_FUNC_STATIC(QABSTRACTSOCKET_SOCKETOPTION)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QVariant *ptr = new QVariant(obj->socketOption((QAbstractSocket::SocketOption)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QAbstractSocket::SocketType socketType() const
HB_FUNC_STATIC(QABSTRACTSOCKET_SOCKETTYPE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->socketType());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QAbstractSocket::SocketState state() const
HB_FUNC_STATIC(QABSTRACTSOCKET_STATE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->state());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool waitForConnected(int msecs = 30000)
HB_FUNC_STATIC(QABSTRACTSOCKET_WAITFORCONNECTED)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->waitForConnected(OPINT(1, 30000)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool waitForDisconnected(int msecs = 30000)
HB_FUNC_STATIC(QABSTRACTSOCKET_WAITFORDISCONNECTED)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->waitForDisconnected(OPINT(1, 30000)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool atEnd() const
HB_FUNC_STATIC(QABSTRACTSOCKET_ATEND)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atEnd());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual qint64 bytesAvailable() const
HB_FUNC_STATIC(QABSTRACTSOCKET_BYTESAVAILABLE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->bytesAvailable());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual qint64 bytesToWrite() const
HB_FUNC_STATIC(QABSTRACTSOCKET_BYTESTOWRITE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->bytesToWrite());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool canReadLine() const
HB_FUNC_STATIC(QABSTRACTSOCKET_CANREADLINE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->canReadLine());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void close()
HB_FUNC_STATIC(QABSTRACTSOCKET_CLOSE)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->close();
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

// virtual bool isSequential() const
HB_FUNC_STATIC(QABSTRACTSOCKET_ISSEQUENTIAL)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSequential());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool waitForBytesWritten(int msecs = 30000)
HB_FUNC_STATIC(QABSTRACTSOCKET_WAITFORBYTESWRITTEN)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->waitForBytesWritten(OPINT(1, 30000)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool waitForReadyRead(int msecs = 30000)
HB_FUNC_STATIC(QABSTRACTSOCKET_WAITFORREADYREAD)
{
  QAbstractSocket *obj = qobject_cast<QAbstractSocket *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->waitForReadyRead(OPINT(1, 30000)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QAbstractSocketSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QABSTRACTSOCKET_ONCONNECTED)
{
  QAbstractSocketSlots_connect_signal("connected()", "connected()");
}

HB_FUNC_STATIC(QABSTRACTSOCKET_ONDISCONNECTED)
{
  QAbstractSocketSlots_connect_signal("disconnected()", "disconnected()");
}

HB_FUNC_STATIC(QABSTRACTSOCKET_ONERROR)
{
  QAbstractSocketSlots_connect_signal("error(QAbstractSocket::SocketError)", "error(QAbstractSocket::SocketError)");
}

HB_FUNC_STATIC(QABSTRACTSOCKET_ONHOSTFOUND)
{
  QAbstractSocketSlots_connect_signal("hostFound()", "hostFound()");
}

HB_FUNC_STATIC(QABSTRACTSOCKET_ONPROXYAUTHENTICATIONREQUIRED)
{
  QAbstractSocketSlots_connect_signal("proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)",
                                      "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");
}

HB_FUNC_STATIC(QABSTRACTSOCKET_ONSTATECHANGED)
{
  QAbstractSocketSlots_connect_signal("stateChanged(QAbstractSocket::SocketState)",
                                      "stateChanged(QAbstractSocket::SocketState)");
}

#pragma ENDDUMP
