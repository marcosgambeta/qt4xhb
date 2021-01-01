/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDataWidgetMapperSlots.h"

QDataWidgetMapperSlots::QDataWidgetMapperSlots( QObject * parent ) : QObject( parent )
{
}

QDataWidgetMapperSlots::~QDataWidgetMapperSlots()
{
}

void QDataWidgetMapperSlots::currentIndexChanged( int index )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentIndexChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QDATAWIDGETMAPPER" );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, psender, pindex );

    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

void QDataWidgetMapperSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDataWidgetMapper * obj = ( QDataWidgetMapper * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDataWidgetMapperSlots * s = QCoreApplication::instance()->findChild<QDataWidgetMapperSlots *>();

    if( s == NULL )
    {
      s = new QDataWidgetMapperSlots();
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
