/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

CLASS QStatusBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addPermanentWidget
   METHOD addWidget
   METHOD currentMessage
   METHOD insertPermanentWidget
   METHOD insertWidget
   METHOD isSizeGripEnabled
   METHOD removeWidget
   METHOD setSizeGripEnabled
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStatusBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStatusBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStatusBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QStatusBar * o = new QStatusBar ( OPQWIDGET(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATUSBAR_DELETE )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTNUM(2) )
    {
      obj->addPermanentWidget ( PQWIDGET(1), OPINT(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDWIDGET )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQWIDGET(1) && ISOPTNUM(2) )
    {
      obj->addWidget ( PQWIDGET(1), OPINT(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString currentMessage () const
*/
HB_FUNC_STATIC( QSTATUSBAR_CURRENTMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->currentMessage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQWIDGET(2) && ISOPTNUM(3) )
    {
      RINT( obj->insertPermanentWidget ( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQWIDGET(2) && ISOPTNUM(3) )
    {
      RINT( obj->insertWidget ( PINT(1), PQWIDGET(2), OPINT(3,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QSTATUSBAR_ISSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isSizeGripEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTATUSBAR_REMOVEWIDGET )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->removeWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QSTATUSBAR_SETSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSizeGripEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSTATUSBAR_CLEARMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearMessage ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, int timeout = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_SHOWMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      obj->showMessage ( PQSTRING(1), OPINT(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QStatusBarSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSTATUSBAR_ONMESSAGECHANGED )
{
  QStatusBarSlots_connect_signal( "messageChanged(QString)", "messageChanged(QString)" );
}

#pragma ENDDUMP
