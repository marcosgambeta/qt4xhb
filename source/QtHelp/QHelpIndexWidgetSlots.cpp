/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexWidgetSlots.h"

QHelpIndexWidgetSlots::QHelpIndexWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QHelpIndexWidgetSlots::~QHelpIndexWidgetSlots()
{
}

void QHelpIndexWidgetSlots::linkActivated( const QUrl & link, const QString & keyword )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "linkActivated(QUrl,QString)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QHELPINDEXWIDGET" );
    PHB_ITEM pLink = Qt4xHb::Signals_return_object( ( void * ) &link, "QURL" );
    PHB_ITEM pKeyword = hb_itemPutC( NULL, QSTRINGTOSTRING( keyword ) );

    hb_vmEvalBlockV( cb, 3, pSender, pLink, pKeyword );

    hb_itemRelease( pSender );
    hb_itemRelease( pLink );
    hb_itemRelease( pKeyword );
  }
}

void QHelpIndexWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpIndexWidget * obj = qobject_cast<QHelpIndexWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QHelpIndexWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpIndexWidgetSlots *>();

    if( s == NULL )
    {
      s = new QHelpIndexWidgetSlots();
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
