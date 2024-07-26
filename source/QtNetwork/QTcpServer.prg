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
REQUEST QTCPSOCKET
#endif

CLASS QTcpServer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD proxy
   METHOD serverAddress
   METHOD serverError
   METHOD serverPort
   METHOD setMaxPendingConnections
   METHOD setProxy
   METHOD setSocketDescriptor
   METHOD socketDescriptor
   METHOD waitForNewConnection

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTcpServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QTcpServer>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QTcpSocket>

// QTcpServer(QObject *parent = 0)
HB_FUNC_STATIC(QTCPSERVER_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QTcpServer *obj = new QTcpServer(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTCPSERVER_DELETE)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
void close()
*/
HB_FUNC_STATIC(QTCPSERVER_CLOSE)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
QString errorString() const
*/
HB_FUNC_STATIC(QTCPSERVER_ERRORSTRING)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->errorString());
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
virtual bool hasPendingConnections() const
*/
HB_FUNC_STATIC(QTCPSERVER_HASPENDINGCONNECTIONS)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingConnections());
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
bool isListening() const
*/
HB_FUNC_STATIC(QTCPSERVER_ISLISTENING)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isListening());
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
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
HB_FUNC_STATIC(QTCPSERVER_LISTEN)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (ISQHOSTADDRESS(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->listen(HB_ISNIL(1) ? QHostAddress::Any : *static_cast<QHostAddress *>(Qt4xHb::itemGetPtr(1)),
                        OPQUINT16(2, 0)));
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
int maxPendingConnections() const
*/
HB_FUNC_STATIC(QTCPSERVER_MAXPENDINGCONNECTIONS)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->maxPendingConnections());
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
virtual QTcpSocket *nextPendingConnection()
*/
HB_FUNC_STATIC(QTCPSERVER_NEXTPENDINGCONNECTION)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTcpSocket *ptr = obj->nextPendingConnection();
      Qt4xHb::createReturnQObjectClass(ptr, "QTCPSOCKET");
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
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC(QTCPSERVER_PROXY)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
QHostAddress serverAddress() const
*/
HB_FUNC_STATIC(QTCPSERVER_SERVERADDRESS)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->serverAddress());
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

/*
QAbstractSocket::SocketError serverError() const
*/
HB_FUNC_STATIC(QTCPSERVER_SERVERERROR)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->serverError());
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
quint16 serverPort() const
*/
HB_FUNC_STATIC(QTCPSERVER_SERVERPORT)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->serverPort());
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
void setMaxPendingConnections(int numConnections)
*/
HB_FUNC_STATIC(QTCPSERVER_SETMAXPENDINGCONNECTIONS)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaxPendingConnections(PINT(1));
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
void setProxy(const QNetworkProxy &networkProxy)
*/
HB_FUNC_STATIC(QTCPSERVER_SETPROXY)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
bool setSocketDescriptor(int socketDescriptor)
*/
HB_FUNC_STATIC(QTCPSERVER_SETSOCKETDESCRIPTOR)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setSocketDescriptor(PINT(1)));
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
int socketDescriptor() const
*/
HB_FUNC_STATIC(QTCPSERVER_SOCKETDESCRIPTOR)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
bool waitForNewConnection(int msec = 0, bool *timedOut = 0)
*/
HB_FUNC_STATIC(QTCPSERVER_WAITFORNEWCONNECTION)
{
  QTcpServer *obj = qobject_cast<QTcpServer *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      bool par2;
      RBOOL(obj->waitForNewConnection(OPINT(1, 0), &par2));
      hb_storl(par2, 2);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QTcpServerSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QTCPSERVER_ONNEWCONNECTION)
{
  QTcpServerSlots_connect_signal("newConnection()", "newConnection()");
}

#pragma ENDDUMP
