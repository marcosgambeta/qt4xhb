/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractButtonSlots.h"

QAbstractButtonSlots::QAbstractButtonSlots(QObject *parent) : QObject(parent)
{
}

QAbstractButtonSlots::~QAbstractButtonSlots()
{
}
void QAbstractButtonSlots::clicked( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTBUTTON" );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}
void QAbstractButtonSlots::pressed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAbstractButtonSlots::released()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTBUTTON" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QAbstractButtonSlots::toggled( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTBUTTON" );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void QAbstractButtonSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAbstractButtonSlots * s = obj->findChild<QAbstractButtonSlots *>();

    if( s == NULL )
    {
      s = new QAbstractButtonSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
