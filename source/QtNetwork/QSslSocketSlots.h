/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSSLSOCKETSLOTS_H
#define QSSLSOCKETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QSslSocket>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSslSocketSlots: public QObject
{
  Q_OBJECT
  public:
  QSslSocketSlots( QObject * parent = 0 );
  ~QSslSocketSlots();
  public slots:
  void encrypted();
  void encryptedBytesWritten( qint64 written );
  void modeChanged( QSslSocket::SslMode mode );
  void peerVerifyError( const QSslError & error );
  void sslErrors( const QList<QSslError> & errors );
};

#endif /* QSSLSOCKETSLOTS_H */
