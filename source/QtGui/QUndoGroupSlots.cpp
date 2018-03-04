/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QUndoGroupSlots.h"

static QUndoGroupSlots * s = NULL;

QUndoGroupSlots::QUndoGroupSlots(QObject *parent) : QObject(parent)
{
}

QUndoGroupSlots::~QUndoGroupSlots()
{
}
void QUndoGroupSlots::activeStackChanged( QUndoStack * stack )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeStackChanged(QUndoStack*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pstack = Signals_return_qobject( stack, "QUNDOSTACK" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstack );
    hb_itemRelease( psender );
    hb_itemRelease( pstack );
  }
}
void QUndoGroupSlots::canRedoChanged( bool canRedo )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canRedoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pcanRedo = hb_itemPutL( NULL, canRedo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanRedo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanRedo );
  }
}
void QUndoGroupSlots::canUndoChanged( bool canUndo )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "canUndoChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pcanUndo = hb_itemPutL( NULL, canUndo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcanUndo );
    hb_itemRelease( psender );
    hb_itemRelease( pcanUndo );
  }
}
void QUndoGroupSlots::cleanChanged( bool clean )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cleanChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pclean = hb_itemPutL( NULL, clean );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pclean );
    hb_itemRelease( psender );
    hb_itemRelease( pclean );
  }
}
void QUndoGroupSlots::indexChanged( int idx )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pidx = hb_itemPutNI( NULL, idx );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pidx );
    hb_itemRelease( psender );
    hb_itemRelease( pidx );
  }
}
void QUndoGroupSlots::redoTextChanged( const QString & redoText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM predoText = hb_itemPutC( NULL, QSTRINGTOSTRING(redoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, predoText );
    hb_itemRelease( psender );
    hb_itemRelease( predoText );
  }
}
void QUndoGroupSlots::undoTextChanged( const QString & undoText )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoTextChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QUNDOGROUP" );
    PHB_ITEM pundoText = hb_itemPutC( NULL, QSTRINGTOSTRING(undoText) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pundoText );
    hb_itemRelease( psender );
    hb_itemRelease( pundoText );
  }
}

void QUndoGroupSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QUndoGroupSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
