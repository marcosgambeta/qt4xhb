/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSSCENESLOTS_H
#define QGRAPHICSSCENESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsScene>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QGraphicsSceneSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsSceneSlots( QObject * parent = 0 );
  ~QGraphicsSceneSlots();
  public slots:
  void changed( const QList<QRectF> & region );
  void sceneRectChanged( const QRectF & rect );
  void selectionChanged();
};

#endif /* QGRAPHICSSCENESLOTS_H */
