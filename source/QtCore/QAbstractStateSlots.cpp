/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractStateSlots.hpp"

QAbstractStateSlots::QAbstractStateSlots(QObject * parent) : QObject(parent)
{
}

QAbstractStateSlots::~QAbstractStateSlots()
{
}

void QAbstractStateSlots::entered()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "entered()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTSTATE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QAbstractStateSlots::exited()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "exited()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTSTATE");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QAbstractStateSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractState * obj = qobject_cast<QAbstractState*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QAbstractStateSlots * s = QCoreApplication::instance()->findChild<QAbstractStateSlots*>();

    if( s == NULL )
    {
      s = new QAbstractStateSlots();
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
