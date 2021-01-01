/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGroupBoxSlots.h"

QGroupBoxSlots::QGroupBoxSlots( QObject * parent ) : QObject( parent )
{
}

QGroupBoxSlots::~QGroupBoxSlots()
{
}

void QGroupBoxSlots::clicked( bool checked )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "clicked(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QGROUPBOX" );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, psender, pchecked );

    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void QGroupBoxSlots::toggled( bool on )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "toggled(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QGROUPBOX" );
    PHB_ITEM pon = hb_itemPutL( NULL, on );

    hb_vmEvalBlockV( cb, 2, psender, pon );

    hb_itemRelease( psender );
    hb_itemRelease( pon );
  }
}

void QGroupBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGroupBox * obj = ( QGroupBox * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QGroupBoxSlots * s = QCoreApplication::instance()->findChild<QGroupBoxSlots *>();

    if( s == NULL )
    {
      s = new QGroupBoxSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
