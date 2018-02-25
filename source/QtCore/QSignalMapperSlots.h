/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSIGNALMAPPERSLOTS_H
#define QSIGNALMAPPERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSignalMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QSignalMapperSlots: public QObject
{
  Q_OBJECT
  public:
  QSignalMapperSlots(QObject *parent = 0);
  ~QSignalMapperSlots();
  public slots:
  void mapped( int i );
  void mapped( const QString & s );
  void mapped( QWidget * w );
  void mapped( QObject * o );
};

#endif /* QSIGNALMAPPERSLOTS_H */
