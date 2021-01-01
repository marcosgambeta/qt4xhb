/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSpinBoxSlots.h"

QSpinBoxSlots::QSpinBoxSlots( QObject * parent ) : QObject( parent )
{
}

QSpinBoxSlots::~QSpinBoxSlots()
{
}

void QSpinBoxSlots::valueChanged( int i )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "valueChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QSPINBOX" );
    PHB_ITEM pi = hb_itemPutNI( NULL, i );

    hb_vmEvalBlockV( cb, 2, psender, pi );

    hb_itemRelease( psender );
    hb_itemRelease( pi );
  }
}

void QSpinBoxSlots::valueChanged( const QString & text )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "valueChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QSPINBOX" );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING( text ) );

    hb_vmEvalBlockV( cb, 2, psender, ptext );

    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QSpinBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSpinBox * obj = ( QSpinBox * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSpinBoxSlots * s = QCoreApplication::instance()->findChild<QSpinBoxSlots *>();

    if( s == NULL )
    {
      s = new QSpinBoxSlots();
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
