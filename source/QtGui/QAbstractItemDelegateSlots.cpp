//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QAbstractItemDelegateSlots.hpp"

QAbstractItemDelegateSlots::QAbstractItemDelegateSlots(QObject *parent) : QObject(parent)
{
}

QAbstractItemDelegateSlots::~QAbstractItemDelegateSlots()
{
}

void QAbstractItemDelegateSlots::closeEditor(QWidget *editor, QAbstractItemDelegate::EndEditHint hint)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM pEditor = Qt4xHb::Signals_return_qobject(editor, "QWIDGET");
    PHB_ITEM pHint = hb_itemPutNI(NULL, static_cast<int>(hint));

    hb_vmEvalBlockV(cb, 3, pSender, pEditor, pHint);

    hb_itemRelease(pSender);
    hb_itemRelease(pEditor);
    hb_itemRelease(pHint);
  }
}

void QAbstractItemDelegateSlots::commitData(QWidget *editor)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "commitData(QWidget*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM pEditor = Qt4xHb::Signals_return_qobject(editor, "QWIDGET");

    hb_vmEvalBlockV(cb, 2, pSender, pEditor);

    hb_itemRelease(pSender);
    hb_itemRelease(pEditor);
  }
}

void QAbstractItemDelegateSlots::sizeHintChanged(const QModelIndex &index)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "sizeHintChanged(QModelIndex)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QABSTRACTITEMDELEGATE");
    PHB_ITEM pIndex = Qt4xHb::Signals_return_object((void *)&index, "QMODELINDEX");

    hb_vmEvalBlockV(cb, 2, pSender, pIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndex);
  }
}

void QAbstractItemDelegateSlots_connect_signal(const QString &signal, const QString &slot)
{
  QAbstractItemDelegate *obj = qobject_cast<QAbstractItemDelegate *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QAbstractItemDelegateSlots *s = QCoreApplication::instance()->findChild<QAbstractItemDelegateSlots *>();

    if (s == NULL)
    {
      s = new QAbstractItemDelegateSlots();
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
