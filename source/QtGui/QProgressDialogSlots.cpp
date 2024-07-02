/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QProgressDialogSlots.hpp"

QProgressDialogSlots::QProgressDialogSlots(QObject *parent) : QObject(parent)
{
}

QProgressDialogSlots::~QProgressDialogSlots()
{
}

void QProgressDialogSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "canceled()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPROGRESSDIALOG");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QProgressDialogSlots_connect_signal(const QString &signal, const QString &slot)
{
  QProgressDialog *obj = qobject_cast<QProgressDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QProgressDialogSlots *s = QCoreApplication::instance()->findChild<QProgressDialogSlots *>();

    if (s == NULL)
    {
      s = new QProgressDialogSlots();
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
