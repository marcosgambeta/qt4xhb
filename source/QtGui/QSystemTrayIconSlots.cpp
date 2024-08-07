//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QSystemTrayIconSlots.hpp"

QSystemTrayIconSlots::QSystemTrayIconSlots(QObject *parent) : QObject(parent)
{
}

QSystemTrayIconSlots::~QSystemTrayIconSlots()
{
}

void QSystemTrayIconSlots::activated(QSystemTrayIcon::ActivationReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "activated(QSystemTrayIcon::ActivationReason)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSYSTEMTRAYICON");
    PHB_ITEM pReason = hb_itemPutNI(NULL, static_cast<int>(reason));

    hb_vmEvalBlockV(cb, 2, pSender, pReason);

    hb_itemRelease(pSender);
    hb_itemRelease(pReason);
  }
}

void QSystemTrayIconSlots::messageClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "messageClicked()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSYSTEMTRAYICON");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QSystemTrayIconSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSystemTrayIcon *obj = qobject_cast<QSystemTrayIcon *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QSystemTrayIconSlots *s = QCoreApplication::instance()->findChild<QSystemTrayIconSlots *>();

    if (s == NULL)
    {
      s = new QSystemTrayIconSlots();
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
