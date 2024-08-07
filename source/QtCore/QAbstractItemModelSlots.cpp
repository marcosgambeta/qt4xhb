//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QAbstractItemModelSlots.hpp"

QAbstractItemModelSlots::QAbstractItemModelSlots(QObject *parent) : QObject(parent)
{
}

QAbstractItemModelSlots::~QAbstractItemModelSlots()
{
}

void QAbstractItemModelSlots::columnsAboutToBeInserted(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsAboutToBeInserted(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::columnsAboutToBeMoved(const QModelIndex &sourceParent, int sourceStart, int sourceEnd,
                                                    const QModelIndex &destinationParent, int destinationColumn)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pSourceParent = Qt4xHb::Signals_return_object((void *)&sourceParent, "QMODELINDEX");
    PHB_ITEM pSourceStart = hb_itemPutNI(NULL, sourceStart);
    PHB_ITEM pSourceEnd = hb_itemPutNI(NULL, sourceEnd);
    PHB_ITEM pDestinationParent = Qt4xHb::Signals_return_object((void *)&destinationParent, "QMODELINDEX");
    PHB_ITEM pDestinationColumn = hb_itemPutNI(NULL, destinationColumn);

    hb_vmEvalBlockV(cb, 6, pSender, pSourceParent, pSourceStart, pSourceEnd, pDestinationParent, pDestinationColumn);

    hb_itemRelease(pSender);
    hb_itemRelease(pSourceParent);
    hb_itemRelease(pSourceStart);
    hb_itemRelease(pSourceEnd);
    hb_itemRelease(pDestinationParent);
    hb_itemRelease(pDestinationColumn);
  }
}

void QAbstractItemModelSlots::columnsAboutToBeRemoved(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsAboutToBeRemoved(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::columnsInserted(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsInserted(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::columnsMoved(const QModelIndex &sourceParent, int sourceStart, int sourceEnd,
                                           const QModelIndex &destinationParent, int destinationColumn)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsMoved(QModelIndex,int,int,QModelIndex,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pSourceParent = Qt4xHb::Signals_return_object((void *)&sourceParent, "QMODELINDEX");
    PHB_ITEM pSourceStart = hb_itemPutNI(NULL, sourceStart);
    PHB_ITEM pSourceEnd = hb_itemPutNI(NULL, sourceEnd);
    PHB_ITEM pDestinationParent = Qt4xHb::Signals_return_object((void *)&destinationParent, "QMODELINDEX");
    PHB_ITEM pDestinationColumn = hb_itemPutNI(NULL, destinationColumn);

    hb_vmEvalBlockV(cb, 6, pSender, pSourceParent, pSourceStart, pSourceEnd, pDestinationParent, pDestinationColumn);

    hb_itemRelease(pSender);
    hb_itemRelease(pSourceParent);
    hb_itemRelease(pSourceStart);
    hb_itemRelease(pSourceEnd);
    hb_itemRelease(pDestinationParent);
    hb_itemRelease(pDestinationColumn);
  }
}

void QAbstractItemModelSlots::columnsRemoved(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "columnsRemoved(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::dataChanged(const QModelIndex &topLeft, const QModelIndex &bottomRight)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "dataChanged(QModelIndex,QModelIndex)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pTopLeft = Qt4xHb::Signals_return_object((void *)&topLeft, "QMODELINDEX");
    PHB_ITEM pBottomRight = Qt4xHb::Signals_return_object((void *)&bottomRight, "QMODELINDEX");

    hb_vmEvalBlockV(cb, 3, pSender, pTopLeft, pBottomRight);

    hb_itemRelease(pSender);
    hb_itemRelease(pTopLeft);
    hb_itemRelease(pBottomRight);
  }
}

void QAbstractItemModelSlots::headerDataChanged(Qt::Orientation orientation, int first, int last)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "headerDataChanged(Qt::Orientation,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pOrientation = hb_itemPutNI(NULL, static_cast<int>(orientation));
    PHB_ITEM pFirst = hb_itemPutNI(NULL, first);
    PHB_ITEM pLast = hb_itemPutNI(NULL, last);

    hb_vmEvalBlockV(cb, 4, pSender, pOrientation, pFirst, pLast);

    hb_itemRelease(pSender);
    hb_itemRelease(pOrientation);
    hb_itemRelease(pFirst);
    hb_itemRelease(pLast);
  }
}

