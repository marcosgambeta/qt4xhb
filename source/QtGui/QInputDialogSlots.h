/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QINPUTDIALOGSLOTS_H
#define QINPUTDIALOGSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QInputDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QInputDialogSlots: public QObject
{
  Q_OBJECT
  public:
  QInputDialogSlots(QObject *parent = 0);
  ~QInputDialogSlots();
  public slots:
  void doubleValueChanged( double value );
  void doubleValueSelected( double value );
  void intValueChanged( int value );
  void intValueSelected( int value );
  void textValueChanged( const QString & text );
  void textValueSelected( const QString & text );
};

#endif /* QINPUTDIALOGSLOTS_H */
