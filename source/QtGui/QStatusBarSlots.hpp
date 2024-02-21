/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTATUSBARSLOTS_H
#define QSTATUSBARSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QStatusBar>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QStatusBarSlots : public QObject
{
  Q_OBJECT
public:
  QStatusBarSlots(QObject *parent = 0);
  ~QStatusBarSlots();
public slots:
  void messageChanged(const QString &message);
};

#endif /* QSTATUSBARSLOTS_H */
