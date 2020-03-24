/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextDocumentSlots.h"

QTextDocumentSlots::QTextDocumentSlots(QObject *parent) : QObject(parent)
{
}

QTextDocumentSlots::~QTextDocumentSlots()
{
}
void QTextDocumentSlots::blockCountChanged( int newBlockCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pnewBlockCount = hb_itemPutNI( NULL, newBlockCount );
    hb_vmEvalBlockV( cb, 2, psender, pnewBlockCount );
    hb_itemRelease( psender );
    hb_itemRelease( pnewBlockCount );
  }
}
void QTextDocumentSlots::contentsChange( int position, int charsRemoved, int charsAdded )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChange(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );
    PHB_ITEM pcharsRemoved = hb_itemPutNI( NULL, charsRemoved );
    PHB_ITEM pcharsAdded = hb_itemPutNI( NULL, charsAdded );
    hb_vmEvalBlockV( cb, 4, psender, pposition, pcharsRemoved, pcharsAdded );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
    hb_itemRelease( pcharsRemoved );
    hb_itemRelease( pcharsAdded );
  }
}
void QTextDocumentSlots::contentsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QTextDocumentSlots::cursorPositionChanged( const QTextCursor & cursor )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged(QTextCursor)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pcursor = Signals_return_object( (void *) &cursor, "QTEXTCURSOR" );
    hb_vmEvalBlockV( cb, 2, psender, pcursor );
    hb_itemRelease( psender );
    hb_itemRelease( pcursor );
  }
}
void QTextDocumentSlots::documentLayoutChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "documentLayoutChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QTextDocumentSlots::modificationChanged( bool changed )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modificationChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pchanged = hb_itemPutL( NULL, changed );
    hb_vmEvalBlockV( cb, 2, psender, pchanged );
    hb_itemRelease( psender );
    hb_itemRelease( pchanged );
  }
}
void QTextDocumentSlots::redoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}
void QTextDocumentSlots::undoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}
void QTextDocumentSlots::undoCommandAdded()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoCommandAdded()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTDOCUMENT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QTextDocumentSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTextDocument * obj = (QTextDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QTextDocumentSlots * s = QCoreApplication::instance()->findChild<QTextDocumentSlots *>();

    if( s == NULL )
    {
      s = new QTextDocumentSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
