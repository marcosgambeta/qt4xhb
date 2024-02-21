/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTTEXTDOCUMENTLAYOUTSLOTS_H
#define QABSTRACTTEXTDOCUMENTLAYOUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QAbstractTextDocumentLayout>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAbstractTextDocumentLayoutSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractTextDocumentLayoutSlots(QObject *parent = 0);
  ~QAbstractTextDocumentLayoutSlots();
public slots:
  void documentSizeChanged(const QSizeF &newSize);
  void pageCountChanged(int newPages);
  void update(const QRectF &rect = QRectF(0., 0., 1000000000., 1000000000.));
  void updateBlock(const QTextBlock &block);
};

#endif /* QABSTRACTTEXTDOCUMENTLAYOUTSLOTS_H */
