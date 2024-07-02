/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QClipboardSlots.hpp"

QClipboardSlots::QClipboardSlots(QObject *parent) : QObject(parent)
{
}

QClipboardSlots::~QClipboardSlots()
{
}

void QClipboardSlots::changed(QClipboard::Mode mode)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "changed(QClipboard::Mode)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCLIPBOARD");
    PHB_ITEM pMode = hb_itemPutNI(NULL, static_cast<int>(mode));

    hb_vmEvalBlockV(cb, 2, pSender, pMode);

    hb_itemRelease(pSender);
    hb_itemRelease(pMode);
  }
}

void QClipboardSlots::dataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "dataChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCLIPBOARD");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QClipboardSlots::findBufferChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "findBufferChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCLIPBOARD");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QClipboardSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "selectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCLIPBOARD");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QClipboardSlots_connect_signal(const QString &signal, const QString &slot)
{
  QClipboard *obj = qobject_cast<QClipboard *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QClipboardSlots *s = QCoreApplication::instance()->findChild<QClipboardSlots *>();

    if (s == NULL)
    {
      s = new QClipboardSlots();
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
