/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStackedLayoutSlots.h"

QStackedLayoutSlots::QStackedLayoutSlots( QObject * parent ) : QObject( parent )
{
}

QStackedLayoutSlots::~QStackedLayoutSlots()
{
}

void QStackedLayoutSlots::setCurrentIndex( int index )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "setCurrentIndex(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSTACKEDLAYOUT" );
    PHB_ITEM pIndex = hb_itemPutNI( NULL, index );

    hb_vmEvalBlockV( cb, 2, pSender, pIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pIndex );
  }
}

void QStackedLayoutSlots::setCurrentWidget( QWidget * widget )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "setCurrentWidget(QWidget*)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QSTACKEDLAYOUT" );
    PHB_ITEM pWidget = Qt4xHb::Signals_return_qobject( widget, "QWIDGET" );

    hb_vmEvalBlockV( cb, 2, pSender, pWidget );

    hb_itemRelease( pSender );
    hb_itemRelease( pWidget );
  }
}

void QStackedLayoutSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStackedLayout * obj = qobject_cast<QStackedLayout*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QStackedLayoutSlots * s = QCoreApplication::instance()->findChild<QStackedLayoutSlots *>();

    if( s == NULL )
    {
      s = new QStackedLayoutSlots();
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
