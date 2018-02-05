%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQGRAPHICSSCALE_H
#define SLOTSQGRAPHICSSCALE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsScale>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsScale_release_codeblocks ();

class SlotsQGraphicsScale: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsScale(QObject *parent = 0);
  ~SlotsQGraphicsScale();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void originChanged ();
  void scaleChanged ();
  void xScaleChanged ();
  void yScaleChanged ();
  void zScaleChanged ();
};

#endif
