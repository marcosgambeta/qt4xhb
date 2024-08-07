//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMSELECTION
REQUEST QMIMEDATA
REQUEST QMODELINDEX
REQUEST QREGEXP
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QSortFilterProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD dynamicSortFilter
   METHOD filterCaseSensitivity
   METHOD filterKeyColumn
   METHOD filterRegExp
   METHOD filterRole
   METHOD isSortLocaleAware
   METHOD setDynamicSortFilter
   METHOD setFilterCaseSensitivity
   METHOD setFilterKeyColumn
   METHOD setFilterRole
   METHOD setSortCaseSensitivity
   METHOD setSortLocaleAware
   METHOD setSortRole
   METHOD sortCaseSensitivity
   METHOD sortColumn
   METHOD sortOrder
   METHOD sortRole
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD setSourceModel
   METHOD sort
   METHOD span
   METHOD supportedDropActions
   METHOD invalidate
   METHOD setFilterFixedString
   METHOD setFilterRegExp
   METHOD setFilterWildcard

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSortFilterProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QSortFilterProxyModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QItemSelection>
#include <QtCore/QStringList>
#include <QtCore/QSize>
#include <QtCore/QMimeData>

    // QSortFilterProxyModel(QObject *parent = 0)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QSortFilterProxyModel *obj = new QSortFilterProxyModel(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_DELETE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// bool dynamicSortFilter() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_DYNAMICSORTFILTER)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->dynamicSortFilter());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// Qt::CaseSensitivity filterCaseSensitivity() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FILTERCASESENSITIVITY)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->filterCaseSensitivity());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int filterKeyColumn() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FILTERKEYCOLUMN)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->filterKeyColumn());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QRegExp filterRegExp() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FILTERREGEXP)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QRegExp *ptr = new QRegExp(obj->filterRegExp());
      Qt4xHb::createReturnClass(ptr, "QREGEXP", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int filterRole() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FILTERROLE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->filterRole());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isSortLocaleAware() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_ISSORTLOCALEAWARE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSortLocaleAware());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setDynamicSortFilter(bool enable)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETDYNAMICSORTFILTER)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setDynamicSortFilter(PBOOL(1));
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

// void setFilterCaseSensitivity(Qt::CaseSensitivity cs)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERCASESENSITIVITY)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFilterCaseSensitivity((Qt::CaseSensitivity)hb_parni(1));
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

// void setFilterKeyColumn(int column)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERKEYCOLUMN)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFilterKeyColumn(PINT(1));
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

// void setFilterRole(int role)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERROLE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFilterRole(PINT(1));
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

// void setSortCaseSensitivity(Qt::CaseSensitivity cs)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETSORTCASESENSITIVITY)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSortCaseSensitivity((Qt::CaseSensitivity)hb_parni(1));
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

// void setSortLocaleAware(bool on)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETSORTLOCALEAWARE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setSortLocaleAware(PBOOL(1));
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

// void setSortRole(int role)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETSORTROLE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSortRole(PINT(1));
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

