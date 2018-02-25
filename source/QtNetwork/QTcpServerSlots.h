/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTCPSERVERSLOTS_H
#define QTCPSERVERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTcpServer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QTcpServerSlots: public QObject
{
  Q_OBJECT
  public:
  QTcpServerSlots(QObject *parent = 0);
  ~QTcpServerSlots();
  public slots:
  void newConnection();
};

#endif /* QTCPSERVERSLOTS_H */
