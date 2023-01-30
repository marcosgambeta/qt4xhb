/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpContentModelSlots.h"

QHelpContentModelSlots::QHelpContentModelSlots( QObject * parent ) : QObject( parent )
{
}

QHelpContentModelSlots::~QHelpContentModelSlots()
{
}

void QHelpContentModelSlots::contentsCreated()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "contentsCreated()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QHELPCONTENTMODEL" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QHelpContentModelSlots::contentsCreationStarted()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "contentsCreationStarted()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QHELPCONTENTMODEL" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QHelpContentModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QHelpContentModelSlots * s = QCoreApplication::instance()->findChild<QHelpContentModelSlots *>();

    if( s == NULL )
    {
      s = new QHelpContentModelSlots();
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
