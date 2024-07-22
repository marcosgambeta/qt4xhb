//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QLOCALSOCKETSLOTS_H
#define QLOCALSOCKETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QLocalSocket>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QLocalSocketSlots : public QObject
{
  Q_OBJECT
public:
  QLocalSocketSlots(QObject *parent = 0);
  ~QLocalSocketSlots();
public slots:
  void connected();
  void disconnected();
  void error(QLocalSocket::LocalSocketError socketError);
  void stateChanged(QLocalSocket::LocalSocketState socketState);
};

#endif // QLOCALSOCKETSLOTS_H
