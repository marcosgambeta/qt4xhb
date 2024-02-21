/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QThreadSlots.hpp"

QThreadSlots::QThreadSlots(QObject * parent) : QObject(parent)
{
}

QThreadSlots::~QThreadSlots()
{
}

void QThreadSlots::finished()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "finished()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTHREAD");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QThreadSlots::started()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "started()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTHREAD");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QThreadSlots_connect_signal( const QString & signal, const QString & slot )
{
  QThread * obj = qobject_cast<QThread*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QThreadSlots * s = QCoreApplication::instance()->findChild<QThreadSlots*>();

    if( s == NULL )
    {
      s = new QThreadSlots();
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
