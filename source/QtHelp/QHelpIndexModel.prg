/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpIndexModel INHERIT QStringListModel

   METHOD createIndex
   METHOD filter
   METHOD isCreatingIndex

   METHOD onIndexCreated
   METHOD onIndexCreationStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpIndexModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtHelp/QHelpIndexModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    void createIndex( const QString & customFilterName )
    */
HB_FUNC_STATIC(QHELPINDEXMODEL_CREATEINDEX)
{
  QHelpIndexModel *obj = qobject_cast<QHelpIndexModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->createIndex(PQSTRING(1));
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

/*
QModelIndex filter( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC(QHELPINDEXMODEL_FILTER)
{
  QHelpIndexModel *obj = qobject_cast<QHelpIndexModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      QModelIndex *ptr = new QModelIndex(obj->filter(PQSTRING(1), OPQSTRING(2, QString())));
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

/*
bool isCreatingIndex() const
*/
HB_FUNC_STATIC(QHELPINDEXMODEL_ISCREATINGINDEX)
{
  QHelpIndexModel *obj = qobject_cast<QHelpIndexModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isCreatingIndex());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QHelpIndexModelSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QHELPINDEXMODEL_ONINDEXCREATED)
{
  QHelpIndexModelSlots_connect_signal("indexCreated()", "indexCreated()");
}

HB_FUNC_STATIC(QHELPINDEXMODEL_ONINDEXCREATIONSTARTED)
{
  QHelpIndexModelSlots_connect_signal("indexCreationStarted()", "indexCreationStarted()");
}

#pragma ENDDUMP
