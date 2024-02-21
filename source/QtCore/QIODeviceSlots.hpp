/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QIODEVICESLOTS_H
#define QIODEVICESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QIODevice>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QIODeviceSlots : public QObject
{
  Q_OBJECT
public:
  QIODeviceSlots(QObject *parent = 0);
  ~QIODeviceSlots();
public slots:
  void aboutToClose();
  void bytesWritten(qint64 bytes);
  void readChannelFinished();
  void readyRead();
};

#endif /* QIODEVICESLOTS_H */
