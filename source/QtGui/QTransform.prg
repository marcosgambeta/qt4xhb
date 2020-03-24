/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLINE
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QPOLYGON
REQUEST QPOLYGONF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGION
#endif

CLASS QTransform

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD adjoint
   METHOD determinant
   METHOD dx
   METHOD dy
   METHOD inverted
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isRotating
   METHOD isScaling
   METHOD isTranslating
   METHOD map1
   METHOD map
   METHOD map10
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD setMatrix
   METHOD transposed
   METHOD type
   METHOD fromScale
   METHOD fromTranslate
   METHOD quadToQuad
   METHOD quadToSquare
   METHOD squareToQuad

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTransform>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTransform ()
*/
void QTransform_new1()
{
  QTransform * o = new QTransform();
  _qt4xhb_returnNewObject( o, true );
}

/*
QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
*/
void QTransform_new2()
{
  QTransform * o = new QTransform( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), OPQREAL(9,1.0) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
*/
void QTransform_new3()
{
  QTransform * o = new QTransform( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QTransform ( const QMatrix & matrix )
*/
void QTransform_new4()
{
  QTransform * o = new QTransform( *PQMATRIX(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QTransform ()
//[2]QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
//[3]QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
//[4]QTransform ( const QMatrix & matrix )

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTransform_new1();
  }
  else if( ISBETWEEN(8,9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && (ISNUM(9)||ISNIL(9)) )
  {
    QTransform_new2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QTransform_new3();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QTransform_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTRANSFORM_DELETE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qreal m11 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M11 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m11() );
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
qreal m12 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M12 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m12() );
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
qreal m13 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M13 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m13() );
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
qreal m21 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M21 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m21() );
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
qreal m22 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M22 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m22() );
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
qreal m23 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M23 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m23() );
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
qreal m31 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M31 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m31() );
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
qreal m32 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M32 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m32() );
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
qreal m33 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M33 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->m33() );
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
QTransform adjoint () const
*/
HB_FUNC_STATIC( QTRANSFORM_ADJOINT )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTransform * ptr = new QTransform( obj->adjoint() );
      _qt4xhb_createReturnClass( ptr, "QTRANSFORM", true );
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
qreal determinant () const
*/
HB_FUNC_STATIC( QTRANSFORM_DETERMINANT )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->determinant() );
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
qreal dx () const
*/
HB_FUNC_STATIC( QTRANSFORM_DX )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dx() );
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
qreal dy () const
*/
HB_FUNC_STATIC( QTRANSFORM_DY )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->dy() );
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
QTransform inverted ( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QTRANSFORM_INVERTED )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      bool par1;
      QTransform * ptr = new QTransform( obj->inverted( &par1 ) );
      _qt4xhb_createReturnClass( ptr, "QTRANSFORM", true );
      hb_storl( par1, 1 );
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
bool isAffine () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISAFFINE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAffine() );
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
bool isIdentity () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISIDENTITY )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isIdentity() );
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
bool isInvertible () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISINVERTIBLE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isInvertible() );
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
bool isRotating () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISROTATING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRotating() );
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
bool isScaling () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISSCALING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isScaling() );
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
bool isTranslating () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISTRANSLATING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTranslating() );
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
void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP1 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      qreal par3;
      qreal par4;
      obj->map( PQREAL(1), PQREAL(2), &par3, &par4 );
      hb_stornd( par3, 3 );
      hb_stornd( par4, 4 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPointF map ( const QPointF & p ) const
*/
void QTransform_map2()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->map( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass( ptr, "QPOINTF", true );
  }
}

/*
QPoint map ( const QPoint & point ) const
*/
void QTransform_map3()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->map( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass( ptr, "QPOINT", true );
  }
}

/*
QLine map ( const QLine & l ) const
*/
void QTransform_map4()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QLine * ptr = new QLine( obj->map( *PQLINE(1) ) );
    _qt4xhb_createReturnClass( ptr, "QLINE", true );
  }
}

/*
QLineF map ( const QLineF & line ) const
*/
void QTransform_map5()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QLineF * ptr = new QLineF( obj->map( *PQLINEF(1) ) );
    _qt4xhb_createReturnClass( ptr, "QLINEF", true );
  }
}

