/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsWidgetSlots.h"

QGraphicsWidgetSlots::QGraphicsWidgetSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsWidgetSlots::~QGraphicsWidgetSlots()
{
}
void QGraphicsWidgetSlots::geometryChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGRAPHICSWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QGraphicsWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QGraphicsWidget * obj = (QGraphicsWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QGraphicsWidgetSlots * s = obj->findChild<QGraphicsWidgetSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsWidgetSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
