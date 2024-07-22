//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QExtensionFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtDesigner/QExtensionFactory>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtDesigner/QExtensionManager>

    /*
    QExtensionFactory( QExtensionManager *parent = 0 )
    */
HB_FUNC_STATIC(QEXTENSIONFACTORY_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQEXTENSIONMANAGER(1) || HB_ISNIL(1)))
  {
    QExtensionFactory *obj = new QExtensionFactory(OPQEXTENSIONMANAGER(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QEXTENSIONFACTORY_DELETE)
{
  QExtensionFactory *obj = qobject_cast<QExtensionFactory *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QExtensionManager *extensionManager() const
*/
HB_FUNC_STATIC(QEXTENSIONFACTORY_EXTENSIONMANAGER)
{
  QExtensionFactory *obj = qobject_cast<QExtensionFactory *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QExtensionManager *ptr = obj->extensionManager();
      Qt4xHb::createReturnQObjectClass(ptr, "QEXTENSIONMANAGER");
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
virtual QObject *extension( QObject *object, const QString &iid ) const
*/
HB_FUNC_STATIC(QEXTENSIONFACTORY_EXTENSION)
{
  QExtensionFactory *obj = qobject_cast<QExtensionFactory *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2))
    {
#endif
      QObject *ptr = obj->extension(PQOBJECT(1), PQSTRING(2));
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
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
