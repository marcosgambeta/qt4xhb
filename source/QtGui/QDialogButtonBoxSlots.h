/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDIALOGBUTTONBOXSLOTS_H
#define QDIALOGBUTTONBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDialogButtonBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

#include <QAbstractButton>

class QDialogButtonBoxSlots: public QObject
{
  Q_OBJECT
  public:
  QDialogButtonBoxSlots( QObject * parent = 0 );
  ~QDialogButtonBoxSlots();
  public slots:
  void accepted();
  void clicked( QAbstractButton * button );
  void helpRequested();
  void rejected();
};

#endif /* QDIALOGBUTTONBOXSLOTS_H */
