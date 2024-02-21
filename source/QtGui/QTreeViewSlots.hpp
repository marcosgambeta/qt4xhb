/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTREEVIEWSLOTS_H
#define QTREEVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTreeView>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QTreeViewSlots : public QObject
{
  Q_OBJECT
public:
  QTreeViewSlots(QObject *parent = 0);
  ~QTreeViewSlots();
public slots:
  void collapsed(const QModelIndex &index);
  void expanded(const QModelIndex &index);
};

#endif /* QTREEVIEWSLOTS_H */
