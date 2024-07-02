/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QMainWindowSlots.hpp"

QMainWindowSlots::QMainWindowSlots(QObject *parent) : QObject(parent)
{
}

QMainWindowSlots::~QMainWindowSlots()
{
}

void QMainWindowSlots::iconSizeChanged(const QSize &iconSize)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "iconSizeChanged(QSize)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMAINWINDOW");
    PHB_ITEM pIconSize = Qt4xHb::Signals_return_object((void *)&iconSize, "QSIZE");

    hb_vmEvalBlockV(cb, 2, pSender, pIconSize);

    hb_itemRelease(pSender);
    hb_itemRelease(pIconSize);
  }
}

void QMainWindowSlots::toolButtonStyleChanged(Qt::ToolButtonStyle toolButtonStyle)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "toolButtonStyleChanged(Qt::ToolButtonStyle)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QMAINWINDOW");
    PHB_ITEM pToolButtonStyle = hb_itemPutNI(NULL, static_cast<int>(toolButtonStyle));

    hb_vmEvalBlockV(cb, 2, pSender, pToolButtonStyle);

    hb_itemRelease(pSender);
    hb_itemRelease(pToolButtonStyle);
  }
}

void QMainWindowSlots_connect_signal(const QString &signal, const QString &slot)
{
  QMainWindow *obj = qobject_cast<QMainWindow *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QMainWindowSlots *s = QCoreApplication::instance()->findChild<QMainWindowSlots *>();

    if (s == NULL)
    {
      s = new QMainWindowSlots();
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
