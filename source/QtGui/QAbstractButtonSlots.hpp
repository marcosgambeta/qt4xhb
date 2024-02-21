/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTBUTTONSLOTS_H
#define QABSTRACTBUTTONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QAbstractButton>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAbstractButtonSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractButtonSlots(QObject *parent = 0);
  ~QAbstractButtonSlots();
public slots:
  void clicked(bool checked = false);
  void pressed();
  void released();
  void toggled(bool checked);
};

#endif /* QABSTRACTBUTTONSLOTS_H */
