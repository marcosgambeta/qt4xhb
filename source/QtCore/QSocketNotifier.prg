//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QSocketNotifier INHERIT QObject

   METHOD new
   METHOD delete
   METHOD socket
   METHOD type
   METHOD isEnabled
   METHOD setEnabled

   METHOD onActivated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSocketNotifier
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QSocketNotifier>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    // QSocketNotifier( int socket, QSocketNotifier::Type, QObject * parent = 0 )
HB_FUNC_STATIC(QSOCKETNOTIFIER_NEW)
{
  if (ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    QSocketNotifier *obj = new QSocketNotifier(PINT(1), (QSocketNotifier::Type)hb_parni(2), OPQOBJECT(3, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSOCKETNOTIFIER_DELETE)
{
  QSocketNotifier *obj = qobject_cast<QSocketNotifier *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// int socket() const
HB_FUNC_STATIC(QSOCKETNOTIFIER_SOCKET)
{
  QSocketNotifier *obj = qobject_cast<QSocketNotifier *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->socket());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QSocketNotifier::Type type() const
HB_FUNC_STATIC(QSOCKETNOTIFIER_TYPE)
{
  QSocketNotifier *obj = qobject_cast<QSocketNotifier *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isEnabled() const
HB_FUNC_STATIC(QSOCKETNOTIFIER_ISENABLED)
{
  QSocketNotifier *obj = qobject_cast<QSocketNotifier *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isEnabled());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setEnabled( bool )
HB_FUNC_STATIC(QSOCKETNOTIFIER_SETENABLED)
{
  QSocketNotifier *obj = qobject_cast<QSocketNotifier *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setEnabled(PBOOL(1));
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

void QSocketNotifierSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSOCKETNOTIFIER_ONACTIVATED)
{
  QSocketNotifierSlots_connect_signal("activated(int)", "activated(int)");
}

#pragma ENDDUMP