void QAbstractItemModelSlots::layoutAboutToBeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "layoutAboutToBeChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QAbstractItemModelSlots::layoutChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "layoutChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QAbstractItemModelSlots::modelAboutToBeReset()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "modelAboutToBeReset()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QAbstractItemModelSlots::modelReset()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "modelReset()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QAbstractItemModelSlots::rowsAboutToBeInserted(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsAboutToBeInserted(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::rowsAboutToBeMoved(const QModelIndex &sourceParent, int sourceStart, int sourceEnd,
                                                 const QModelIndex &destinationParent, int destinationRow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pSourceParent = Qt4xHb::Signals_return_object((void *)&sourceParent, "QMODELINDEX");
    PHB_ITEM pSourceStart = hb_itemPutNI(NULL, sourceStart);
    PHB_ITEM pSourceEnd = hb_itemPutNI(NULL, sourceEnd);
    PHB_ITEM pDestinationParent = Qt4xHb::Signals_return_object((void *)&destinationParent, "QMODELINDEX");
    PHB_ITEM pDestinationRow = hb_itemPutNI(NULL, destinationRow);

    hb_vmEvalBlockV(cb, 6, pSender, pSourceParent, pSourceStart, pSourceEnd, pDestinationParent, pDestinationRow);

    hb_itemRelease(pSender);
    hb_itemRelease(pSourceParent);
    hb_itemRelease(pSourceStart);
    hb_itemRelease(pSourceEnd);
    hb_itemRelease(pDestinationParent);
    hb_itemRelease(pDestinationRow);
  }
}

void QAbstractItemModelSlots::rowsAboutToBeRemoved(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsAboutToBeRemoved(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::rowsInserted(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsInserted(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots::rowsMoved(const QModelIndex &sourceParent, int sourceStart, int sourceEnd,
                                        const QModelIndex &destinationParent, int destinationRow)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsMoved(QModelIndex,int,int,QModelIndex,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pSourceParent = Qt4xHb::Signals_return_object((void *)&sourceParent, "QMODELINDEX");
    PHB_ITEM pSourceStart = hb_itemPutNI(NULL, sourceStart);
    PHB_ITEM pSourceEnd = hb_itemPutNI(NULL, sourceEnd);
    PHB_ITEM pDestinationParent = Qt4xHb::Signals_return_object((void *)&destinationParent, "QMODELINDEX");
    PHB_ITEM pDestinationRow = hb_itemPutNI(NULL, destinationRow);

    hb_vmEvalBlockV(cb, 6, pSender, pSourceParent, pSourceStart, pSourceEnd, pDestinationParent, pDestinationRow);

    hb_itemRelease(pSender);
    hb_itemRelease(pSourceParent);
    hb_itemRelease(pSourceStart);
    hb_itemRelease(pSourceEnd);
    hb_itemRelease(pDestinationParent);
    hb_itemRelease(pDestinationRow);
  }
}

void QAbstractItemModelSlots::rowsRemoved(const QModelIndex &parent, int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rowsRemoved(QModelIndex,int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMMODEL");
    PHB_ITEM pParent = Qt4xHb::Signals_return_object((void *)&parent, "QMODELINDEX");
    PHB_ITEM pStart = hb_itemPutNI(NULL, start);
    PHB_ITEM pEnd = hb_itemPutNI(NULL, end);

    hb_vmEvalBlockV(cb, 4, pSender, pParent, pStart, pEnd);

    hb_itemRelease(pSender);
    hb_itemRelease(pParent);
    hb_itemRelease(pStart);
    hb_itemRelease(pEnd);
  }
}

void QAbstractItemModelSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAbstractItemModel *obj = qobject_cast<QAbstractItemModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QAbstractItemModelSlots *s = QCoreApplication::instance()->findChild<QAbstractItemModelSlots *>();

    if (s == NULL)
    {
      s = new QAbstractItemModelSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
