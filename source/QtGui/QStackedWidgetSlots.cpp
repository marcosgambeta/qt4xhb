//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QStackedWidgetSlots.hpp"

QStackedWidgetSlots::QStackedWidgetSlots(QObject *parent) : QObject(parent)
{
}

QStackedWidgetSlots::~QStackedWidgetSlots()
{
}

void QStackedWidgetSlots::currentChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSTACKEDWIDGET");
    PHB_ITEM pIndex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QStackedWidgetSlots::widgetRemoved(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "widgetRemoved(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSTACKEDWIDGET");
    PHB_ITEM pIndex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QStackedWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QStackedWidget *obj = qobject_cast<QStackedWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QStackedWidgetSlots *s = QCoreApplication::instance()->findChild<QStackedWidgetSlots *>();

    if (s == NULL)
    {
      s = new QStackedWidgetSlots();
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
