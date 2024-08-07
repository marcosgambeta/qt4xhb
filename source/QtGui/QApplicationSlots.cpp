//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QApplicationSlots.hpp"

QApplicationSlots::QApplicationSlots(QObject *parent) : QObject(parent)
{
}

QApplicationSlots::~QApplicationSlots()
{
}

void QApplicationSlots::aboutToReleaseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToReleaseGpuResources()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QApplicationSlots::aboutToUseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToUseGpuResources()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QApplicationSlots::commitDataRequest(QSessionManager &manager)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "commitDataRequest(QSessionManager)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pManager = Qt4xHb::Signals_return_qobject(&manager, "QSESSIONMANAGER");

    hb_vmEvalBlockV(cb, 2, pSender, pManager);

    hb_itemRelease(pSender);
    hb_itemRelease(pManager);
  }
}

void QApplicationSlots::focusChanged(QWidget *old, QWidget *now)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "focusChanged(QWidget*,QWidget*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pOld = Qt4xHb::Signals_return_qobject(old, "QWIDGET");
    PHB_ITEM pNow = Qt4xHb::Signals_return_qobject(now, "QWIDGET");

    hb_vmEvalBlockV(cb, 3, pSender, pOld, pNow);

    hb_itemRelease(pSender);
    hb_itemRelease(pOld);
    hb_itemRelease(pNow);
  }
}

void QApplicationSlots::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "fontDatabaseChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QApplicationSlots::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "lastWindowClosed()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QApplicationSlots::saveStateRequest(QSessionManager &manager)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "saveStateRequest(QSessionManager)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QAPPLICATION");
    PHB_ITEM pManager = Qt4xHb::Signals_return_qobject(&manager, "QSESSIONMANAGER");

    hb_vmEvalBlockV(cb, 2, pSender, pManager);

    hb_itemRelease(pSender);
    hb_itemRelease(pManager);
  }
}

void QApplicationSlots_connect_signal(const QString &signal, const QString &slot)
{
  QApplication *obj = qobject_cast<QApplication *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QApplicationSlots *s = QCoreApplication::instance()->findChild<QApplicationSlots *>();

    if (s == NULL)
    {
      s = new QApplicationSlots();
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
