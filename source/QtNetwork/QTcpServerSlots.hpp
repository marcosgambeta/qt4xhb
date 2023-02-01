/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTCPSERVERSLOTS_H
#define QTCPSERVERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QTcpServer>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QTcpServerSlots: public QObject
{
  Q_OBJECT
  public:
  QTcpServerSlots(QObject * parent = 0);
  ~QTcpServerSlots();
  public slots:
  void newConnection();
};

#endif /* QTCPSERVERSLOTS_H */