%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQTOOLBUTTON_H
#define SLOTSQTOOLBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QToolButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QToolButton_release_codeblocks ();

class SlotsQToolButton: public QObject
{
  Q_OBJECT

  public:
  SlotsQToolButton(QObject *parent = 0);
  ~SlotsQToolButton();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void triggered ( QAction * action );
};

#endif
