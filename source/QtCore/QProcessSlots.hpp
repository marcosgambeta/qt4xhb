/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPROCESSSLOTS_H
#define QPROCESSSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QProcess>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QProcessSlots : public QObject
{
  Q_OBJECT
public:
  QProcessSlots(QObject *parent = 0);
  ~QProcessSlots();
public slots:
  void error(QProcess::ProcessError error);
  void finished(int exitCode, QProcess::ExitStatus exitStatus);
  void readyReadStandardError();
  void readyReadStandardOutput();
  void started();
  void stateChanged(QProcess::ProcessState newState);
};

#endif /* QPROCESSSLOTS_H */