// Qt::CaseSensitivity sortCaseSensitivity() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SORTCASESENSITIVITY)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sortCaseSensitivity());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sortColumn() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SORTCOLUMN)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->sortColumn());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// Qt::SortOrder sortOrder() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SORTORDER)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->sortOrder());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int sortRole() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SORTROLE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->sortRole());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QModelIndex buddy(const QModelIndex &index) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_BUDDY)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->buddy(*PQMODELINDEX(1)));
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool canFetchMore(const QModelIndex &parent) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_CANFETCHMORE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      RBOOL(obj->canFetchMore(*PQMODELINDEX(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual int columnCount(const QModelIndex &parent = QModelIndex()) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_COLUMNCOUNT)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->columnCount(HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex *>(Qt4xHb::itemGetPtr(1))));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_DATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// virtual bool dropMimeData(const QMimeData *data, Qt::DropAction action, int row, int column, const QModelIndex
// &parent)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_DROPMIMEDATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5))
    {
#endif
      RBOOL(obj->dropMimeData(PQMIMEDATA(1), (Qt::DropAction)hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void fetchMore(const QModelIndex &parent)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FETCHMORE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      obj->fetchMore(*PQMODELINDEX(1));
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

// virtual Qt::ItemFlags flags(const QModelIndex &index) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_FLAGS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      RENUM(obj->flags(*PQMODELINDEX(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool hasChildren(const QModelIndex &parent = QModelIndex()) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_HASCHILDREN)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RBOOL(obj->hasChildren(HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex *>(Qt4xHb::itemGetPtr(1))));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_HEADERDATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
    {
#endif
      QVariant *ptr = new QVariant(obj->headerData(PINT(1), (Qt::Orientation)hb_parni(2), OPINT(3, Qt::DisplayRole)));
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

// virtual QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_INDEX)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->index(
          PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex *>(Qt4xHb::itemGetPtr(3))));
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool insertColumns(int column, int count, const QModelIndex &parent = QModelIndex())
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_INSERTCOLUMNS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertColumns(PINT(1), PINT(2),
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

// virtual bool insertRows(int row, int count, const QModelIndex &parent = QModelIndex())
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_INSERTROWS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->insertRows(PINT(1), PINT(2),
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

// virtual QModelIndex mapFromSource(const QModelIndex &sourceIndex) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MAPFROMSOURCE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->mapFromSource(*PQMODELINDEX(1)));
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QItemSelection mapSelectionFromSource(const QItemSelection &sourceSelection) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MAPSELECTIONFROMSOURCE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQITEMSELECTION(1))
    {
#endif
      QItemSelection *ptr = new QItemSelection(obj->mapSelectionFromSource(*PQITEMSELECTION(1)));
      Qt4xHb::createReturnClass(ptr, "QITEMSELECTION", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QItemSelection mapSelectionToSource(const QItemSelection &proxySelection) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MAPSELECTIONTOSOURCE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQITEMSELECTION(1))
    {
#endif
      QItemSelection *ptr = new QItemSelection(obj->mapSelectionToSource(*PQITEMSELECTION(1)));
      Qt4xHb::createReturnClass(ptr, "QITEMSELECTION", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QModelIndex mapToSource(const QModelIndex &proxyIndex) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MAPTOSOURCE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->mapToSource(*PQMODELINDEX(1)));
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QModelIndexList match(const QModelIndex &start, int role, const QVariant &value, int hits = 1, Qt::MatchFlags
// flags = Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap)) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MATCH)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 5) && ISQMODELINDEX(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4) || HB_ISNIL(4)) &&
        (HB_ISNUM(5) || HB_ISNIL(5)))
    {
#endif
      QModelIndexList list =
          obj->match(*PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT(4, 1),
                     HB_ISNIL(5) ? (Qt::MatchFlags)Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap)
                                 : (Qt::MatchFlags)hb_parni(5));
      PHB_DYNS pDynSym = hb_dynsymFindName("QMODELINDEX");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        const int count = list.count();
        for (int i = 0; i < count; i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QModelIndex(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QMimeData *mimeData(const QModelIndexList &indexes) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MIMEDATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      QModelIndexList par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        par1 << *static_cast<QModelIndex *>(
            hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0)));
      }
      QMimeData *ptr = obj->mimeData(par1);
      Qt4xHb::createReturnQObjectClass(ptr, "QMIMEDATA");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QStringList mimeTypes() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_MIMETYPES)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->mimeTypes());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QModelIndex parent(const QModelIndex &child) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_PARENT)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->parent(*PQMODELINDEX(1)));
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_REMOVECOLUMNS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// virtual bool removeRows(int row, int count, const QModelIndex &parent = QModelIndex())
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_REMOVEROWS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)))
    {
#endif
      RBOOL(obj->removeRows(PINT(1), PINT(2),
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

// virtual int rowCount(const QModelIndex &parent = QModelIndex()) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_ROWCOUNT)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)))
    {
#endif
      RINT(obj->rowCount(HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex *>(Qt4xHb::itemGetPtr(1))));
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
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETDATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant &value, int role = Qt::EditRole)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETHEADERDATA)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      RBOOL(obj->setHeaderData(PINT(1), (Qt::Orientation)hb_parni(2), *PQVARIANT(3), OPINT(4, Qt::EditRole)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void setSourceModel(QAbstractItemModel *sourceModel)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETSOURCEMODEL)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1))
    {
#endif
      obj->setSourceModel(PQABSTRACTITEMMODEL(1));
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

// virtual void sort(int column, Qt::SortOrder order = Qt::AscendingOrder)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SORT)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
    {
#endif
      obj->sort(PINT(1), HB_ISNIL(2) ? (Qt::SortOrder)Qt::AscendingOrder : (Qt::SortOrder)hb_parni(2));
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

// virtual QSize span(const QModelIndex &index) const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SPAN)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMODELINDEX(1))
    {
#endif
      QSize *ptr = new QSize(obj->span(*PQMODELINDEX(1)));
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual Qt::DropActions supportedDropActions() const
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SUPPORTEDDROPACTIONS)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->supportedDropActions());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void invalidate()
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_INVALIDATE)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->invalidate();
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

// void setFilterFixedString(const QString &pattern)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERFIXEDSTRING)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFilterFixedString(PQSTRING(1));
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

HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERREGEXP)
{
  if (ISNUMPAR(1) && ISQREGEXP(1))
  {
    // void setFilterRegExp(const QRegExp &regExp)
    QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setFilterRegExp(*PQREGEXP(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // void setFilterRegExp(const QString &pattern)
    QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setFilterRegExp(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void setFilterWildcard(const QString &pattern)
HB_FUNC_STATIC(QSORTFILTERPROXYMODEL_SETFILTERWILDCARD)
{
  QSortFilterProxyModel *obj = qobject_cast<QSortFilterProxyModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFilterWildcard(PQSTRING(1));
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
