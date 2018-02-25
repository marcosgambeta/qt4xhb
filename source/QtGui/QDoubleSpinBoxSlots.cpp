/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDoubleSpinBoxSlots.h"

static QDoubleSpinBoxSlots * s = NULL;

QDoubleSpinBoxSlots::QDoubleSpinBoxSlots(QObject *parent) : QObject(parent)
{
}

QDoubleSpinBoxSlots::~QDoubleSpinBoxSlots()
{
}
void QDoubleSpinBoxSlots::valueChanged( double d )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(double)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pd = hb_itemPutND( NULL, d );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pd );
    hb_itemRelease( psender );
    hb_itemRelease( pd );
  }
}
void QDoubleSpinBoxSlots::valueChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ptext );
    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

HB_FUNC( QDOUBLESPINBOX_ONVALUECHANGED1 )
{
  if( s == NULL )
  {
    s = new QDoubleSpinBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueChanged(double)", "valueChanged(double)" ) );
}

HB_FUNC( QDOUBLESPINBOX_ONVALUECHANGED2 )
{
  if( s == NULL )
  {
    s = new QDoubleSpinBoxSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "valueChanged(QString)", "valueChanged(QString)" ) );
}

