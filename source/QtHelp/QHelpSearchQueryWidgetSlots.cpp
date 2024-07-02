/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QHelpSearchQueryWidgetSlots.hpp"

QHelpSearchQueryWidgetSlots::QHelpSearchQueryWidgetSlots(QObject *parent) : QObject(parent)
{
}

QHelpSearchQueryWidgetSlots::~QHelpSearchQueryWidgetSlots()
{
}

void QHelpSearchQueryWidgetSlots::search()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "search()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHELPSEARCHQUERYWIDGET");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QHelpSearchQueryWidgetSlots_connect_signal(const QString &signal, const QString &slot)
{
  QHelpSearchQueryWidget *obj = qobject_cast<QHelpSearchQueryWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QHelpSearchQueryWidgetSlots *s = QCoreApplication::instance()->findChild<QHelpSearchQueryWidgetSlots *>();

    if (s == NULL)
    {
      s = new QHelpSearchQueryWidgetSlots();
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