/*
QPolygonF map ( const QPolygonF & polygon ) const
*/
void QTransform_map6()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->map( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygon map ( const QPolygon & polygon ) const
*/
void QTransform_map7()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->map( *PQPOLYGON(1) ) );
    _qt4xhb_createReturnClass( ptr, "QPOLYGON", true );
  }
}

/*
QRegion map ( const QRegion & region ) const
*/
void QTransform_map8()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->map( *PQREGION(1) ) );
    _qt4xhb_createReturnClass( ptr, "QREGION", true );
  }
}

/*
QPainterPath map ( const QPainterPath & path ) const
*/
void QTransform_map9()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->map( *PQPAINTERPATH(1) ) );
    _qt4xhb_createReturnClass( ptr, "QPAINTERPATH", true );
  }
}

/*
void map ( int x, int y, int * tx, int * ty ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP10 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      int par3;
      int par4;
      obj->map( PINT(1), PINT(2), &par3, &par4 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[01]void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
//[02]QPointF map ( const QPointF & p ) const
//[03]QPoint map ( const QPoint & point ) const
//[04]QLine map ( const QLine & l ) const
//[05]QLineF map ( const QLineF & line ) const
//[06]QPolygonF map ( const QPolygonF & polygon ) const
//[07]QPolygon map ( const QPolygon & polygon ) const
//[08]QRegion map ( const QRegion & region ) const
//[09]QPainterPath map ( const QPainterPath & path ) const
//[10]void map ( int x, int y, int * tx, int * ty ) const

HB_FUNC_STATIC( QTRANSFORM_MAP )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QTransform_map2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTransform_map3();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QTransform_map4();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QTransform_map5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QTransform_map6();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QTransform_map7();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QTransform_map8();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QTransform_map9();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP10 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF mapRect ( const QRectF & rectangle ) const
*/
void QTransform_mapRect1()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRect( *PQRECTF(1) ) );
    _qt4xhb_createReturnClass( ptr, "QRECTF", true );
  }
}

/*
QRect mapRect ( const QRect & rectangle ) const
*/
void QTransform_mapRect2()
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QRect * ptr = new QRect( obj->mapRect( *PQRECT(1) ) );
    _qt4xhb_createReturnClass( ptr, "QRECT", true );
  }
}

//[1]QRectF mapRect ( const QRectF & rectangle ) const
//[2]QRect mapRect ( const QRect & rectangle ) const

HB_FUNC_STATIC( QTRANSFORM_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QTransform_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QTransform_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon mapToPolygon ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPTOPOLYGON )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->mapToPolygon( *PQRECT(1) ) );
      _qt4xhb_createReturnClass( ptr, "QPOLYGON", true );
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
void reset ()
*/
HB_FUNC_STATIC( QTRANSFORM_RESET )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reset();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMatrix ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )
*/
HB_FUNC_STATIC( QTRANSFORM_SETMATRIX )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) )
    {
#endif
      obj->setMatrix( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTransform transposed () const
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSPOSED )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTransform * ptr = new QTransform( obj->transposed() );
      _qt4xhb_createReturnClass( ptr, "QTRANSFORM", true );
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
TransformationType type () const
*/
HB_FUNC_STATIC( QTRANSFORM_TYPE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
static QTransform fromScale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMSCALE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
#endif
    QTransform * ptr = new QTransform( QTransform::fromScale( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass( ptr, "QTRANSFORM", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QTransform fromTranslate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMTRANSLATE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
#endif
    QTransform * ptr = new QTransform( QTransform::fromTranslate( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass( ptr, "QTRANSFORM", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool quadToQuad ( const QPolygonF & one, const QPolygonF & two, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOQUAD )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISQPOLYGONF(1) && ISQPOLYGONF(2) && ISQTRANSFORM(3) )
  {
#endif
    RBOOL( QTransform::quadToQuad( *PQPOLYGONF(1), *PQPOLYGONF(2), *PQTRANSFORM(3) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool quadToSquare ( const QPolygonF & quad, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOSQUARE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2) )
  {
#endif
    RBOOL( QTransform::quadToSquare( *PQPOLYGONF(1), *PQTRANSFORM(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool squareToQuad ( const QPolygonF & quad, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_SQUARETOQUAD )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2) )
  {
#endif
    RBOOL( QTransform::squareToQuad( *PQPOLYGONF(1), *PQTRANSFORM(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTRANSFORM_NEWFROM );
}

HB_FUNC_STATIC( QTRANSFORM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTRANSFORM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
