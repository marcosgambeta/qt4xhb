/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QTreeViewSlots.hpp"

QTreeViewSlots::QTreeViewSlots(QObject *parent) : QObject(parent)
{
}

QTreeViewSlots::~QTreeViewSlots()
{
}

void QTreeViewSlots::collapsed(const QModelIndex &index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "collapsed(QModelIndex)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEVIEW");
    PHB_ITEM pIndex = Qt4xHb::Signals_return_object((void *)&index, "QMODELINDEX");

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QTreeViewSlots::expanded(const QModelIndex &index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "expanded(QModelIndex)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTREEVIEW");
    PHB_ITEM pIndex = Qt4xHb::Signals_return_object((void *)&index, "QMODELINDEX");

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QTreeViewSlots_connect_signal(const QString &signal, const QString &slot)
{
  QTreeView *obj = qobject_cast<QTreeView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QTreeViewSlots *s = QCoreApplication::instance()->findChild<QTreeViewSlots *>();

    if (s == NULL)
    {
      s = new QTreeViewSlots();
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
