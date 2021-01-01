/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFILESYSTEMMODELSLOTS_H
#define QFILESYSTEMMODELSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QFileSystemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QFileSystemModelSlots: public QObject
{
  Q_OBJECT
  public:
  QFileSystemModelSlots( QObject * parent = 0 );
  ~QFileSystemModelSlots();
  public slots:
  void directoryLoaded( const QString & path );
  void fileRenamed( const QString & path, const QString & oldName, const QString & newName );
  void rootPathChanged( const QString & newPath );
};

#endif /* QFILESYSTEMMODELSLOTS_H */
