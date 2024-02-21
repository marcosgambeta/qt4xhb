/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QLISTWIDGETSLOTS_H
#define QLISTWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QListWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QListWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QListWidgetSlots(QObject *parent = 0);
  ~QListWidgetSlots();
public slots:
  void currentItemChanged(QListWidgetItem *current, QListWidgetItem *previous);
  void currentRowChanged(int currentRow);
  void currentTextChanged(const QString &currentText);
  void itemActivated(QListWidgetItem *item);
  void itemChanged(QListWidgetItem *item);
  void itemClicked(QListWidgetItem *item);
  void itemDoubleClicked(QListWidgetItem *item);
  void itemEntered(QListWidgetItem *item);
  void itemPressed(QListWidgetItem *item);
  void itemSelectionChanged();
};

#endif /* QLISTWIDGETSLOTS_H */
