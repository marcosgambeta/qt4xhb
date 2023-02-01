/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkReplySlots.hpp"

QNetworkReplySlots::QNetworkReplySlots(QObject * parent) : QObject(parent)
{
}

QNetworkReplySlots::~QNetworkReplySlots()
{
}

void QNetworkReplySlots::downloadProgress( qint64 bytesReceived, qint64 bytesTotal )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "downloadProgress(qint64,qint64)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");
    PHB_ITEM pBytesReceived = hb_itemPutNLL( NULL, bytesReceived );
    PHB_ITEM pBytesTotal = hb_itemPutNLL( NULL, bytesTotal );

    hb_vmEvalBlockV( cb, 3, pSender, pBytesReceived, pBytesTotal );

    hb_itemRelease( pSender );
    hb_itemRelease( pBytesReceived );
    hb_itemRelease( pBytesTotal );
  }
}

void QNetworkReplySlots::error( QNetworkReply::NetworkError code )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "error(QNetworkReply::NetworkError)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");
    PHB_ITEM pCode = hb_itemPutNI( NULL, static_cast<int >( code ) );

    hb_vmEvalBlockV( cb, 2, pSender, pCode );

    hb_itemRelease( pSender );
    hb_itemRelease( pCode );
  }
}

void QNetworkReplySlots::finished()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "finished()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QNetworkReplySlots::metaDataChanged()
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "metaDataChanged()");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");

    hb_vmEvalBlockV( cb, 1, pSender );

    hb_itemRelease( pSender );
  }
}

void QNetworkReplySlots::sslErrors( const QList<QSslError> & errors )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sslErrors(QList<QSslError>)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
    PHB_ITEM pErrors = hb_itemArrayNew(0);
    if( pDynSym != NULL )
    {
      for( int i = 0; i < errors.count(); i++ )
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QSslError( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
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

void QNetworkReplySlots::uploadProgress( qint64 bytesSent, qint64 bytesTotal )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "uploadProgress(qint64,qint64)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKREPLY");
    PHB_ITEM pBytesSent = hb_itemPutNLL( NULL, bytesSent );
    PHB_ITEM pBytesTotal = hb_itemPutNLL( NULL, bytesTotal );

    hb_vmEvalBlockV( cb, 3, pSender, pBytesSent, pBytesTotal );

    hb_itemRelease( pSender );
    hb_itemRelease( pBytesSent );
    hb_itemRelease( pBytesTotal );
  }
}

void QNetworkReplySlots_connect_signal( const QString & signal, const QString & slot )
{
  QNetworkReply * obj = qobject_cast<QNetworkReply*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QNetworkReplySlots * s = QCoreApplication::instance()->findChild<QNetworkReplySlots*>();

    if( s == NULL )
    {
      s = new QNetworkReplySlots();
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
