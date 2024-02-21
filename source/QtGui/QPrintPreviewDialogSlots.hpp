/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPRINTPREVIEWDIALOGSLOTS_H
#define QPRINTPREVIEWDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QPrintPreviewDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QPrintPreviewDialogSlots : public QObject
{
  Q_OBJECT
public:
  QPrintPreviewDialogSlots(QObject *parent = 0);
  ~QPrintPreviewDialogSlots();
public slots:
  void paintRequested(QPrinter *printer);
};

#endif /* QPRINTPREVIEWDIALOGSLOTS_H */
