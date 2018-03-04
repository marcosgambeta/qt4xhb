/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QColumnViewSlots.h"

static QColumnViewSlots * s = NULL;

QColumnViewSlots::QColumnViewSlots(QObject *parent) : QObject(parent)
{
}

QColumnViewSlots::~QColumnViewSlots()
{
}
void QColumnViewSlots::updatePreviewWidget( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updatePreviewWidget(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QCOLUMNVIEW" );
    PHB_ITEM pindex = Signals_return_object( (void *) &index, "QMODELINDEX" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QColumnViewSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QColumnViewSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
