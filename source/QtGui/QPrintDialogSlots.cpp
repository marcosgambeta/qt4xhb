/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintDialogSlots.h"

static QPrintDialogSlots * s = NULL;

QPrintDialogSlots::QPrintDialogSlots(QObject *parent) : QObject(parent)
{
}

QPrintDialogSlots::~QPrintDialogSlots()
{
}
void QPrintDialogSlots::accepted( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accepted(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprinter = hb_itemPutPtr( NULL, (QPrinter *) printer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

HB_FUNC( QPRINTDIALOG_ONACCEPTED )
{
  if( s == NULL )
  {
    s = new QPrintDialogSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "accepted(QPrinter*)", "accepted(QPrinter*)" ) );
}

