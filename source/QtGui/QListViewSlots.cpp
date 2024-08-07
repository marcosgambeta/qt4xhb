//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QListViewSlots.hpp"

QListViewSlots::QListViewSlots(QObject *parent) : QObject(parent)
{
}

QListViewSlots::~QListViewSlots()
{
}

void QListViewSlots::indexesMoved(const QModelIndexList &indexes)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "indexesMoved(QModelIndexList)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLISTVIEW");
    PHB_DYNS pDynSym = hb_dynsymFindName("QMODELINDEX");
    PHB_ITEM pIndexes = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      const int count = indexes.count();
      for (int i = 0; i < count; i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QModelIndex(indexes[i]));
        hb_objSendMsg(pTempObject, "_POINTER", 1, pTempItem);
        hb_arrayAddForward(pIndexes, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, pSender, pIndexes);

    hb_itemRelease(pSender);
    hb_itemRelease(pIndexes);
  }
}

void QListViewSlots_connect_signal(const QString &signal, const QString &slot)
{
  QListView *obj = qobject_cast<QListView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QListViewSlots *s = QCoreApplication::instance()->findChild<QListViewSlots *>();

    if (s == NULL)
    {
      s = new QListViewSlots();
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
