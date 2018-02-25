/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStackedLayoutSlots.h"

static QStackedLayoutSlots * s = NULL;

QStackedLayoutSlots::QStackedLayoutSlots(QObject *parent) : QObject(parent)
{
}

QStackedLayoutSlots::~QStackedLayoutSlots()
{
}
void QStackedLayoutSlots::setCurrentIndex( int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentIndex(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}
void QStackedLayoutSlots::setCurrentWidget( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setCurrentWidget(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwidget = hb_itemPutPtr( NULL, (QWidget *) widget );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}

HB_FUNC( QSTACKEDLAYOUT_ONSETCURRENTINDEX )
{
  if( s == NULL )
  {
    s = new QStackedLayoutSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "setCurrentIndex(int)", "setCurrentIndex(int)" ) );
}

HB_FUNC( QSTACKEDLAYOUT_ONSETCURRENTWIDGET )
{
  if( s == NULL )
  {
    s = new QStackedLayoutSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "setCurrentWidget(QWidget*)", "setCurrentWidget(QWidget*)" ) );
}

