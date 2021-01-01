/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMENUSLOTS_H
#define QMENUSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QMenu>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QMenuSlots: public QObject
{
  Q_OBJECT
  public:
  QMenuSlots( QObject * parent = 0 );
  ~QMenuSlots();
  public slots:
  void aboutToHide();
  void aboutToShow();
  void hovered( QAction * action );
  void triggered( QAction * action );
};

#endif /* QMENUSLOTS_H */
