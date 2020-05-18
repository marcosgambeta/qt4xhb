/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QToolBarSlots.h"

QToolBarSlots::QToolBarSlots( QObject *parent ) : QObject( parent )
{
}

QToolBarSlots::~QToolBarSlots()
{
}

void QToolBarSlots::actionTriggered( QAction * action )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "actionTriggered(QAction*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM paction = Qt4xHb::Signals_return_qobject( (QObject *) action, "QACTION" );

    hb_vmEvalBlockV( cb, 2, psender, paction );

    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void QToolBarSlots::allowedAreasChanged( Qt::ToolBarAreas allowedAreas )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "allowedAreasChanged(Qt::ToolBarAreas)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM pallowedAreas = hb_itemPutNI( NULL, (int) allowedAreas );

    hb_vmEvalBlockV( cb, 2, psender, pallowedAreas );

    hb_itemRelease( psender );
    hb_itemRelease( pallowedAreas );
  }
}

void QToolBarSlots::iconSizeChanged( const QSize & iconSize )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "iconSizeChanged(QSize)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM piconSize = Qt4xHb::Signals_return_object( (void *) &iconSize, "QSIZE" );

    hb_vmEvalBlockV( cb, 2, psender, piconSize );

    hb_itemRelease( psender );
    hb_itemRelease( piconSize );
  }
}

void QToolBarSlots::movableChanged( bool movable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "movableChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM pmovable = hb_itemPutL( NULL, movable );

    hb_vmEvalBlockV( cb, 2, psender, pmovable );

    hb_itemRelease( psender );
    hb_itemRelease( pmovable );
  }
}

void QToolBarSlots::orientationChanged( Qt::Orientation orientation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "orientationChanged(Qt::Orientation)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );

    hb_vmEvalBlockV( cb, 2, psender, porientation );

    hb_itemRelease( psender );
    hb_itemRelease( porientation );
  }
}

void QToolBarSlots::toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "toolButtonStyleChanged(Qt::ToolButtonStyle)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM ptoolButtonStyle = hb_itemPutNI( NULL, (int) toolButtonStyle );

    hb_vmEvalBlockV( cb, 2, psender, ptoolButtonStyle );

    hb_itemRelease( psender );
    hb_itemRelease( ptoolButtonStyle );
  }
}

void QToolBarSlots::topLevelChanged( bool topLevel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "topLevelChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM ptopLevel = hb_itemPutL( NULL, topLevel );

    hb_vmEvalBlockV( cb, 2, psender, ptopLevel );

    hb_itemRelease( psender );
    hb_itemRelease( ptopLevel );
  }
}

void QToolBarSlots::visibilityChanged( bool visible )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "visibilityChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QTOOLBAR" );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );

    hb_vmEvalBlockV( cb, 2, psender, pvisible );

    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
}

void QToolBarSlots_connect_signal( const QString & signal, const QString & slot )
{
  QToolBar * obj = (QToolBar *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QToolBarSlots * s = QCoreApplication::instance()->findChild<QToolBarSlots *>();

    if( s == NULL )
    {
      s = new QToolBarSlots();
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
