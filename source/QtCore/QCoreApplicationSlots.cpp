/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCoreApplicationSlots.h"

static QCoreApplicationSlots * s = NULL;

QCoreApplicationSlots::QCoreApplicationSlots(QObject *parent) : QObject(parent)
{
}

QCoreApplicationSlots::~QCoreApplicationSlots()
{
}
void QCoreApplicationSlots::aboutToQuit()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToQuit()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCOREAPPLICATION_ONABOUTTOQUIT )
{
  if( s == NULL )
  {
    s = new QCoreApplicationSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "aboutToQuit()", "aboutToQuit()" ) );
}

