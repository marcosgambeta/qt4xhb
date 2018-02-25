/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMDIAREASLOTS_H
#define QMDIAREASLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMdiArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QMdiAreaSlots: public QObject
{
  Q_OBJECT
  public:
  QMdiAreaSlots(QObject *parent = 0);
  ~QMdiAreaSlots();
  public slots:
  void subWindowActivated( QMdiSubWindow * window );
};

#endif /* QMDIAREASLOTS_H */
