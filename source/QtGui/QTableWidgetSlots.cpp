/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTableWidgetSlots.hpp"

QTableWidgetSlots::QTableWidgetSlots(QObject * parent) : QObject(parent)
{
}

QTableWidgetSlots::~QTableWidgetSlots()
{
}

void QTableWidgetSlots::cellActivated( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellActivated(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::cellChanged( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellChanged(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::cellClicked( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellClicked(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::cellDoubleClicked( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellDoubleClicked(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::cellEntered( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellEntered(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::cellPressed( int row, int column )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cellPressed(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pRow = hb_itemPutNI( NULL, row );
    PHB_ITEM pColumn = hb_itemPutNI( NULL, column );

    hb_vmEvalBlockV( cb, 3, pSender, pRow, pColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pRow );
    hb_itemRelease( pColumn );
  }
}

void QTableWidgetSlots::currentCellChanged( int currentRow, int currentColumn, int previousRow, int previousColumn )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentCellChanged(int,int,int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pCurrentRow = hb_itemPutNI( NULL, currentRow );
    PHB_ITEM pCurrentColumn = hb_itemPutNI( NULL, currentColumn );
    PHB_ITEM pPreviousRow = hb_itemPutNI( NULL, previousRow );
    PHB_ITEM pPreviousColumn = hb_itemPutNI( NULL, previousColumn );

    hb_vmEvalBlockV( cb, 5, pSender, pCurrentRow, pCurrentColumn, pPreviousRow, pPreviousColumn );

    hb_itemRelease( pSender );
    hb_itemRelease( pCurrentRow );
    hb_itemRelease( pCurrentColumn );
    hb_itemRelease( pPreviousRow );
    hb_itemRelease( pPreviousColumn );
  }
}

void QTableWidgetSlots::currentItemChanged( QTableWidgetItem * current, QTableWidgetItem * previous )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pCurrent = Qt4xHb::Signals_return_object( ( void * ) current, "QTABLEWIDGETITEM");
    PHB_ITEM pPrevious = Qt4xHb::Signals_return_object( ( void * ) previous, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 3, pSender, pCurrent, pPrevious );

    hb_itemRelease( pSender );
    hb_itemRelease( pCurrent );
    hb_itemRelease( pPrevious );
  }
}

void QTableWidgetSlots::itemActivated( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemActivated(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemChanged( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemChanged(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemClicked( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemClicked(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemDoubleClicked( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemDoubleClicked(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemEntered( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemEntered(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemPressed( QTableWidgetItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemPressed(QTableWidgetItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QTABLEWIDGETITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease( pItem );
  }
}

void QTableWidgetSlots::itemSelectionChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemSelectionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QTABLEWIDGET");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QTableWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTableWidget * obj = qobject_cast<QTableWidget*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QTableWidgetSlots * s = QCoreApplication::instance()->findChild<QTableWidgetSlots*>();

    if( s == NULL )
    {
      s = new QTableWidgetSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
