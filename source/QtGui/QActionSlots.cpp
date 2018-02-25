/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QActionSlots.h"

static QActionSlots * s = NULL;

QActionSlots::QActionSlots(QObject *parent) : QObject(parent)
{
}

QActionSlots::~QActionSlots()
{
}
void QActionSlots::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QActionSlots::hovered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QActionSlots::toggled( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "toggled(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}
void QActionSlots::triggered( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchecked );
    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

HB_FUNC( QACTION_ONCHANGED )
{
  if( s == NULL )
  {
    s = new QActionSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "changed()", "changed()" ) );
}

HB_FUNC( QACTION_ONHOVERED )
{
  if( s == NULL )
  {
    s = new QActionSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "hovered()", "hovered()" ) );
}

HB_FUNC( QACTION_ONTOGGLED )
{
  if( s == NULL )
  {
    s = new QActionSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "toggled(bool)", "toggled(bool)" ) );
}

HB_FUNC( QACTION_ONTRIGGERED )
{
  if( s == NULL )
  {
    s = new QActionSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "triggered(bool)", "triggered(bool)" ) );
}

