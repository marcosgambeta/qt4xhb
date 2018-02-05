%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQMDIAREA_H
#define SLOTSQMDIAREA_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMdiArea>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMdiArea_release_codeblocks ();

class SlotsQMdiArea: public QObject
{
  Q_OBJECT

  public:
  SlotsQMdiArea(QObject *parent = 0);
  ~SlotsQMdiArea();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void subWindowActivated ( QMdiSubWindow * window );
};

#endif
