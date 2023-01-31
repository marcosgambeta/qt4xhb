/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSequentialAnimationGroupSlots.h"

QSequentialAnimationGroupSlots::QSequentialAnimationGroupSlots(QObject * parent) : QObject(parent)
{
}

QSequentialAnimationGroupSlots::~QSequentialAnimationGroupSlots()
{
}

void QSequentialAnimationGroupSlots::currentAnimationChanged( QAbstractAnimation * current )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentAnimationChanged(QAbstractAnimation*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSEQUENTIALANIMATIONGROUP");
    PHB_ITEM pCurrent = Qt4xHb::Signals_return_qobject( current, "QABSTRACTANIMATION");

    hb_vmEvalBlockV( cb, 2, pSender, pCurrent );

    hb_itemRelease( pSender );
    hb_itemRelease( pCurrent );
  }
}

void QSequentialAnimationGroupSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSequentialAnimationGroup * obj = qobject_cast<QSequentialAnimationGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QSequentialAnimationGroupSlots * s = QCoreApplication::instance()->findChild<QSequentialAnimationGroupSlots*>();

    if( s == NULL )
    {
      s = new QSequentialAnimationGroupSlots();
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
