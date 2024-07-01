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
REQUEST QPOINT
#endif

CLASS QContextMenuEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QContextMenuEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && HB_ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && HB_ISNUM(4) )
  {
    /*
    QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
    */
    QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni(1), *PQPOINT(2), *PQPOINT(3), ( Qt::KeyboardModifiers ) hb_parni(4) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    /*
    QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos, const QPoint & globalPos )
    */
    QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQPOINT(2) )
  {
    /*
    QContextMenuEvent( QContextMenuEvent::Reason reason, const QPoint & pos )
    */
    QContextMenuEvent * obj = new QContextMenuEvent( ( QContextMenuEvent::Reason ) hb_parni(1), *PQPOINT(2) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QCONTEXTMENUEVENT_DELETE )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

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
const QPoint & globalPos() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALPOS )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->globalPos();
      Qt4xHb::createReturnClass(ptr, "QPOINT", false);
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
int globalX() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALX )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalX() );
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
int globalY() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_GLOBALY )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->globalY() );
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
const QPoint & pos() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_POS )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QPoint * ptr = &obj->pos();
      Qt4xHb::createReturnClass(ptr, "QPOINT", false);
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
QContextMenuEvent::Reason reason() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_REASON )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->reason() );
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
int x() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_X )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->x() );
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
int y() const
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_Y )
{
  QContextMenuEvent * obj = static_cast<QContextMenuEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->y() );
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
