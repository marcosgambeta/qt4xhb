//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QDesignerFormWindowManagerInterfaceSlots.hpp"

QDesignerFormWindowManagerInterfaceSlots::QDesignerFormWindowManagerInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDesignerFormWindowManagerInterfaceSlots::~QDesignerFormWindowManagerInterfaceSlots()
{
}

void QDesignerFormWindowManagerInterfaceSlots::activeFormWindowChanged(QDesignerFormWindowInterface *formWindow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "activeFormWindowChanged(QDesignerFormWindowInterface*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESIGNERFORMWINDOWMANAGERINTERFACE");
    PHB_ITEM pFormWindow = Qt4xHb::Signals_return_qobject(formWindow, "QDESIGNERFORMWINDOWINTERFACE");

    hb_vmEvalBlockV(cb, 2, pSender, pFormWindow);

    hb_itemRelease(pSender);
    hb_itemRelease(pFormWindow);
  }
}

void QDesignerFormWindowManagerInterfaceSlots::formWindowAdded(QDesignerFormWindowInterface *formWindow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "formWindowAdded(QDesignerFormWindowInterface*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESIGNERFORMWINDOWMANAGERINTERFACE");
    PHB_ITEM pFormWindow = Qt4xHb::Signals_return_qobject(formWindow, "QDESIGNERFORMWINDOWINTERFACE");

    hb_vmEvalBlockV(cb, 2, pSender, pFormWindow);

    hb_itemRelease(pSender);
    hb_itemRelease(pFormWindow);
  }
}

void QDesignerFormWindowManagerInterfaceSlots::formWindowRemoved(QDesignerFormWindowInterface *formWindow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "formWindowRemoved(QDesignerFormWindowInterface*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QDESIGNERFORMWINDOWMANAGERINTERFACE");
    PHB_ITEM pFormWindow = Qt4xHb::Signals_return_qobject(formWindow, "QDESIGNERFORMWINDOWINTERFACE");

    hb_vmEvalBlockV(cb, 2, pSender, pFormWindow);

    hb_itemRelease(pSender);
    hb_itemRelease(pFormWindow);
  }
}

void QDesignerFormWindowManagerInterfaceSlots_connect_signal(const QString &signal, const QString &slot)
{
  QDesignerFormWindowManagerInterface *obj =
      qobject_cast<QDesignerFormWindowManagerInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QDesignerFormWindowManagerInterfaceSlots *s =
        QCoreApplication::instance()->findChild<QDesignerFormWindowManagerInterfaceSlots *>();

    if (s == NULL)
    {
      s = new QDesignerFormWindowManagerInterfaceSlots();
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
