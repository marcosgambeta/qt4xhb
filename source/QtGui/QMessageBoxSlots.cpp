//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMessageBoxSlots.hpp"

QMessageBoxSlots::QMessageBoxSlots(QObject *parent) : QObject(parent)
{
}

QMessageBoxSlots::~QMessageBoxSlots()
{
}

void QMessageBoxSlots::buttonClicked(QAbstractButton *button)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "buttonClicked(QAbstractButton*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMESSAGEBOX");
    PHB_ITEM pButton = Qt4xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV(cb, 2, pSender, pButton);

    hb_itemRelease(pSender);
    hb_itemRelease(pButton);
  }
}

void QMessageBoxSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMessageBox *obj = qobject_cast<QMessageBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QMessageBoxSlots *s = QCoreApplication::instance()->findChild<QMessageBoxSlots *>();

    if (s == NULL)
    {
      s = new QMessageBoxSlots();
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
