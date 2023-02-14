/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSslSocketSlots.hpp"

QSslSocketSlots::QSslSocketSlots(QObject * parent) : QObject(parent)
{
}

QSslSocketSlots::~QSslSocketSlots()
{
}

void QSslSocketSlots::encrypted()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "encrypted()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSSLSOCKET");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QSslSocketSlots::encryptedBytesWritten( qint64 written )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "encryptedBytesWritten(qint64)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pWritten = hb_itemPutNLL( NULL, written );

    hb_vmEvalBlockV( cb, 2, pSender, pWritten );

    hb_itemRelease( pSender );
    hb_itemRelease( pWritten );
  }
}

void QSslSocketSlots::modeChanged( QSslSocket::SslMode mode )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "modeChanged(QSslSocket::SslMode)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pMode = hb_itemPutNI( NULL, static_cast<int >( mode ) );

    hb_vmEvalBlockV( cb, 2, pSender, pMode );

    hb_itemRelease( pSender );
    hb_itemRelease( pMode );
  }
}

void QSslSocketSlots::peerVerifyError( const QSslError & error )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "peerVerifyError(QSslError)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_ITEM pError = Qt4xHb::Signals_return_object( ( void * ) &error, "QSSLERROR");

    hb_vmEvalBlockV( cb, 2, pSender, pError );

    hb_itemRelease( pSender );
    hb_itemRelease( pError );
  }
}

void QSslSocketSlots::sslErrors( const QList<QSslError> & errors )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sslErrors(QList<QSslError>)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSSLSOCKET");
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
    PHB_ITEM pErrors = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      const int count = errors.count();
      for( int i = 0; i < count; i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QSslError( errors [i] ) );
        hb_objSendMsg( pTempObject, "_POINTER", 1, pTempItem );
        hb_arrayAddForward( pErrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV( cb, 2, pSender, pErrors );

    hb_itemRelease( pSender );
    hb_itemRelease( pErrors );
  }
}

void QSslSocketSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSslSocket * obj = qobject_cast<QSslSocket*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QSslSocketSlots * s = QCoreApplication::instance()->findChild<QSslSocketSlots*>();

    if( s == NULL )
    {
      s = new QSslSocketSlots();
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
