/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMAINWINDOWSLOTS_H
#define QMAINWINDOWSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMainWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QMainWindowSlots: public QObject
{
  Q_OBJECT
  public:
  QMainWindowSlots(QObject *parent = 0);
  ~QMainWindowSlots();
  public slots:
  void iconSizeChanged( const QSize & iconSize );
  void toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle );
};

#endif /* QMAINWINDOWSLOTS_H */
