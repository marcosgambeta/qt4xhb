/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QMouseEventTransition INHERIT QEventTransition

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD button
   METHOD hitTestPath
   METHOD modifierMask
   METHOD setButton
   METHOD setHitTestPath
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMouseEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMouseEventTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPainterPath>

/*
QMouseEventTransition ( QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW1 )
{
  QMouseEventTransition * o = new QMouseEventTransition ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW2 )
{
  QMouseEventTransition * o = new QMouseEventTransition ( PQOBJECT(1), (QEvent::Type) hb_parni(2), (Qt::MouseButton) hb_parni(3), OPQSTATE(4,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QMouseEventTransition ( QState * sourceState = 0 )
//[2]QMouseEventTransition ( QObject * object, QEvent::Type type, Qt::MouseButton button, QState * sourceState = 0 )

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QMOUSEEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QMOUSEEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_DELETE )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::MouseButton button () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_BUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->button () );
  }
}

/*
QPainterPath hitTestPath () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_HITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->hitTestPath () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_MODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifierMask () );
  }
}

/*
void setButton ( Qt::MouseButton button )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETBUTTON )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButton ( (Qt::MouseButton) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHitTestPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETHITTESTPATH )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHitTestPath ( *PQPAINTERPATH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QMOUSEEVENTTRANSITION_SETMODIFIERMASK )
{
  QMouseEventTransition * obj = (QMouseEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModifierMask ( (Qt::KeyboardModifiers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP