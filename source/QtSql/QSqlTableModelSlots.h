/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSQLTABLEMODELSLOTS_H
#define QSQLTABLEMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtSql/QSqlTableModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QSqlTableModelSlots: public QObject
{
  Q_OBJECT
  public:
  QSqlTableModelSlots(QObject *parent = 0);
  ~QSqlTableModelSlots();
  public slots:
  void beforeDelete( int row );
  void beforeInsert( QSqlRecord & record );
  void beforeUpdate( int row, QSqlRecord & record );
  void primeInsert( int row, QSqlRecord & record );
};

#endif /* QSQLTABLEMODELSLOTS_H */
