//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QScriptEngineSlots.hpp"

QScriptEngineSlots::QScriptEngineSlots(QObject *parent) : QObject(parent)
{
}

QScriptEngineSlots::~QScriptEngineSlots()
{
}

void QScriptEngineSlots::signalHandlerException(const QScriptValue &exception)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "signalHandlerException(QScriptValue)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSCRIPTENGINE");
    PHB_ITEM pException = Qt4xHb::Signals_return_object((void *)&exception, "QSCRIPTVALUE");

    hb_vmEvalBlockV(cb, 2, pSender, pException);

    hb_itemRelease(pSender);
    hb_itemRelease(pException);
  }
}

void QScriptEngineSlots_connect_signal(const QString &signal, const QString &slot)
{
  QScriptEngine *obj = qobject_cast<QScriptEngine *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QScriptEngineSlots *s = QCoreApplication::instance()->findChild<QScriptEngineSlots *>();

    if (s == NULL)
    {
      s = new QScriptEngineSlots();
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
