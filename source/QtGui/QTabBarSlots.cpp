/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTabBarSlots.hpp"

QTabBarSlots::QTabBarSlots(QObject *parent) : QObject(parent)
{
}

QTabBarSlots::~QTabBarSlots()
{
}

void QTabBarSlots::currentChanged(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pIndex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QTabBarSlots::tabCloseRequested(int index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "tabCloseRequested(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pIndex = hb_itemPutNI(NULL, index);

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QTabBarSlots::tabMoved(int from, int to)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "tabMoved(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABBAR");
    PHB_ITEM pFrom = hb_itemPutNI(NULL, from);
    PHB_ITEM pTo = hb_itemPutNI(NULL, to);

    hb_vmEvalBlockV(cb, 3, pSender, pFrom, pTo);

    hb_itemRelease(pSender);
    hb_itemRelease(pFrom);
    hb_itemRelease(pTo);
  }
}

void QTabBarSlots_connect_signal(const QString &signal, const QString &slot)
{
  QTabBar *obj = qobject_cast<QTabBar *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QTabBarSlots *s = QCoreApplication::instance()->findChild<QTabBarSlots *>();

    if (s == NULL)
    {
      s = new QTabBarSlots();
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
