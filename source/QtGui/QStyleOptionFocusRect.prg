/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QStyleOptionFocusRect INHERIT QStyleOption

   METHOD new
   METHOD backgroundColor
   METHOD setBackgroundColor

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionFocusRect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionFocusRect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionFocusRect()
*/
void QStyleOptionFocusRect_new1()
{
  QStyleOptionFocusRect * obj = new QStyleOptionFocusRect();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionFocusRect( const QStyleOptionFocusRect & other )
*/
void QStyleOptionFocusRect_new2()
{
  QStyleOptionFocusRect * obj = new QStyleOptionFocusRect( *PQSTYLEOPTIONFOCUSRECT( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QStyleOptionFocusRect_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSTYLEOPTIONFOCUSRECT( 1 ) )
  {
    QStyleOptionFocusRect_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QColor backgroundColor
*/
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_BACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = ( QStyleOptionFocusRect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      QColor * ptr = new QColor( obj->backgroundColor );
      Qt4xHb::createReturnClass( ptr, "QCOLOR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFOCUSRECT_SETBACKGROUNDCOLOR )
{
  QStyleOptionFocusRect * obj = ( QStyleOptionFocusRect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR( 1 ) && ISQCOLOR( 1 ) )
    {
      obj->backgroundColor= *PQCOLOR( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
