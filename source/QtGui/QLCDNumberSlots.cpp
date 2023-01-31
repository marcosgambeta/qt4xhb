/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLCDNumberSlots.hpp"

QLCDNumberSlots::QLCDNumberSlots(QObject * parent) : QObject(parent)
{
}

QLCDNumberSlots::~QLCDNumberSlots()
{
}

void QLCDNumberSlots::overflow()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "overflow()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLCDNUMBER");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QLCDNumberSlots_connect_signal( const QString & signal, const QString & slot )
{
  QLCDNumber * obj = qobject_cast<QLCDNumber*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QLCDNumberSlots * s = QCoreApplication::instance()->findChild<QLCDNumberSlots*>();

    if( s == NULL )
    {
      s = new QLCDNumberSlots();
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
