/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCalendarWidgetSlots.h"

QCalendarWidgetSlots::QCalendarWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QCalendarWidgetSlots::~QCalendarWidgetSlots()
{
}

void QCalendarWidgetSlots::activated( const QDate & date )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "activated(QDate)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QCALENDARWIDGET" );
    PHB_ITEM pDate = Qt4xHb::Signals_return_object( ( void * ) &date, "QDATE" );

    hb_vmEvalBlockV( cb, 2, pSender, pDate );

    hb_itemRelease( pSender );
    hb_itemRelease( pDate );
  }
}

void QCalendarWidgetSlots::clicked( const QDate & date )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "clicked(QDate)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QCALENDARWIDGET" );
    PHB_ITEM pDate = Qt4xHb::Signals_return_object( ( void * ) &date, "QDATE" );

    hb_vmEvalBlockV( cb, 2, pSender, pDate );

    hb_itemRelease( pSender );
    hb_itemRelease( pDate );
  }
}

void QCalendarWidgetSlots::currentPageChanged( int year, int month )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentPageChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QCALENDARWIDGET" );
    PHB_ITEM pYear = hb_itemPutNI( NULL, year );
    PHB_ITEM pMonth = hb_itemPutNI( NULL, month );

    hb_vmEvalBlockV( cb, 3, pSender, pYear, pMonth );

    hb_itemRelease( pSender );
    hb_itemRelease( pYear );
    hb_itemRelease( pMonth );
  }
}

void QCalendarWidgetSlots::selectionChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QCALENDARWIDGET" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QCalendarWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCalendarWidget * obj = qobject_cast<QCalendarWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QCalendarWidgetSlots * s = QCoreApplication::instance()->findChild<QCalendarWidgetSlots *>();

    if( s == NULL )
    {
      s = new QCalendarWidgetSlots();
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
