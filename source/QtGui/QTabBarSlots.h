/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTABBARSLOTS_H
#define QTABBARSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTabBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QTabBarSlots: public QObject
{
  Q_OBJECT
  public:
  QTabBarSlots( QObject * parent = 0 );
  ~QTabBarSlots();
  public slots:
  void currentChanged( int index );
  void tabCloseRequested( int index );
  void tabMoved( int from, int to );
};

#endif /* QTABBARSLOTS_H */
