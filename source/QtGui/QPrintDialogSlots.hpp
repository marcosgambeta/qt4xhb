/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPRINTDIALOGSLOTS_H
#define QPRINTDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QPrintDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QPrintDialogSlots : public QObject
{
  Q_OBJECT
public:
  QPrintDialogSlots(QObject *parent = 0);
  ~QPrintDialogSlots();
public slots:
  void accepted(QPrinter *printer);
};

#endif /* QPRINTDIALOGSLOTS_H */
