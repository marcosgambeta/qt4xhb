/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsBlurEffectSlots.h"

static QGraphicsBlurEffectSlots * s = NULL;

QGraphicsBlurEffectSlots::QGraphicsBlurEffectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsBlurEffectSlots::~QGraphicsBlurEffectSlots()
{
}
void QGraphicsBlurEffectSlots::blurHintsChanged( QGraphicsBlurEffect::BlurHints hints )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phints = hb_itemPutNI( NULL, (int) hints );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phints );
    hb_itemRelease( psender );
    hb_itemRelease( phints );
  }
}
void QGraphicsBlurEffectSlots::blurRadiusChanged( qreal radius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradius = hb_itemPutND( NULL, radius );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradius );
    hb_itemRelease( psender );
    hb_itemRelease( pradius );
  }
}

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURHINTSCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsBlurEffectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)", "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" ) );
}

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURRADIUSCHANGED )
{
  if( s == NULL )
  {
    s = new QGraphicsBlurEffectSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "blurRadiusChanged(qreal)", "blurRadiusChanged(qreal)" ) );
}

