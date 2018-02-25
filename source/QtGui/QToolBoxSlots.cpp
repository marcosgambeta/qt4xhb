/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolBoxSlots.h"

static QToolBoxSlots * s = NULL;

QToolBoxSlots::QToolBoxSlots(QObject *parent) : QObject(parent)
{
}

QToolBoxSlots::~QToolBoxSlots()
{
}
void QToolBoxSlots::currentChanged( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QTOOLBOX_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new QToolBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "currentChanged(int)", "currentChanged(int)" ) );
}

