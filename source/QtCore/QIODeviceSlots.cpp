/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QIODeviceSlots.hpp"

QIODeviceSlots::QIODeviceSlots(QObject *parent) : QObject(parent)
{
}

QIODeviceSlots::~QIODeviceSlots()
{
}

void QIODeviceSlots::aboutToClose()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToClose()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QIODEVICE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QIODeviceSlots::bytesWritten(qint64 bytes)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "bytesWritten(qint64)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QIODEVICE");
    PHB_ITEM pBytes = hb_itemPutNLL(NULL, bytes);

    hb_vmEvalBlockV(cb, 2, pSender, pBytes);

    hb_itemRelease(pSender);
    hb_itemRelease(pBytes);
  }
}

void QIODeviceSlots::readChannelFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "readChannelFinished()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QIODEVICE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QIODeviceSlots::readyRead()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "readyRead()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QIODEVICE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QIODeviceSlots_connect_signal(const QString &signal, const QString &slot)
{
  QIODevice *obj = qobject_cast<QIODevice *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QIODeviceSlots *s = QCoreApplication::instance()->findChild<QIODeviceSlots *>();

    if (s == NULL)
    {
      s = new QIODeviceSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
