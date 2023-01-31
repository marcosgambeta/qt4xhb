/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHeaderViewSlots.hpp"

QHeaderViewSlots::QHeaderViewSlots(QObject * parent) : QObject(parent)
{
}

QHeaderViewSlots::~QHeaderViewSlots()
{
}

void QHeaderViewSlots::geometriesChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "geometriesChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QHeaderViewSlots::sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionAutoResize(int,QHeaderView::ResizeMode)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pMode = hb_itemPutNI( NULL, static_cast<int >( mode ) );

    hb_vmEvalBlockV( cb, 3, pSender, pLogicalIndex, pMode );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
    hb_itemRelease( pMode );
  }
}

void QHeaderViewSlots::sectionClicked( int logicalIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionClicked(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );

    hb_vmEvalBlockV( cb, 2, pSender, pLogicalIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
  }
}

void QHeaderViewSlots::sectionCountChanged( int oldCount, int newCount )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionCountChanged(int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pOldCount = hb_itemPutNI( NULL, oldCount );
    PHB_ITEM pNewCount = hb_itemPutNI( NULL, newCount );

    hb_vmEvalBlockV( cb, 3, pSender, pOldCount, pNewCount );

    hb_itemRelease( pSender );
    hb_itemRelease( pOldCount );
    hb_itemRelease( pNewCount );
  }
}

void QHeaderViewSlots::sectionDoubleClicked( int logicalIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionDoubleClicked(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );

    hb_vmEvalBlockV( cb, 2, pSender, pLogicalIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
  }
}

void QHeaderViewSlots::sectionEntered( int logicalIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionEntered(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );

    hb_vmEvalBlockV( cb, 2, pSender, pLogicalIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
  }
}

void QHeaderViewSlots::sectionHandleDoubleClicked( int logicalIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionHandleDoubleClicked(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );

    hb_vmEvalBlockV( cb, 2, pSender, pLogicalIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
  }
}

void QHeaderViewSlots::sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionMoved(int,int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pOldVisualIndex = hb_itemPutNI( NULL, oldVisualIndex );
    PHB_ITEM pNewVisualIndex = hb_itemPutNI( NULL, newVisualIndex );

    hb_vmEvalBlockV( cb, 4, pSender, pLogicalIndex, pOldVisualIndex, pNewVisualIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
    hb_itemRelease( pOldVisualIndex );
    hb_itemRelease( pNewVisualIndex );
  }
}

void QHeaderViewSlots::sectionPressed( int logicalIndex )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionPressed(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );

    hb_vmEvalBlockV( cb, 2, pSender, pLogicalIndex );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
  }
}

void QHeaderViewSlots::sectionResized( int logicalIndex, int oldSize, int newSize )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sectionResized(int,int,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pOldSize = hb_itemPutNI( NULL, oldSize );
    PHB_ITEM pNewSize = hb_itemPutNI( NULL, newSize );

    hb_vmEvalBlockV( cb, 4, pSender, pLogicalIndex, pOldSize, pNewSize );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
    hb_itemRelease( pOldSize );
    hb_itemRelease( pNewSize );
  }
}

void QHeaderViewSlots::sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sortIndicatorChanged(int,Qt::SortOrder)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QHEADERVIEW");
    PHB_ITEM pLogicalIndex = hb_itemPutNI( NULL, logicalIndex );
    PHB_ITEM pOrder = hb_itemPutNI( NULL, static_cast<int >( order ) );

    hb_vmEvalBlockV( cb, 3, pSender, pLogicalIndex, pOrder );

    hb_itemRelease( pSender );
    hb_itemRelease( pLogicalIndex );
    hb_itemRelease( pOrder );
  }
}

void QHeaderViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHeaderView * obj = qobject_cast<QHeaderView*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QHeaderViewSlots * s = QCoreApplication::instance()->findChild<QHeaderViewSlots*>();

    if( s == NULL )
    {
      s = new QHeaderViewSlots();
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
