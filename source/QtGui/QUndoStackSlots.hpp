/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QUNDOSTACKSLOTS_H
#define QUNDOSTACKSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QUndoStack>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QUndoStackSlots: public QObject
{
  Q_OBJECT
  public:
  QUndoStackSlots(QObject * parent = 0);
  ~QUndoStackSlots();
  public slots:
  void canRedoChanged( bool canRedo );
  void canUndoChanged( bool canUndo );
  void cleanChanged( bool clean );
  void indexChanged( int idx );
  void redoTextChanged( const QString & redoText );
  void undoTextChanged( const QString & undoText );
};

#endif /* QUNDOSTACKSLOTS_H */