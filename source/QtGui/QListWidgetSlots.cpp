/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QListWidgetSlots.h"

QListWidgetSlots::QListWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QListWidgetSlots::~QListWidgetSlots()
{
}

void QListWidgetSlots::currentItemChanged( QListWidgetItem * current, QListWidgetItem * previous )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentItemChanged(QListWidgetItem*,QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pcurrent = Qt4xHb::Signals_return_object( (void *) current, "QLISTWIDGETITEM" );
    PHB_ITEM pprevious = Qt4xHb::Signals_return_object( (void *) previous, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 3, psender, pcurrent, pprevious );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void QListWidgetSlots::currentRowChanged( int currentRow )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentRowChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pcurrentRow = hb_itemPutNI( NULL, currentRow );

    hb_vmEvalBlockV( cb, 2, psender, pcurrentRow );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrentRow );
  }
}

void QListWidgetSlots::currentTextChanged( const QString & currentText )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentTextChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pcurrentText = hb_itemPutC( NULL, QSTRINGTOSTRING(currentText) );

    hb_vmEvalBlockV( cb, 2, psender, pcurrentText );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrentText );
  }
}

void QListWidgetSlots::itemActivated( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemActivated(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemChanged( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemChanged(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemClicked( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemClicked(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemDoubleClicked( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemDoubleClicked(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemEntered( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemEntered(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemPressed( QListWidgetItem * item )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemPressed(QListWidgetItem*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );
    PHB_ITEM pitem = Qt4xHb::Signals_return_object( (void *) item, "QLISTWIDGETITEM" );

    hb_vmEvalBlockV( cb, 2, psender, pitem );

    hb_itemRelease( psender );
    hb_itemRelease( pitem );
  }
}

void QListWidgetSlots::itemSelectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "itemSelectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( (QObject *) object, "QLISTWIDGET" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QListWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QListWidget * obj = (QListWidget *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QListWidgetSlots * s = QCoreApplication::instance()->findChild<QListWidgetSlots *>();

    if( s == NULL )
    {
      s = new QListWidgetSlots();
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
