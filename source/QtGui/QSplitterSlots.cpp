/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSplitterSlots.h"

QSplitterSlots::QSplitterSlots(QObject *parent) : QObject(parent)
{
}

QSplitterSlots::~QSplitterSlots()
{
}
void QSplitterSlots::splitterMoved( int pos, int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "splitterMoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSPLITTER" );
    PHB_ITEM ppos = hb_itemPutNI( NULL, pos );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ppos, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( ppos );
    hb_itemRelease( pindex );
  }
}

void QSplitterSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QSplitter * obj = (QSplitter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSplitterSlots * s = obj->findChild<QSplitterSlots *>();

    if( s == NULL )
    {
      s = new QSplitterSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
