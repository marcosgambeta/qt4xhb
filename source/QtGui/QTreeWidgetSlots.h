/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTREEWIDGETSLOTS_H
#define QTREEWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTreeWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QTreeWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QTreeWidgetSlots( QObject * parent = 0 );
  ~QTreeWidgetSlots();
  public slots:
  void currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous );
  void itemActivated( QTreeWidgetItem * item, int column );
  void itemChanged( QTreeWidgetItem * item, int column );
  void itemClicked( QTreeWidgetItem * item, int column );
  void itemCollapsed( QTreeWidgetItem * item );
  void itemDoubleClicked( QTreeWidgetItem * item, int column );
  void itemEntered( QTreeWidgetItem * item, int column );
  void itemExpanded( QTreeWidgetItem * item );
  void itemPressed( QTreeWidgetItem * item, int column );
  void itemSelectionChanged();
};

#endif /* QTREEWIDGETSLOTS_H */
