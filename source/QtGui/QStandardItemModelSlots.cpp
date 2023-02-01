/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStandardItemModelSlots.hpp"

QStandardItemModelSlots::QStandardItemModelSlots(QObject * parent) : QObject(parent)
{
}

QStandardItemModelSlots::~QStandardItemModelSlots()
{
}

void QStandardItemModelSlots::itemChanged( QStandardItem * item )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "itemChanged(QStandardItem*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSTANDARDITEMMODEL");
    PHB_ITEM pItem = Qt4xHb::Signals_return_object( ( void * ) item, "QSTANDARDITEM");

    hb_vmEvalBlockV( cb, 2, pSender, pItem );

    hb_itemRelease( pSender );
    hb_itemRelease(pItem);
  }
}

void QStandardItemModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QStandardItemModel * obj = qobject_cast<QStandardItemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QStandardItemModelSlots * s = QCoreApplication::instance()->findChild<QStandardItemModelSlots*>();

    if( s == NULL )
    {
      s = new QStandardItemModelSlots();
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
