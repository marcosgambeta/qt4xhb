/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QWindowStateChangeEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWindowStateChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QWindowStateChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowStateChangeEvent( Qt::WindowStates aOldState )
*/
void QWindowStateChangeEvent_new1()
{
  QWindowStateChangeEvent * obj = new QWindowStateChangeEvent( ( Qt::WindowStates ) hb_parni( 1 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QWindowStateChangeEvent( Qt::WindowStates aOldState, bool isOverride )
*/
void QWindowStateChangeEvent_new2()
{
  QWindowStateChangeEvent * obj = new QWindowStateChangeEvent( ( Qt::WindowStates ) hb_parni( 1 ), PBOOL( 2 ) );
  Qt4xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QWindowStateChangeEvent_new1();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISLOG( 2 ) )
  {
    QWindowStateChangeEvent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_DELETE )
{
  QWindowStateChangeEvent * obj = ( QWindowStateChangeEvent * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::WindowStates oldState() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_OLDSTATE )
{
  QWindowStateChangeEvent * obj = ( QWindowStateChangeEvent * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->oldState() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isOverride() const
*/
HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_ISOVERRIDE )
{
  QWindowStateChangeEvent * obj = ( QWindowStateChangeEvent * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isOverride() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
