/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMENUBARSLOTS_H
#define QMENUBARSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMenuBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QMenuBarSlots: public QObject
{
  Q_OBJECT
  public:
  QMenuBarSlots(QObject *parent = 0);
  ~QMenuBarSlots();
  public slots:
  void hovered( QAction * action );
  void triggered( QAction * action );
};

#endif /* QMENUBARSLOTS_H */
