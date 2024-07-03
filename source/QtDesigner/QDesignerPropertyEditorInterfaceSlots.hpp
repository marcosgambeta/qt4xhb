//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QDESIGNERPROPERTYEDITORINTERFACESLOTS_H
#define QDESIGNERPROPERTYEDITORINTERFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDesigner/QDesignerPropertyEditorInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDesignerPropertyEditorInterfaceSlots : public QObject
{
  Q_OBJECT
public:
  QDesignerPropertyEditorInterfaceSlots(QObject *parent = 0);
  ~QDesignerPropertyEditorInterfaceSlots();
public slots:
  void propertyChanged(const QString &name, const QVariant &value);
};

#endif /* QDESIGNERPROPERTYEDITORINTERFACESLOTS_H */
