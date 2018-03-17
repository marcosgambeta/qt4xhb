/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTreeWidgetSlots.h"

QTreeWidgetSlots::QTreeWidgetSlots(QObject *parent) : QObject(parent)
{
}

QTreeWidgetSlots::~QTreeWidgetSlots()
{
}
void QTreeWidgetSlots::currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pcurrent = Signals_return_object( (void *) current, "QTREEWIDGETITEM" );
    PHB_ITEM pprevious = Signals_return_object( (void *) previous, "QTREEWIDGETITEM" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}
void QTreeWidgetSlots::itemActivated( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemActivated(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemChanged( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemChanged(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemClicked( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemCollapsed( QTreeWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemCollapsed(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}
void QTreeWidgetSlots::itemDoubleClicked( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemDoubleClicked(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemEntered( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemEntered(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemExpanded( QTreeWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemExpanded(QTreeWidgetItem*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pitem );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}
void QTreeWidgetSlots::itemPressed( QTreeWidgetItem * item, int column )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemPressed(QTreeWidgetItem*,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    PHB_ITEM pitem = Signals_return_object( (void *) item, "QTREEWIDGETITEM" );
    PHB_ITEM pcolumn = hb_itemPutNI( NULL, column );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pitem, pcolumn );
    hb_itemRelease( psender );
    hb_itemRelease( pitem );
    hb_itemRelease( pcolumn );
  }
}
void QTreeWidgetSlots::itemSelectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "itemSelectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QTREEWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QTreeWidgetSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QTreeWidget * obj = (QTreeWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QTreeWidgetSlots * s = obj->findChild<QTreeWidgetSlots *>();

    if( s == NULL )
    {
      s = new QTreeWidgetSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
