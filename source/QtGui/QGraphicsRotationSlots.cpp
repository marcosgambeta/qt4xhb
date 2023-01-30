/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsRotationSlots.h"

QGraphicsRotationSlots::QGraphicsRotationSlots( QObject * parent ) : QObject( parent )
{
}

QGraphicsRotationSlots::~QGraphicsRotationSlots()
{
}

void QGraphicsRotationSlots::angleChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "angleChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSROTATION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsRotationSlots::axisChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "axisChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSROTATION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsRotationSlots::originChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "originChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QGRAPHICSROTATION" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QGraphicsRotationSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsRotation * obj = qobject_cast<QGraphicsRotation*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QGraphicsRotationSlots * s = QCoreApplication::instance()->findChild<QGraphicsRotationSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsRotationSlots();
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
