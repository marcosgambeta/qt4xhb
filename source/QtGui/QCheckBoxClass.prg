/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QCheckBox INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QCheckBox
   DATA self_destruction INIT .F.

   METHOD new
   METHOD checkState
   METHOD isTristate
   METHOD setCheckState
   METHOD setTristate
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCheckBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QCheckBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCheckBox ( QWidget * parent = 0 )
*/
void QCheckBox_new1 ()
{
  QCheckBox * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCheckBox ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QCheckBox ( const QString & text, QWidget * parent = 0 )
*/
void QCheckBox_new2 ()
{
  QCheckBox * o = NULL;
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QCheckBox ( PQSTRING(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QCheckBox ( QWidget * parent = 0 )
//[2]QCheckBox ( const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QCheckBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QCheckBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::CheckState checkState () const
*/
HB_FUNC_STATIC( QCHECKBOX_CHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( (int) obj->checkState () );
  }
}

/*
bool isTristate () const
*/
HB_FUNC_STATIC( QCHECKBOX_ISTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isTristate () );
  }
}

/*
void setCheckState ( Qt::CheckState state )
*/
HB_FUNC_STATIC( QCHECKBOX_SETCHECKSTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState (  (Qt::CheckState) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTristate ( bool y = true )
*/
HB_FUNC_STATIC( QCHECKBOX_SETTRISTATE )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    obj->setTristate ( OPBOOL(1,true) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_MINIMUMSIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QCHECKBOX_SIZEHINT )
{
  QCheckBox * obj = (QCheckBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
