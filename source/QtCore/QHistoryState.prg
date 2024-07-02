/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
#endif

CLASS QHistoryState INHERIT QAbstractState

   METHOD new
   METHOD delete
   METHOD defaultState
   METHOD setDefaultState
   METHOD historyType
   METHOD setHistoryType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHistoryState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QHistoryState>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QHISTORYSTATE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQSTATE(1) || HB_ISNIL(1)))
  {
    /*
    QHistoryState( QState * parent = 0 )
    */
    QHistoryState *obj = new QHistoryState(OPQSTATE(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (ISQSTATE(2) || HB_ISNIL(2)))
  {
    /*
    QHistoryState( QHistoryState::HistoryType type, QState * parent = 0 )
    */
    QHistoryState *obj = new QHistoryState((QHistoryState::HistoryType)hb_parni(1), OPQSTATE(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QHISTORYSTATE_DELETE)
{
  QHistoryState *obj = qobject_cast<QHistoryState *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
QAbstractState * defaultState() const
*/
HB_FUNC_STATIC(QHISTORYSTATE_DEFAULTSTATE)
{
  QHistoryState *obj = qobject_cast<QHistoryState *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractState *ptr = obj->defaultState();
      Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTSTATE");
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
void setDefaultState( QAbstractState * state )
*/
HB_FUNC_STATIC(QHISTORYSTATE_SETDEFAULTSTATE)
{
  QHistoryState *obj = qobject_cast<QHistoryState *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTSTATE(1))
    {
#endif
      obj->setDefaultState(PQABSTRACTSTATE(1));
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
QHistoryState::HistoryType historyType() const
*/
HB_FUNC_STATIC(QHISTORYSTATE_HISTORYTYPE)
{
  QHistoryState *obj = qobject_cast<QHistoryState *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->historyType());
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
void setHistoryType( QHistoryState::HistoryType type )
*/
HB_FUNC_STATIC(QHISTORYSTATE_SETHISTORYTYPE)
{
  QHistoryState *obj = qobject_cast<QHistoryState *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHistoryType((QHistoryState::HistoryType)hb_parni(1));
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
