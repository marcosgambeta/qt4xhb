//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QSplashScreenSlots.hpp"

QSplashScreenSlots::QSplashScreenSlots(QObject *parent) : QObject(parent)
{
}

QSplashScreenSlots::~QSplashScreenSlots()
{
}

void QSplashScreenSlots::messageChanged(const QString &message)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "messageChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSPLASHSCREEN");
    PHB_ITEM pMessage = hb_itemPutC(NULL, QSTRINGTOSTRING(message));

    hb_vmEvalBlockV(cb, 2, pSender, pMessage);

    hb_itemRelease(pSender);
    hb_itemRelease(pMessage);
  }
}

void QSplashScreenSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QSplashScreenSlots *s = QCoreApplication::instance()->findChild<QSplashScreenSlots *>();

    if (s == NULL)
    {
      s = new QSplashScreenSlots();
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
