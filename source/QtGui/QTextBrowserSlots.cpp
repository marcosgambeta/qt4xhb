/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextBrowserSlots.h"

QTextBrowserSlots::QTextBrowserSlots( QObject * parent ) : QObject( parent )
{
}

QTextBrowserSlots::~QTextBrowserSlots()
{
}

void QTextBrowserSlots::anchorClicked( const QUrl & link )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "anchorClicked(QUrl)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pLink = Qt4xHb::Signals_return_object( ( void * ) &link, "QURL" );

    hb_vmEvalBlockV( cb, 2, pSender, pLink );

    hb_itemRelease( pSender );
    hb_itemRelease( pLink );
  }
}

void QTextBrowserSlots::backwardAvailable( bool available )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "backwardAvailable(bool)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pAvailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, pSender, pAvailable );

    hb_itemRelease( pSender );
    hb_itemRelease( pAvailable );
  }
}

void QTextBrowserSlots::forwardAvailable( bool available )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "forwardAvailable(bool)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pAvailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, pSender, pAvailable );

    hb_itemRelease( pSender );
    hb_itemRelease( pAvailable );
  }
}

void QTextBrowserSlots::highlighted( const QUrl & link )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "highlighted(QUrl)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pLink = Qt4xHb::Signals_return_object( ( void * ) &link, "QURL" );

    hb_vmEvalBlockV( cb, 2, pSender, pLink );

    hb_itemRelease( pSender );
    hb_itemRelease( pLink );
  }
}

void QTextBrowserSlots::highlighted( const QString & link )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "highlighted(QString)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pLink = hb_itemPutC( NULL, QSTRINGTOSTRING( link ) );

    hb_vmEvalBlockV( cb, 2, pSender, pLink );

    hb_itemRelease( pSender );
    hb_itemRelease( pLink );
  }
}

void QTextBrowserSlots::historyChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "historyChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QTextBrowserSlots::sourceChanged( const QUrl & src )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "sourceChanged(QUrl)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QTEXTBROWSER" );
    PHB_ITEM pSrc = Qt4xHb::Signals_return_object( ( void * ) &src, "QURL" );

    hb_vmEvalBlockV( cb, 2, pSender, pSrc );

    hb_itemRelease( pSender );
    hb_itemRelease( pSrc );
  }
}

void QTextBrowserSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTextBrowser * obj = qobject_cast<QTextBrowser*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QTextBrowserSlots * s = QCoreApplication::instance()->findChild<QTextBrowserSlots *>();

    if( s == NULL )
    {
      s = new QTextBrowserSlots();
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
