//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QDATETIMEEDITSLOTS_H
#define QDATETIMEEDITSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QDateTimeEdit>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDateTimeEditSlots : public QObject
{
  Q_OBJECT
public:
  QDateTimeEditSlots(QObject *parent = 0);
  ~QDateTimeEditSlots();
public slots:
  void dateChanged(const QDate &date);
  void dateTimeChanged(const QDateTime &datetime);
  void timeChanged(const QTime &time);
};

#endif // QDATETIMEEDITSLOTS_H
