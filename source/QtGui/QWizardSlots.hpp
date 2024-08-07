//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QWIZARDSLOTS_H
#define QWIZARDSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QWizard>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QWizardSlots : public QObject
{
  Q_OBJECT
public:
  QWizardSlots(QObject *parent = 0);
  ~QWizardSlots();
public slots:
  void currentIdChanged(int id);
  void customButtonClicked(int which);
  void helpRequested();
  void pageAdded(int id);
  void pageRemoved(int id);
};

#endif // QWIZARDSLOTS_H
