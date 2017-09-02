/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter1
   METHOD setCenter2
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QConicalGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QConicalGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QConicalGradient()
*/
HB_FUNC_STATIC( QCONICALGRADIENT_NEW1 )
{
  QConicalGradient * o = new QConicalGradient ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QConicalGradient(const QPointF &center, qreal startAngle)
*/
HB_FUNC_STATIC( QCONICALGRADIENT_NEW2 )
{
  QConicalGradient * o = new QConicalGradient ( *PQPOINTF(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QConicalGradient(qreal cx, qreal cy, qreal startAngle)
*/
HB_FUNC_STATIC( QCONICALGRADIENT_NEW3 )
{
  QConicalGradient * o = new QConicalGradient ( PQREAL(1), PQREAL(2), PQREAL(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QConicalGradient()
//[2]QConicalGradient(const QPointF &center, qreal startAngle)
//[3]QConicalGradient(qreal cx, qreal cy, qreal startAngle)

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angle () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_ANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->angle () );
  }
}

/*
QPointF center () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_CENTER )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setAngle ( qreal angle )
*/
HB_FUNC_STATIC( QCONICALGRADIENT_SETANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAngle ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( const QPointF & center )
*/
HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER1 )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenter ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( qreal x, qreal y )
*/
HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER2 )
{
  QConicalGradient * obj = (QConicalGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCenter ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCenter ( const QPointF & center )
//[2]void setCenter ( qreal x, qreal y )

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_SETCENTER1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCONICALGRADIENT_SETCENTER2 );
  }
}

#pragma ENDDUMP