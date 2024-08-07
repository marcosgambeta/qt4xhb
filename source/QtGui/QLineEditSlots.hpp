//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QLINEEDITSLOTS_H
#define QLINEEDITSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QLineEdit>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QLineEditSlots : public QObject
{
  Q_OBJECT
public:
  QLineEditSlots(QObject *parent = 0);
  ~QLineEditSlots();
public slots:
  void cursorPositionChanged(int iold, int inew);
  void editingFinished();
  void returnPressed();
  void selectionChanged();
  void textChanged(const QString &text);
  void textEdited(const QString &text);
};

#endif // QLINEEDITSLOTS_H
