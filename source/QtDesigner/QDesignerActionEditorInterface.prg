//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   METHOD delete
   METHOD core
   METHOD manageAction
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerActionEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtDesigner/QDesignerActionEditorInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtDesigner/QDesignerFormEditorInterface>

HB_FUNC_STATIC(QDESIGNERACTIONEDITORINTERFACE_DELETE)
{
  QDesignerActionEditorInterface *obj =
      qobject_cast<QDesignerActionEditorInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// virtual QDesignerFormEditorInterface *core() const
HB_FUNC_STATIC(QDESIGNERACTIONEDITORINTERFACE_CORE)
{
  QDesignerActionEditorInterface *obj =
      qobject_cast<QDesignerActionEditorInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDesignerFormEditorInterface *ptr = obj->core();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERFORMEDITORINTERFACE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void manageAction(QAction *action) = 0
HB_FUNC_STATIC(QDESIGNERACTIONEDITORINTERFACE_MANAGEACTION)
{
  QDesignerActionEditorInterface *obj =
      qobject_cast<QDesignerActionEditorInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQACTION(1))
    {
#endif
      obj->manageAction(PQACTION(1));
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

// virtual void setFormWindow(QDesignerFormWindowInterface *formWindow) = 0
HB_FUNC_STATIC(QDESIGNERACTIONEDITORINTERFACE_SETFORMWINDOW)
{
  QDesignerActionEditorInterface *obj =
      qobject_cast<QDesignerActionEditorInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1))
    {
#endif
      obj->setFormWindow(PQDESIGNERFORMWINDOWINTERFACE(1));
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
