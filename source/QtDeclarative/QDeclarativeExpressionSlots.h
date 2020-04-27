/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEEXPRESSIONSLOTS_H
#define QDECLARATIVEEXPRESSIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativeExpression>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QDeclarativeExpressionSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativeExpressionSlots( QObject *parent = 0 );
  ~QDeclarativeExpressionSlots();
  public slots:
  void valueChanged();
};

#endif /* QDECLARATIVEEXPRESSIONSLOTS_H */
