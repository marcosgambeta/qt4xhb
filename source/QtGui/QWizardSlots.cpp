/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWizardSlots.hpp"

QWizardSlots::QWizardSlots(QObject *parent) : QObject(parent)
{
}

QWizardSlots::~QWizardSlots()
{
}

void QWizardSlots::currentIdChanged(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentIdChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pId = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, pSender, pId);

    hb_itemRelease(pSender);
    hb_itemRelease(pId);
  }
}

void QWizardSlots::customButtonClicked(int which)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "customButtonClicked(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pWhich = hb_itemPutNI(NULL, which);

    hb_vmEvalBlockV(cb, 2, pSender, pWhich);

    hb_itemRelease(pSender);
    hb_itemRelease(pWhich);
  }
}

void QWizardSlots::helpRequested()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "helpRequested()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIZARD");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QWizardSlots::pageAdded(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "pageAdded(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pId = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, pSender, pId);

    hb_itemRelease(pSender);
    hb_itemRelease(pId);
  }
}

void QWizardSlots::pageRemoved(int id)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "pageRemoved(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QWIZARD");
    PHB_ITEM pId = hb_itemPutNI(NULL, id);

    hb_vmEvalBlockV(cb, 2, pSender, pId);

    hb_itemRelease(pSender);
    hb_itemRelease(pId);
  }
}

void QWizardSlots_connect_signal(const QString &signal, const QString &slot)
{
  QWizard *obj = qobject_cast<QWizard *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QWizardSlots *s = QCoreApplication::instance()->findChild<QWizardSlots *>();

    if (s == NULL)
    {
      s = new QWizardSlots();
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
