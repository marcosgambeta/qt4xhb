/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMDIAREA
REQUEST QMENU
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QMdiSubWindow INHERIT QWidget

   METHOD new
   METHOD isShaded
   METHOD keyboardPageStep
   METHOD keyboardSingleStep
   METHOD mdiArea
   METHOD setKeyboardPageStep
   METHOD setKeyboardSingleStep
   METHOD setOption
   METHOD setSystemMenu
   METHOD setWidget
   METHOD systemMenu
   METHOD testOption
   METHOD widget
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD showShaded
   METHOD showSystemMenu

   METHOD onAboutToActivate
   METHOD onWindowStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMdiSubWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMdiSubWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QMdiArea>
#include <QMenu>

/*
QMdiSubWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QMdiSubWindow * o = new QMdiSubWindow ( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isShaded () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_ISSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isShaded () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int keyboardPageStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->keyboardPageStep () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int keyboardSingleStep () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_KEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->keyboardSingleStep () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMdiArea * mdiArea () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MDIAREA )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMdiArea * ptr = obj->mdiArea ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QMDIAREA" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setKeyboardPageStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDPAGESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setKeyboardPageStep ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKeyboardSingleStep ( int step )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETKEYBOARDSINGLESTEP )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setKeyboardSingleStep ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption ( SubWindowOption option, bool on = true )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setOption ( (QMdiSubWindow::SubWindowOption) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSystemMenu ( QMenu * systemMenu )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMENU(1) )
    {
      obj->setSystemMenu ( PQMENU(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SETWIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMenu * systemMenu () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenu * ptr = obj->systemMenu ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QMENU" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool testOption ( SubWindowOption option ) const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_TESTOPTION )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->testOption ( (QMdiSubWindow::SubWindowOption) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * widget () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_WIDGET )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->widget ();
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_MINIMUMSIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->minimumSizeHint () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SIZEHINT )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->sizeHint () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void showShaded ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSHADED )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showShaded ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showSystemMenu ()
*/
HB_FUNC_STATIC( QMDISUBWINDOW_SHOWSYSTEMMENU )
{
  QMdiSubWindow * obj = (QMdiSubWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->showSystemMenu ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QMdiSubWindowSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMDISUBWINDOW_ONABOUTTOACTIVATE )
{
  QMdiSubWindowSlots_connect_signal( "aboutToActivate()", "aboutToActivate()" );
}

HB_FUNC_STATIC( QMDISUBWINDOW_ONWINDOWSTATECHANGED )
{
  QMdiSubWindowSlots_connect_signal( "windowStateChanged(Qt::WindowStates,Qt::WindowStates)", "windowStateChanged(Qt::WindowStates,Qt::WindowStates)" );
}

#pragma ENDDUMP
