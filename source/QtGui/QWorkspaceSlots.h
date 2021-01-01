/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QWORKSPACESLOTS_H
#define QWORKSPACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QWorkspace>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QWorkspaceSlots: public QObject
{
  Q_OBJECT
  public:
  QWorkspaceSlots( QObject * parent = 0 );
  ~QWorkspaceSlots();
  public slots:
  void windowActivated( QWidget * w );
};

#endif /* QWORKSPACESLOTS_H */
