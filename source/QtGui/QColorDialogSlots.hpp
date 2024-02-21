/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QCOLORDIALOGSLOTS_H
#define QCOLORDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QColorDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QColorDialogSlots : public QObject
{
  Q_OBJECT
public:
  QColorDialogSlots(QObject *parent = 0);
  ~QColorDialogSlots();
public slots:
  void colorSelected(const QColor &color);
  void currentColorChanged(const QColor &color);
};

#endif /* QCOLORDIALOGSLOTS_H */
