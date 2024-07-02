/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QHELPENGINECORESLOTS_H
#define QHELPENGINECORESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpEngineCore>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QHelpEngineCoreSlots : public QObject
{
  Q_OBJECT
public:
  QHelpEngineCoreSlots(QObject *parent = 0);
  ~QHelpEngineCoreSlots();
public slots:
  void currentFilterChanged(const QString &newFilter);
  void setupFinished();
  void setupStarted();
  void warning(const QString &msg);
};

#endif /* QHELPENGINECORESLOTS_H */
