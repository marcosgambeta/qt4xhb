//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLRELATION
REQUEST QSQLTABLEMODEL
REQUEST QVARIANT
#endif

CLASS QSqlRelationalTableModel INHERIT QSqlTableModel

   METHOD new
   METHOD delete
   METHOD relation
   METHOD relationModel
   METHOD setRelation
   METHOD clear
   METHOD data
   METHOD removeColumns
   METHOD select
   METHOD setData
   METHOD setTable
   METHOD revertRow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlRelationalTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtSql/QSqlRelationalTableModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    // QSqlRelationalTableModel(QObject *parent = 0, QSqlDatabase db = QSqlDatabase())
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQOBJECT(1) || HB_ISNIL(1)) && (ISQSQLDATABASE(2) || HB_ISNIL(2)))
  {
    QSqlRelationalTableModel *obj = new QSqlRelationalTableModel(
        OPQOBJECT(1, 0), HB_ISNIL(2) ? QSqlDatabase() : *static_cast<QSqlDatabase *>(Qt4xHb::itemGetPtr(2)));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_DELETE)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

// QSqlRelation relation(int column) const
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_RELATION)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QSqlRelation *ptr = new QSqlRelation(obj->relation(PINT(1)));
      Qt4xHb::createReturnClass(ptr, "QSQLRELATION", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QSqlTableModel *relationModel(int column) const
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_RELATIONMODEL)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QSqlTableModel *ptr = obj->relationModel(PINT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QSQLTABLEMODEL");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void setRelation(int column, const QSqlRelation &relation)
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_SETRELATION)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSQLRELATION(2))
    {
#endif
      obj->setRelation(PINT(1), *PQSQLRELATION(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// virtual void clear()
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_CLEAR)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_DATA)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQMODELINDEX(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      QVariant *ptr = new QVariant(obj->data(*PQMODELINDEX(1), OPINT(2, Qt::DisplayRole)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool removeColumns(int column, int count, const QModelIndex &parent = QModelIndex())
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_REMOVECOLUMNS)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeColumns(PINT(1), PINT(2),
                               HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex *>(Qt4xHb::itemGetPtr(3))));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool select()
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_SELECT)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->select());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool setData(const QModelIndex &index, const QVariant &value, int role = Qt::EditRole)
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_SETDATA)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && ISQMODELINDEX(1) && ISQVARIANT(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->setData(*PQMODELINDEX(1), *PQVARIANT(2), OPINT(3, Qt::EditRole)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void setTable(const QString &table)
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_SETTABLE)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setTable(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// virtual void revertRow(int row)
HB_FUNC_STATIC(QSQLRELATIONALTABLEMODEL_REVERTROW)
{
  QSqlRelationalTableModel *obj = qobject_cast<QSqlRelationalTableModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->revertRow(PINT(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
