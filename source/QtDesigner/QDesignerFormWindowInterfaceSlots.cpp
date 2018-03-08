/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDesignerFormWindowInterfaceSlots.h"

static QDesignerFormWindowInterfaceSlots * s = NULL;

QDesignerFormWindowInterfaceSlots::QDesignerFormWindowInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDesignerFormWindowInterfaceSlots::~QDesignerFormWindowInterfaceSlots()
{
}
void QDesignerFormWindowInterfaceSlots::aboutToUnmanageWidget( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToUnmanageWidget(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pwidget = Signals_return_qobject( (QObject *) widget, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}
void QDesignerFormWindowInterfaceSlots::activated( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pwidget = Signals_return_qobject( (QObject *) widget, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}
void QDesignerFormWindowInterfaceSlots::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDesignerFormWindowInterfaceSlots::featureChanged( QDesignerFormWindowInterface::Feature feature )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "featureChanged(QDesignerFormWindowInterface::Feature)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pfeature = hb_itemPutNI( NULL, (int) feature );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfeature );
    hb_itemRelease( psender );
    hb_itemRelease( pfeature );
  }
}
void QDesignerFormWindowInterfaceSlots::fileNameChanged( const QString & fileName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileNameChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pfileName = hb_itemPutC( NULL, QSTRINGTOSTRING(fileName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfileName );
    hb_itemRelease( psender );
    hb_itemRelease( pfileName );
  }
}
void QDesignerFormWindowInterfaceSlots::geometryChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "geometryChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDesignerFormWindowInterfaceSlots::mainContainerChanged( QWidget * mainContainer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mainContainerChanged(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pmainContainer = Signals_return_qobject( (QObject *) mainContainer, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmainContainer );
    hb_itemRelease( psender );
    hb_itemRelease( pmainContainer );
  }
}
void QDesignerFormWindowInterfaceSlots::objectRemoved( QObject * object2 )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "objectRemoved(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pobject2 = Signals_return_qobject( (QObject *) object2, "QOBJECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pobject2 );
    hb_itemRelease( psender );
    hb_itemRelease( pobject2 );
  }
}
void QDesignerFormWindowInterfaceSlots::resourceFilesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "resourceFilesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDesignerFormWindowInterfaceSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QDesignerFormWindowInterfaceSlots::widgetManaged( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "widgetManaged(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pwidget = Signals_return_qobject( (QObject *) widget, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}
void QDesignerFormWindowInterfaceSlots::widgetRemoved( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "widgetRemoved(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pwidget = Signals_return_qobject( (QObject *) widget, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}
void QDesignerFormWindowInterfaceSlots::widgetUnmanaged( QWidget * widget )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "widgetUnmanaged(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QDESIGNERFORMWINDOWINTERFACE" );
    PHB_ITEM pwidget = Signals_return_qobject( (QObject *) widget, "QWIDGET" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwidget );
    hb_itemRelease( psender );
    hb_itemRelease( pwidget );
  }
}

void QDesignerFormWindowInterfaceSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QDesignerFormWindowInterfaceSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
