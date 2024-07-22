//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QAUDIOINPUTSLOTS_H
#define QAUDIOINPUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioInput>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAudioInputSlots : public QObject
{
  Q_OBJECT
public:
  QAudioInputSlots(QObject *parent = 0);
  ~QAudioInputSlots();
public slots:
  void stateChanged(QAudio::State state);
  void notify();
};

#endif // QAUDIOINPUTSLOTS_H
