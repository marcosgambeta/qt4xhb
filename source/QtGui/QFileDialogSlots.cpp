/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFileDialogSlots.h"

QFileDialogSlots::QFileDialogSlots(QObject *parent) : QObject(parent)
{
}

QFileDialogSlots::~QFileDialogSlots()
{
}
void QFileDialogSlots::currentChanged( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILEDIALOG" );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}
void QFileDialogSlots::directoryEntered( const QString & directory )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryEntered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILEDIALOG" );
    PHB_ITEM pdirectory = hb_itemPutC( NULL, QSTRINGTOSTRING(directory) );
    hb_vmEvalBlockV( cb, 2, psender, pdirectory );
    hb_itemRelease( psender );
    hb_itemRelease( pdirectory );
  }
}
void QFileDialogSlots::fileSelected( const QString & file )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileSelected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILEDIALOG" );
    PHB_ITEM pfile = hb_itemPutC( NULL, QSTRINGTOSTRING(file) );
    hb_vmEvalBlockV( cb, 2, psender, pfile );
    hb_itemRelease( psender );
    hb_itemRelease( pfile );
  }
}
void QFileDialogSlots::filesSelected( const QStringList & selected )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "filesSelected(QStringList)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILEDIALOG" );
    PHB_ITEM pselected = hb_itemArrayNew(0);
    for( int i = 0; i < selected.count(); i++ )
    {
      PHB_ITEM pTempItem = hb_itemPutC( NULL, QSTRINGTOSTRING(selected [i]) );
      hb_arrayAddForward( pselected, pTempItem );
      hb_itemRelease(pTempItem);
    }
    hb_vmEvalBlockV( cb, 2, psender, pselected );
    hb_itemRelease( psender );
    hb_itemRelease( pselected );
  }
}
void QFileDialogSlots::filterSelected( const QString & filter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "filterSelected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILEDIALOG" );
    PHB_ITEM pfilter = hb_itemPutC( NULL, QSTRINGTOSTRING(filter) );
    hb_vmEvalBlockV( cb, 2, psender, pfilter );
    hb_itemRelease( psender );
    hb_itemRelease( pfilter );
  }
}

void QFileDialogSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QFileDialog * obj = (QFileDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QFileDialogSlots * s = QCoreApplication::instance()->findChild<QFileDialogSlots *>();

    if( s == NULL )
    {
      s = new QFileDialogSlots();
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
