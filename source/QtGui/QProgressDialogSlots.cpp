/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QProgressDialogSlots.h"

static QProgressDialogSlots * s = NULL;

QProgressDialogSlots::QProgressDialogSlots(QObject *parent) : QObject(parent)
{
}

QProgressDialogSlots::~QProgressDialogSlots()
{
}
void QProgressDialogSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canceled()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QPROGRESSDIALOG" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QProgressDialogSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QProgressDialogSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
