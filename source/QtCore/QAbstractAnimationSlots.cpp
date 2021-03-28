/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractAnimationSlots.h"

QAbstractAnimationSlots::QAbstractAnimationSlots( QObject * parent ) : QObject( parent )
{
}

QAbstractAnimationSlots::~QAbstractAnimationSlots()
{
}

void QAbstractAnimationSlots::currentLoopChanged( int currentLoop )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentLoopChanged(int)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTANIMATION" );
    PHB_ITEM pCurrentLoop = hb_itemPutNI( NULL, currentLoop );

    hb_vmEvalBlockV( cb, 2, pSender, pCurrentLoop );

    hb_itemRelease( pSender );
    hb_itemRelease( pCurrentLoop );
  }
}

void QAbstractAnimationSlots::directionChanged( QAbstractAnimation::Direction newDirection )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "directionChanged(QAbstractAnimation::Direction)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTANIMATION" );
    PHB_ITEM pNewDirection = hb_itemPutNI( NULL, static_cast< int >( newDirection ) );

    hb_vmEvalBlockV( cb, 2, pSender, pNewDirection );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewDirection );
  }
}

void QAbstractAnimationSlots::finished()
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTANIMATION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QAbstractAnimationSlots::stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
{
  QObject * object = qobject_cast< QObject * >( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "stateChanged(QAbstractAnimation::State,QAbstractAnimation::State)" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QABSTRACTANIMATION" );
    PHB_ITEM pNewState = hb_itemPutNI( NULL, static_cast< int >( newState ) );
    PHB_ITEM pOldState = hb_itemPutNI( NULL, static_cast< int >( oldState ) );

    hb_vmEvalBlockV( cb, 3, pSender, pNewState, pOldState );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewState );
    hb_itemRelease( pOldState );
  }
}

void QAbstractAnimationSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractAnimation * obj = qobject_cast< QAbstractAnimation * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    QAbstractAnimationSlots * s = QCoreApplication::instance()->findChild<QAbstractAnimationSlots *>();

    if( s == NULL )
    {
      s = new QAbstractAnimationSlots();
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
