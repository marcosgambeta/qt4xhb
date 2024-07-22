//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QHELPSEARCHRESULTWIDGETSLOTS_H
#define QHELPSEARCHRESULTWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtHelp/QHelpSearchResultWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QHelpSearchResultWidgetSlots : public QObject
{
  Q_OBJECT
public:
  QHelpSearchResultWidgetSlots(QObject *parent = 0);
  ~QHelpSearchResultWidgetSlots();
public slots:
  void requestShowLink(const QUrl &link);
};

#endif // QHELPSEARCHRESULTWIDGETSLOTS_H
