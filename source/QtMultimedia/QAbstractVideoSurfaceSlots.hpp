//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTVIDEOSURFACESLOTS_H
#define QABSTRACTVIDEOSURFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAbstractVideoSurface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAbstractVideoSurfaceSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractVideoSurfaceSlots(QObject *parent = 0);
  ~QAbstractVideoSurfaceSlots();
public slots:
  void activeChanged(bool active);
  void surfaceFormatChanged(const QVideoSurfaceFormat &format);
  void supportedFormatsChanged();
};

#endif // QABSTRACTVIDEOSURFACESLOTS_H
