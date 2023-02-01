/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVEPROPERTYMAPSLOTS_H
#define QDECLARATIVEPROPERTYMAPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativePropertyMap>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QDeclarativePropertyMapSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativePropertyMapSlots(QObject * parent = 0);
  ~QDeclarativePropertyMapSlots();
  public slots:
  void valueChanged( const QString & key, const QVariant & value );
};

#endif /* QDECLARATIVEPROPERTYMAPSLOTS_H */