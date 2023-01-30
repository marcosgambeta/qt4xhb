/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDialogSlots.h"

QDialogSlots::QDialogSlots( QObject * parent ) : QObject( parent )
{
}

QDialogSlots::~QDialogSlots()
{
}

void QDialogSlots::accepted()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "accepted()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDIALOG" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDialogSlots::finished( int result )
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "finished(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDIALOG" );
    PHB_ITEM pResult = hb_itemPutNI( NULL, result );

    hb_vmEvalBlockV( cb, 2, pSender, pResult );

    hb_itemRelease( pSender );
    hb_itemRelease( pResult );
  }
}

void QDialogSlots::rejected()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "rejected()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QDIALOG" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QDialogSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDialog * obj = qobject_cast<QDialog*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QDialogSlots * s = QCoreApplication::instance()->findChild<QDialogSlots *>();

    if( s == NULL )
    {
      s = new QDialogSlots();
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
