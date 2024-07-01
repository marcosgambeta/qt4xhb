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
REQUEST QSIZE
#endif

CLASS QResizeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD size
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QResizeEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
QResizeEvent( const QSize & size, const QSize & oldSize )
*/
HB_FUNC_STATIC( QRESIZEEVENT_NEW )
{
  if( ISNUMPAR(2) && ISQSIZE(1) && ISQSIZE(2) )
  {
    QResizeEvent * obj = new QResizeEvent( *PQSIZE(1), *PQSIZE(2) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QRESIZEEVENT_DELETE )
{
  QResizeEvent * obj = static_cast<QResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

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
const QSize & size() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_SIZE )
{
  QResizeEvent * obj = static_cast<QResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QSize * ptr = &obj->size();
      Qt4xHb::createReturnClass(ptr, "QSIZE", false);
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
const QSize & oldSize() const
*/
HB_FUNC_STATIC( QRESIZEEVENT_OLDSIZE )
{
  QResizeEvent * obj = static_cast<QResizeEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QSize * ptr = &obj->oldSize();
      Qt4xHb::createReturnClass(ptr, "QSIZE", false);
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
