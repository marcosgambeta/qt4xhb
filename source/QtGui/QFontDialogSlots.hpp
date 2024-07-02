/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QFONTDIALOGSLOTS_H
#define QFONTDIALOGSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QFontDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QFontDialogSlots : public QObject
{
  Q_OBJECT
public:
  QFontDialogSlots(QObject *parent = 0);
  ~QFontDialogSlots();
public slots:
  void currentFontChanged(const QFont &font);
  void fontSelected(const QFont &font);
};

#endif /* QFONTDIALOGSLOTS_H */
