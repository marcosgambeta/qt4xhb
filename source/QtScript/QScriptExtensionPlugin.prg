/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD setupPackage
   METHOD initialize
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtScript/QScriptExtensionPlugin>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtScript/QScriptValue>

HB_FUNC_STATIC(QSCRIPTEXTENSIONPLUGIN_DELETE)
{
  QScriptExtensionPlugin *obj = qobject_cast<QScriptExtensionPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QScriptValue setupPackage( const QString & key, QScriptEngine * engine ) const
*/
HB_FUNC_STATIC(QSCRIPTEXTENSIONPLUGIN_SETUPPACKAGE)
{
  QScriptExtensionPlugin *obj = qobject_cast<QScriptExtensionPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQSCRIPTENGINE(2))
    {
#endif
      QScriptValue *ptr = new QScriptValue(obj->setupPackage(PQSTRING(1), PQSCRIPTENGINE(2)));
      Qt4xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
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
virtual void initialize( const QString & key, QScriptEngine * engine ) = 0
*/
HB_FUNC_STATIC(QSCRIPTEXTENSIONPLUGIN_INITIALIZE)
{
  QScriptExtensionPlugin *obj = qobject_cast<QScriptExtensionPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQSCRIPTENGINE(2))
    {
#endif
      obj->initialize(PQSTRING(1), PQSCRIPTENGINE(2));
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
virtual QStringList keys() const = 0
*/
HB_FUNC_STATIC(QSCRIPTEXTENSIONPLUGIN_KEYS)
{
  QScriptExtensionPlugin *obj = qobject_cast<QScriptExtensionPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->keys());
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
