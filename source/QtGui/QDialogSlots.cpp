/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDialogSlots.h"

static QDialogSlots * s = NULL;

QDialogSlots::QDialogSlots(QObject *parent) : QObject(parent)
{
}

QDialogSlots::~QDialogSlots()
{
}
void QDialogSlots::accepted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accepted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QDIALOG" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDialogSlots::finished( int result )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QDIALOG" );
    PHB_ITEM presult = hb_itemPutNI( NULL, result );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, presult );
    hb_itemRelease( psender );
    hb_itemRelease( presult );
  }
}
void QDialogSlots::rejected()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rejected()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QDIALOG" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QDialogSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QDialogSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
