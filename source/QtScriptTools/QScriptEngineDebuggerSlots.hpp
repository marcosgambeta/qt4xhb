//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSCRIPTENGINEDEBUGGERSLOTS_H
#define QSCRIPTENGINEDEBUGGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtScriptTools/QScriptEngineDebugger>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QScriptEngineDebuggerSlots : public QObject
{
  Q_OBJECT
public:
  QScriptEngineDebuggerSlots(QObject *parent = 0);
  ~QScriptEngineDebuggerSlots();
public slots:
  void evaluationResumed();
  void evaluationSuspended();
};

#endif // QSCRIPTENGINEDEBUGGERSLOTS_H
