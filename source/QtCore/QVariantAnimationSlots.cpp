/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVariantAnimationSlots.hpp"

QVariantAnimationSlots::QVariantAnimationSlots(QObject * parent) : QObject(parent)
{
}

QVariantAnimationSlots::~QVariantAnimationSlots()
{
}

void QVariantAnimationSlots::valueChanged( const QVariant & value )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "valueChanged(QVariant)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QVARIANTANIMATION");
    PHB_ITEM pValue = Qt4xHb::Signals_return_object( ( void * ) &value, "QVARIANT");

    hb_vmEvalBlockV( cb, 2, pSender, pValue );

    hb_itemRelease( pSender );
    hb_itemRelease( pValue );
  }
}

void QVariantAnimationSlots_connect_signal( const QString & signal, const QString & slot )
{
  QVariantAnimation * obj = qobject_cast<QVariantAnimation*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QVariantAnimationSlots * s = QCoreApplication::instance()->findChild<QVariantAnimationSlots*>();

    if( s == NULL )
    {
      s = new QVariantAnimationSlots();
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
