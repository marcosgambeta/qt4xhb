/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkAccessManagerSlots.h"

QNetworkAccessManagerSlots::QNetworkAccessManagerSlots(QObject * parent) : QObject(parent)
{
}

QNetworkAccessManagerSlots::~QNetworkAccessManagerSlots()
{
}

void QNetworkAccessManagerSlots::authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "authenticationRequired(QNetworkReply*,QAuthenticator*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pReply = Qt4xHb::Signals_return_qobject( reply, "QNETWORKREPLY");
    PHB_ITEM pAuthenticator = Qt4xHb::Signals_return_object( ( void * ) authenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV( cb, 3, pSender, pReply, pAuthenticator );

    hb_itemRelease( pSender );
    hb_itemRelease( pReply );
    hb_itemRelease( pAuthenticator );
  }
}

void QNetworkAccessManagerSlots::finished( QNetworkReply * reply )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "finished(QNetworkReply*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pReply = Qt4xHb::Signals_return_qobject( reply, "QNETWORKREPLY");

    hb_vmEvalBlockV( cb, 2, pSender, pReply );

    hb_itemRelease( pSender );
    hb_itemRelease( pReply );
  }
}

void QNetworkAccessManagerSlots::networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pAccessible = hb_itemPutNI( NULL, static_cast<int >( accessible ) );

    hb_vmEvalBlockV( cb, 2, pSender, pAccessible );

    hb_itemRelease( pSender );
    hb_itemRelease( pAccessible );
  }
}

void QNetworkAccessManagerSlots::proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pProxy = Qt4xHb::Signals_return_object( ( void * ) &proxy, "QNETWORKPROXY");
    PHB_ITEM pAuthenticator = Qt4xHb::Signals_return_object( ( void * ) authenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV( cb, 3, pSender, pProxy, pAuthenticator );

    hb_itemRelease( pSender );
    hb_itemRelease( pProxy );
    hb_itemRelease( pAuthenticator );
  }
}

void QNetworkAccessManagerSlots::sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
{
  QObject * object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sslErrors(QNetworkReply*,QList<QSslError>)");

  if( cb != NULL )
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QNETWORKACCESSMANAGER");
    PHB_ITEM pReply = Qt4xHb::Signals_return_qobject( reply, "QNETWORKREPLY");
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR");
    PHB_ITEM pErrors = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < errors.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, static_cast<QSslError*>( new QSslError( errors [i] ) ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pErrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 3, pSender, pReply, pErrors );

    hb_itemRelease( pSender );
    hb_itemRelease( pReply );
    hb_itemRelease( pErrors );
  }
}

void QNetworkAccessManagerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QNetworkAccessManager * obj = qobject_cast<QNetworkAccessManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    QNetworkAccessManagerSlots * s = QCoreApplication::instance()->findChild<QNetworkAccessManagerSlots*>();

    if( s == NULL )
    {
      s = new QNetworkAccessManagerSlots();
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
