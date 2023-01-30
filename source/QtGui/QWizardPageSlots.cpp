/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWizardPageSlots.h"

QWizardPageSlots::QWizardPageSlots( QObject * parent ) : QObject( parent )
{
}

QWizardPageSlots::~QWizardPageSlots()
{
}

void QWizardPageSlots::completeChanged()
{
  QObject * object = qobject_cast<QObject*>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "completeChanged()" );

  if( cb )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject( object, "QWIZARDPAGE" );

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QWizardPageSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWizardPage * obj = qobject_cast<QWizardPage*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QWizardPageSlots * s = QCoreApplication::instance()->findChild<QWizardPageSlots *>();

    if( s == NULL )
    {
      s = new QWizardPageSlots();
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
