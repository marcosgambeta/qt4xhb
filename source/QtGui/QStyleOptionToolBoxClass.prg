/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QStyleOptionToolBox INHERIT QStyleOption

   METHOD new

   METHOD text
   METHOD icon

   METHOD setText
   METHOD setIcon

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionToolBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStyleOptionToolBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionToolBox()
*/
void QStyleOptionToolBox_new1 ()
{
  QStyleOptionToolBox * o = new QStyleOptionToolBox ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionToolBox(const QStyleOptionToolBox &other)
*/
void QStyleOptionToolBox_new2 ()
{
  QStyleOptionToolBox * o = new QStyleOptionToolBox ( *PQSTYLEOPTIONTOOLBOX(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionToolBox(int version) (protected)
*/

//[1]QStyleOptionToolBox()
//[2]QStyleOptionToolBox(const QStyleOptionToolBox &other)
//[3]QStyleOptionToolBox(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBOX(1) )
  {
    QStyleOptionToolBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_TEXT )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETTEXT )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_ICON )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon  );
      _qt4xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBOX_SETICON )
{
  QStyleOptionToolBox * obj = (QStyleOptionToolBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP