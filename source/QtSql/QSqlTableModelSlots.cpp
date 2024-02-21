/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSqlTableModelSlots.hpp"

QSqlTableModelSlots::QSqlTableModelSlots(QObject *parent) : QObject(parent)
{
}

QSqlTableModelSlots::~QSqlTableModelSlots()
{
}

void QSqlTableModelSlots::beforeDelete(int row)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "beforeDelete(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM pRow = hb_itemPutNI(NULL, row);

    hb_vmEvalBlockV(cb, 2, pSender, pRow);

    hb_itemRelease(pSender);
    hb_itemRelease(pRow);
  }
}

void QSqlTableModelSlots::beforeInsert(QSqlRecord &record)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "beforeInsert(QSqlRecord)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM pRecord = Qt4xHb::Signals_return_object((void *)&record, "QSQLRECORD");

    hb_vmEvalBlockV(cb, 2, pSender, pRecord);

    hb_itemRelease(pSender);
    hb_itemRelease(pRecord);
  }
}

void QSqlTableModelSlots::beforeUpdate(int row, QSqlRecord &record)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "beforeUpdate(int,QSqlRecord)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM pRow = hb_itemPutNI(NULL, row);
    PHB_ITEM pRecord = Qt4xHb::Signals_return_object((void *)&record, "QSQLRECORD");

    hb_vmEvalBlockV(cb, 3, pSender, pRow, pRecord);

    hb_itemRelease(pSender);
    hb_itemRelease(pRow);
    hb_itemRelease(pRecord);
  }
}

void QSqlTableModelSlots::primeInsert(int row, QSqlRecord &record)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "primeInsert(int,QSqlRecord)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QSQLTABLEMODEL");
    PHB_ITEM pRow = hb_itemPutNI(NULL, row);
    PHB_ITEM pRecord = Qt4xHb::Signals_return_object((void *)&record, "QSQLRECORD");

    hb_vmEvalBlockV(cb, 3, pSender, pRow, pRecord);

    hb_itemRelease(pSender);
    hb_itemRelease(pRow);
    hb_itemRelease(pRecord);
  }
}

void QSqlTableModelSlots_connect_signal(const QString &signal, const QString &slot)
{
  QSqlTableModel *obj = qobject_cast<QSqlTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QSqlTableModelSlots *s = QCoreApplication::instance()->findChild<QSqlTableModelSlots *>();

    if (s == NULL)
    {
      s = new QSqlTableModelSlots();
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
