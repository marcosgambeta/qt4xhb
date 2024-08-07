//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDialogButtonBoxSlots.hpp"

QDialogButtonBoxSlots::QDialogButtonBoxSlots(QObject *parent) : QObject(parent)
{
}

QDialogButtonBoxSlots::~QDialogButtonBoxSlots()
{
}

void QDialogButtonBoxSlots::accepted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "accepted()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QDialogButtonBoxSlots::clicked(QAbstractButton *button)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "clicked(QAbstractButton*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");
    PHB_ITEM pButton = Qt4xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV(cb, 2, pSender, pButton);

    hb_itemRelease(pSender);
    hb_itemRelease(pButton);
  }
}

void QDialogButtonBoxSlots::helpRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "helpRequested()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QDialogButtonBoxSlots::rejected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rejected()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QDialogButtonBoxSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDialogButtonBox *obj = qobject_cast<QDialogButtonBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDialogButtonBoxSlots *s = QCoreApplication::instance()->findChild<QDialogButtonBoxSlots *>();

    if (s == NULL)
    {
      s = new QDialogButtonBoxSlots();
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
