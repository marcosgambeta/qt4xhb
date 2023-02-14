/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERACTIONEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWMANAGERINTERFACE
REQUEST QDESIGNEROBJECTINSPECTORINTERFACE
REQUEST QDESIGNERPROPERTYEDITORINTERFACE
REQUEST QDESIGNERWIDGETBOXINTERFACE
REQUEST QEXTENSIONMANAGER
REQUEST QWIDGET
#endif

CLASS QDesignerFormEditorInterface INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actionEditor
   METHOD extensionManager
   METHOD formWindowManager
   METHOD objectInspector
   METHOD propertyEditor
   METHOD setActionEditor
   METHOD setObjectInspector
   METHOD setPropertyEditor
   METHOD setWidgetBox
   METHOD topLevel
   METHOD widgetBox

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerFormEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDesigner/QDesignerFormEditorInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtDesigner/QDesignerActionEditorInterface>
#include <QtDesigner/QExtensionManager>
#include <QtDesigner/QDesignerFormWindowManagerInterface>
#include <QtDesigner/QDesignerObjectInspectorInterface>
#include <QtDesigner/QDesignerPropertyEditorInterface>
#include <QtDesigner/QDesignerWidgetBoxInterface>

/*
QDesignerFormEditorInterface( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)) )
  {
    QDesignerFormEditorInterface * obj = new QDesignerFormEditorInterface( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_DELETE )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
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
QDesignerActionEditorInterface * actionEditor() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_ACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerActionEditorInterface * ptr = obj->actionEditor();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERACTIONEDITORINTERFACE");
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
QExtensionManager * extensionManager() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_EXTENSIONMANAGER )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QExtensionManager * ptr = obj->extensionManager();
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
QDesignerFormWindowManagerInterface * formWindowManager() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_FORMWINDOWMANAGER )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormWindowManagerInterface * ptr = obj->formWindowManager();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERFORMWINDOWMANAGERINTERFACE");
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
QDesignerObjectInspectorInterface * objectInspector() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_OBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerObjectInspectorInterface * ptr = obj->objectInspector();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNEROBJECTINSPECTORINTERFACE");
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
QDesignerPropertyEditorInterface * propertyEditor() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_PROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerPropertyEditorInterface * ptr = obj->propertyEditor();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERPROPERTYEDITORINTERFACE");
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
void setActionEditor( QDesignerActionEditorInterface * actionEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERACTIONEDITORINTERFACE(1) )
    {
#endif
      obj->setActionEditor( PQDESIGNERACTIONEDITORINTERFACE(1) );
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
void setObjectInspector( QDesignerObjectInspectorInterface * objectInspector )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETOBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNEROBJECTINSPECTORINTERFACE(1) )
    {
#endif
      obj->setObjectInspector( PQDESIGNEROBJECTINSPECTORINTERFACE(1) );
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
void setPropertyEditor( QDesignerPropertyEditorInterface * propertyEditor )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETPROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERPROPERTYEDITORINTERFACE(1) )
    {
#endif
      obj->setPropertyEditor( PQDESIGNERPROPERTYEDITORINTERFACE(1) );
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
void setWidgetBox( QDesignerWidgetBoxInterface * widgetBox )
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_SETWIDGETBOX )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDESIGNERWIDGETBOXINTERFACE(1) )
    {
#endif
      obj->setWidgetBox( PQDESIGNERWIDGETBOXINTERFACE(1) );
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
QWidget * topLevel() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_TOPLEVEL )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->topLevel();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
QDesignerWidgetBoxInterface * widgetBox() const
*/
HB_FUNC_STATIC( QDESIGNERFORMEDITORINTERFACE_WIDGETBOX )
{
  QDesignerFormEditorInterface * obj = qobject_cast<QDesignerFormEditorInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerWidgetBoxInterface * ptr = obj->widgetBox();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERWIDGETBOXINTERFACE");
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
