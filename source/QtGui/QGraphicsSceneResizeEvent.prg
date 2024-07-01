/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsSceneResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsSceneResizeEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
QGraphicsSceneResizeEvent()
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGraphicsSceneResizeEvent * obj = new QGraphicsSceneResizeEvent();
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_DELETE )
{
  QGraphicsSceneResizeEvent * obj = static_cast<QGraphicsSceneResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSizeF newSize() const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = static_cast<QGraphicsSceneResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->newSize() );
      Qt4xHb::createReturnClass(ptr, "QSIZEF", true);
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
QSizeF oldSize() const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_OLDSIZE )
{
  QGraphicsSceneResizeEvent * obj = static_cast<QGraphicsSceneResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->oldSize() );
      Qt4xHb::createReturnClass(ptr, "QSIZEF", true);
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
