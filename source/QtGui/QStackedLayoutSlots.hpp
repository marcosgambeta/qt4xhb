//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSTACKEDLAYOUTSLOTS_H
#define QSTACKEDLAYOUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QStackedLayout>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

#include <QWidget>

class QStackedLayoutSlots : public QObject
{
  Q_OBJECT
public:
  QStackedLayoutSlots(QObject *parent = 0);
  ~QStackedLayoutSlots();
public slots:
  void setCurrentIndex(int index);
  void setCurrentWidget(QWidget *widget);
};

#endif // QSTACKEDLAYOUTSLOTS_H
