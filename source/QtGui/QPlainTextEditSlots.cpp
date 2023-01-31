/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPlainTextEditSlots.hpp"

QPlainTextEditSlots::QPlainTextEditSlots(QObject * parent) : QObject(parent)
{
}

QPlainTextEditSlots::~QPlainTextEditSlots()
{
}

void QPlainTextEditSlots::blockCountChanged( int newBlockCount )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "blockCountChanged(int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pNewBlockCount = hb_itemPutNI( NULL, newBlockCount );

    hb_vmEvalBlockV( cb, 2, pSender, pNewBlockCount );

    hb_itemRelease( pSender );
    hb_itemRelease( pNewBlockCount );
  }
}

void QPlainTextEditSlots::copyAvailable( bool yes )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "copyAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pYes = hb_itemPutL( NULL, yes );

    hb_vmEvalBlockV( cb, 2, pSender, pYes );

    hb_itemRelease( pSender );
    hb_itemRelease( pYes );
  }
}

void QPlainTextEditSlots::cursorPositionChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cursorPositionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QPlainTextEditSlots::modificationChanged( bool changed )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "modificationChanged(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pChanged = hb_itemPutL( NULL, changed );

    hb_vmEvalBlockV( cb, 2, pSender, pChanged );

    hb_itemRelease( pSender );
    hb_itemRelease( pChanged );
  }
}

void QPlainTextEditSlots::redoAvailable( bool available )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "redoAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pAvailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, pSender, pAvailable );

    hb_itemRelease( pSender );
    hb_itemRelease( pAvailable );
  }
}

void QPlainTextEditSlots::selectionChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "selectionChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QPlainTextEditSlots::textChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "textChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QPlainTextEditSlots::undoAvailable( bool available )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "undoAvailable(bool)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pAvailable = hb_itemPutL( NULL, available );

    hb_vmEvalBlockV( cb, 2, pSender, pAvailable );

    hb_itemRelease( pSender );
    hb_itemRelease( pAvailable );
  }
}

void QPlainTextEditSlots::updateRequest( const QRect & rect, int dy )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "updateRequest(QRect,int)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPLAINTEXTEDIT");
    PHB_ITEM pRect = Qt4xHb::Signals_return_object( ( void * ) &rect, "QRECT");
    PHB_ITEM pDy = hb_itemPutNI( NULL, dy );

    hb_vmEvalBlockV( cb, 3, pSender, pRect, pDy );

    hb_itemRelease( pSender );
    hb_itemRelease( pRect );
    hb_itemRelease( pDy );
  }
}

void QPlainTextEditSlots_connect_signal( const QString & signal, const QString & slot )
{
  QPlainTextEdit * obj = qobject_cast<QPlainTextEdit*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QPlainTextEditSlots * s = QCoreApplication::instance()->findChild<QPlainTextEditSlots*>();

    if( s == NULL )
    {
      s = new QPlainTextEditSlots();
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
