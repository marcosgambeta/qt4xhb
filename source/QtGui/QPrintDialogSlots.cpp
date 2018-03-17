/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintDialogSlots.h"

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
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPRINTDIALOG" );
    PHB_ITEM pprinter = Signals_return_object( (void *) printer, "QPRINTER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

void QPrintDialogSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QPrintDialog * obj = (QPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPrintDialogSlots * s = obj->findChild<QPrintDialogSlots *>();

    if( s == NULL )
    {
      s = new QPrintDialogSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
