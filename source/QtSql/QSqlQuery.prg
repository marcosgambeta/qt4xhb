//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLRECORD
REQUEST QSQLRESULT
REQUEST QVARIANT
#endif

CLASS QSqlQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addBindValue
   METHOD at
   METHOD bindValue
   METHOD boundValue
   METHOD clear
   METHOD driver
   METHOD exec
   METHOD execBatch
   METHOD executedQuery
   METHOD finish
   METHOD first
   METHOD isActive
   METHOD isForwardOnly
   METHOD isNull
   METHOD isSelect
   METHOD isValid
   METHOD last
   METHOD lastError
   METHOD lastInsertId
   METHOD lastQuery
   METHOD next
   METHOD nextResult
   METHOD numRowsAffected
   METHOD numericalPrecisionPolicy
   METHOD prepare
   METHOD previous
   METHOD record
   METHOD result
   METHOD seek
   METHOD setForwardOnly
   METHOD setNumericalPrecisionPolicy
   METHOD size
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtSql/QSqlQuery>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QVariant>
#include <QtSql/QSqlError>
#include <QtSql/QSqlRecord>
#include <QtSql/QSqlDriver>

HB_FUNC_STATIC(QSQLQUERY_NEW)
{
  if (ISNUMPAR(1) && ISQSQLRESULT(1))
  {
    // QSqlQuery(QSqlResult *result)
    QSqlQuery *obj = new QSqlQuery(PQSQLRESULT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(0, 2) && (HB_ISCHAR(1) || HB_ISNIL(1)) && (ISQSQLDATABASE(2) || HB_ISNIL(2)))
  {
    // QSqlQuery(const QString &query = QString(), QSqlDatabase db = QSqlDatabase())
    QSqlQuery *obj = new QSqlQuery(OPQSTRING(1, QString()),
                                   HB_ISNIL(2) ? QSqlDatabase() : *static_cast<QSqlDatabase *>(Qt4xHb::itemGetPtr(2)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSQLDATABASE(1))
  {
    // QSqlQuery(QSqlDatabase db)
    QSqlQuery *obj = new QSqlQuery(*PQSQLDATABASE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSQLQUERY(1))
  {
    // QSqlQuery(const QSqlQuery &other)
    QSqlQuery *obj = new QSqlQuery(*PQSQLQUERY(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSQLQUERY_DELETE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void addBindValue(const QVariant &val, QSql::ParamType paramType = QSql::In)
HB_FUNC_STATIC(QSQLQUERY_ADDBINDVALUE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQVARIANT(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->addBindValue(*PQVARIANT(1), HB_ISNIL(2) ? (QSql::ParamType)QSql::In : (QSql::ParamType)hb_parni(2));
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

// int at() const
HB_FUNC_STATIC(QSQLQUERY_AT)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->at());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSQLQUERY_BINDVALUE)
{
  if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && ISQVARIANT(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // void bindValue(const QString &placeholder, const QVariant &val, QSql::ParamType paramType = QSql::In)
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->bindValue(PQSTRING(1), *PQVARIANT(2),
                     HB_ISNIL(3) ? (QSql::ParamType)QSql::In : (QSql::ParamType)hb_parni(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQVARIANT(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // void bindValue(int pos, const QVariant &val, QSql::ParamType paramType = QSql::In)
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->bindValue(PINT(1), *PQVARIANT(2), HB_ISNIL(3) ? (QSql::ParamType)QSql::In : (QSql::ParamType)hb_parni(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSQLQUERY_BOUNDVALUE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // QVariant boundValue(const QString &placeholder) const
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QVariant *ptr = new QVariant(obj->boundValue(PQSTRING(1)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // QVariant boundValue(int pos) const
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QVariant *ptr = new QVariant(obj->boundValue(PINT(1)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void clear()
HB_FUNC_STATIC(QSQLQUERY_CLEAR)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// const QSqlDriver *driver() const
HB_FUNC_STATIC(QSQLQUERY_DRIVER)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QSqlDriver *ptr = obj->driver();
      Qt4xHb::createReturnQObjectClass(ptr, "QSQLDRIVER");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSQLQUERY_EXEC)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // bool exec(const QString &query)
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->exec(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(0))
  {
    // bool exec()
    QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->exec());
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// bool execBatch(QSqlQuery::BatchExecutionMode mode = QSqlQuery::ValuesAsRows)
HB_FUNC_STATIC(QSQLQUERY_EXECBATCH)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->execBatch(HB_ISNIL(1) ? (QSqlQuery::BatchExecutionMode)QSqlQuery::ValuesAsRows
                                       : (QSqlQuery::BatchExecutionMode)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString executedQuery() const
HB_FUNC_STATIC(QSQLQUERY_EXECUTEDQUERY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->executedQuery());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void finish()
HB_FUNC_STATIC(QSQLQUERY_FINISH)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->finish();
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

// bool first()
HB_FUNC_STATIC(QSQLQUERY_FIRST)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->first());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isActive() const
HB_FUNC_STATIC(QSQLQUERY_ISACTIVE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isActive());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isForwardOnly() const
HB_FUNC_STATIC(QSQLQUERY_ISFORWARDONLY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isForwardOnly());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isNull(int field) const
HB_FUNC_STATIC(QSQLQUERY_ISNULL)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isNull(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isSelect() const
HB_FUNC_STATIC(QSQLQUERY_ISSELECT)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSelect());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isValid() const
HB_FUNC_STATIC(QSQLQUERY_ISVALID)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool last()
HB_FUNC_STATIC(QSQLQUERY_LAST)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->last());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QSqlError lastError() const
HB_FUNC_STATIC(QSQLQUERY_LASTERROR)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSqlError *ptr = new QSqlError(obj->lastError());
      Qt4xHb::createReturnClass(ptr, "QSQLERROR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant lastInsertId() const
HB_FUNC_STATIC(QSQLQUERY_LASTINSERTID)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVariant *ptr = new QVariant(obj->lastInsertId());
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

// QString lastQuery() const
HB_FUNC_STATIC(QSQLQUERY_LASTQUERY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->lastQuery());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool next()
HB_FUNC_STATIC(QSQLQUERY_NEXT)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->next());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool nextResult()
HB_FUNC_STATIC(QSQLQUERY_NEXTRESULT)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->nextResult());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int numRowsAffected() const
HB_FUNC_STATIC(QSQLQUERY_NUMROWSAFFECTED)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->numRowsAffected());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const
HB_FUNC_STATIC(QSQLQUERY_NUMERICALPRECISIONPOLICY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->numericalPrecisionPolicy());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool prepare(const QString &query)
HB_FUNC_STATIC(QSQLQUERY_PREPARE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->prepare(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool previous()
HB_FUNC_STATIC(QSQLQUERY_PREVIOUS)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->previous());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QSqlRecord record() const
HB_FUNC_STATIC(QSQLQUERY_RECORD)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSqlRecord *ptr = new QSqlRecord(obj->record());
      Qt4xHb::createReturnClass(ptr, "QSQLRECORD", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// const QSqlResult *result() const
HB_FUNC_STATIC(QSQLQUERY_RESULT)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QSqlResult *ptr = obj->result();
      Qt4xHb::createReturnClass(ptr, "QSQLRESULT", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool seek(int index, bool relative = false)
HB_FUNC_STATIC(QSQLQUERY_SEEK)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      RBOOL(obj->seek(PINT(1), OPBOOL(2, false)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setForwardOnly(bool forward)
HB_FUNC_STATIC(QSQLQUERY_SETFORWARDONLY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setForwardOnly(PBOOL(1));
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

// void setNumericalPrecisionPolicy(QSql::NumericalPrecisionPolicy precisionPolicy)
HB_FUNC_STATIC(QSQLQUERY_SETNUMERICALPRECISIONPOLICY)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setNumericalPrecisionPolicy((QSql::NumericalPrecisionPolicy)hb_parni(1));
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

// int size() const
HB_FUNC_STATIC(QSQLQUERY_SIZE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->size());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant value(int index) const
HB_FUNC_STATIC(QSQLQUERY_VALUE)
{
  QSqlQuery *obj = static_cast<QSqlQuery *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QVariant *ptr = new QVariant(obj->value(PINT(1)));
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

HB_FUNC_STATIC(QSQLQUERY_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QSQLQUERY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSQLQUERY_NEWFROM);
}

HB_FUNC_STATIC(QSQLQUERY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSQLQUERY_NEWFROM);
}

HB_FUNC_STATIC(QSQLQUERY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSQLQUERY_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
