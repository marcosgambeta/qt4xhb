/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCoreApplicationSlots.hpp"

QCoreApplicationSlots::QCoreApplicationSlots(QObject * parent) : QObject(parent)
{
}

QCoreApplicationSlots::~QCoreApplicationSlots()
{
}

void QCoreApplicationSlots::aboutToQuit()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "aboutToQuit()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QCOREAPPLICATION");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QCoreApplicationSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCoreApplication * obj = qobject_cast<QCoreApplication*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QCoreApplicationSlots * s = QCoreApplication::instance()->findChild<QCoreApplicationSlots*>();

    if( s == NULL )
    {
      s = new QCoreApplicationSlots();
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
