/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsObjectSlots.h"

static QGraphicsObjectSlots * s = NULL;

QGraphicsObjectSlots::QGraphicsObjectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsObjectSlots::~QGraphicsObjectSlots()
{
}
void QGraphicsObjectSlots::enabledChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "enabledChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::opacityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::parentChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parentChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::rotationChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rotationChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::scaleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scaleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::visibleChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibleChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::xChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "xChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::yChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "yChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QGraphicsObjectSlots::zChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "zChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QGRAPHICSOBJECT_ONENABLEDCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "enabledChanged()", "enabledChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONOPACITYCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "opacityChanged()", "opacityChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONPARENTCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "parentChanged()", "parentChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONROTATIONCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "rotationChanged()", "rotationChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONSCALECHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "scaleChanged()", "scaleChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONVISIBLECHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "visibleChanged()", "visibleChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONXCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "xChanged()", "xChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONYCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "yChanged()", "yChanged()" ) );
}

HB_FUNC( QGRAPHICSOBJECT_ONZCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsObjectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "zChanged()", "zChanged()" ) );
}

