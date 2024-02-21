/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolButtonSlots.hpp"

QToolButtonSlots::QToolButtonSlots(QObject *parent) : QObject(parent)
{
}

QToolButtonSlots::~QToolButtonSlots()
{
}

void QToolButtonSlots::triggered(QAction *action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "triggered(QAction*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTOOLBUTTON");
    PHB_ITEM pAction = Qt4xHb::Signals_return_qobject(action, "QACTION");

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QToolButtonSlots_connect_signal(const QString &signal, const QString &slot)
{
  QToolButton *obj = qobject_cast<QToolButton *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QToolButtonSlots *s = QCoreApplication::instance()->findChild<QToolButtonSlots *>();

    if (s == NULL)
    {
      s = new QToolButtonSlots();
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
