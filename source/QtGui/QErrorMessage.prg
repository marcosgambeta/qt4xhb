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

CLASS QErrorMessage INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD showMessage
   METHOD qtHandler

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QErrorMessage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QErrorMessage>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QErrorMessage( QWidget *parent = 0 )
    */
HB_FUNC_STATIC(QERRORMESSAGE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    QErrorMessage *obj = new QErrorMessage(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QERRORMESSAGE_DELETE)
{
  QErrorMessage *obj = qobject_cast<QErrorMessage *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QERRORMESSAGE_SHOWMESSAGE)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void showMessage( const QString &message )
    */
    QErrorMessage *obj = qobject_cast<QErrorMessage *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->showMessage(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    /*
    void showMessage( const QString &message, const QString &type )
    */
    QErrorMessage *obj = qobject_cast<QErrorMessage *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->showMessage(PQSTRING(1), PQSTRING(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QErrorMessage *qtHandler()
*/
HB_FUNC_STATIC(QERRORMESSAGE_QTHANDLER)
{
  QErrorMessage *obj = qobject_cast<QErrorMessage *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QErrorMessage *ptr = obj->qtHandler();
      Qt4xHb::createReturnQObjectClass(ptr, "QERRORMESSAGE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
