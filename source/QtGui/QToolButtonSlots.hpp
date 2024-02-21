/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTOOLBUTTONSLOTS_H
#define QTOOLBUTTONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QToolButton>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

#include <QAction>

class QToolButtonSlots : public QObject
{
  Q_OBJECT
public:
  QToolButtonSlots(QObject *parent = 0);
  ~QToolButtonSlots();
public slots:
  void triggered(QAction *action);
};

#endif /* QTOOLBUTTONSLOTS_H */
