/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QRadioButton INHERIT QAbstractButton

   METHOD new
   METHOD minimumSizeHint
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRadioButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QRadioButton>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QRadioButton ( QWidget * parent = 0 )
*/
void QRadioButton_new1()
{
  QRadioButton * o = new QRadioButton( OPQWIDGET(1,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QRadioButton ( const QString & text, QWidget * parent = 0 )
*/
void QRadioButton_new2()
{
  QRadioButton * o = new QRadioButton( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QRadioButton ( QWidget * parent = 0 )
//[2]QRadioButton ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QRADIOBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QRadioButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QRadioButton_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QRADIOBUTTON_MINIMUMSIZEHINT )
{
  QRadioButton * obj = (QRadioButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint() );
      _qt4xhb_createReturnClass( ptr, "QSIZE", true );
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
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QRADIOBUTTON_SIZEHINT )
{
  QRadioButton * obj = (QRadioButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      _qt4xhb_createReturnClass( ptr, "QSIZE", true );
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
