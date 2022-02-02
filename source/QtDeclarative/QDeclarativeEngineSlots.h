/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEENGINESLOTS_H
#define QDECLARATIVEENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativeEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QDeclarativeEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativeEngineSlots( QObject * parent = 0 );
  ~QDeclarativeEngineSlots();
  public slots:
  void quit();
  void warnings( const QList<QDeclarativeError> & warnings );
};

#endif /* QDECLARATIVEENGINESLOTS_H */
