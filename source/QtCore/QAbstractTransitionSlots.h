/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTTRANSITIONSLOTS_H
#define QABSTRACTTRANSITIONSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QAbstractTransitionSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractTransitionSlots(QObject *parent = 0);
  ~QAbstractTransitionSlots();
  public slots:
  void triggered();
};

#endif /* QABSTRACTTRANSITIONSLOTS_H */
