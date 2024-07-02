/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDragSlots.hpp"

QDragSlots::QDragSlots(QObject *parent) : QObject(parent)
{
}

QDragSlots::~QDragSlots()
{
}

void QDragSlots::actionChanged(Qt::DropAction action)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "actionChanged(Qt::DropAction)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDRAG");
    PHB_ITEM pAction = hb_itemPutNI(NULL, static_cast<int>(action));

    hb_vmEvalBlockV(cb, 2, pSender, pAction);

    hb_itemRelease(pSender);
    hb_itemRelease(pAction);
  }
}

void QDragSlots::targetChanged(QWidget *newTarget)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "targetChanged(QWidget*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDRAG");
    PHB_ITEM pNewTarget = Qt4xHb::Signals_return_qobject(newTarget, "QWIDGET");

    hb_vmEvalBlockV(cb, 2, pSender, pNewTarget);

    hb_itemRelease(pSender);
    hb_itemRelease(pNewTarget);
  }
}

void QDragSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDrag *obj = qobject_cast<QDrag *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDragSlots *s = QCoreApplication::instance()->findChild<QDragSlots *>();

    if (s == NULL)
    {
      s = new QDragSlots();
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
