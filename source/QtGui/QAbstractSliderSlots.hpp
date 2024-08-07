//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTSLIDERSLOTS_H
#define QABSTRACTSLIDERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QAbstractSlider>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAbstractSliderSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractSliderSlots(QObject *parent = 0);
  ~QAbstractSliderSlots();
public slots:
  void actionTriggered(int action);
  void rangeChanged(int min, int max);
  void sliderMoved(int value);
  void sliderPressed();
  void sliderReleased();
  void valueChanged(int value);
};

#endif // QABSTRACTSLIDERSLOTS_H
