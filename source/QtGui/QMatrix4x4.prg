/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMATRIX3X3
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QMatrix4x4

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD column
   METHOD determinant
   METHOD fill
   METHOD flipCoordinates
   METHOD frustum
   METHOD inverted
   METHOD isIdentity
   METHOD lookAt
   METHOD map
   METHOD mapRect
   METHOD mapVector
   METHOD normalMatrix
   METHOD optimize
   METHOD ortho
   METHOD perspective
   METHOD rotate
   METHOD row
   METHOD scale
   METHOD setColumn
   METHOD setRow
   METHOD setToIdentity
   METHOD toTransform
   METHOD translate
   METHOD transposed

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMatrix4x4
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QMatrix4x4>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtGui/QMatrix>
#include <QtGui/QTransform>

/*
QMatrix4x4()
*/
void QMatrix4x4_new1()
{
  QMatrix4x4 * obj = new QMatrix4x4();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QMatrix4x4( qreal m11, qreal m12, qreal m13, qreal m14, qreal m21, qreal m22, qreal m23, qreal m24, qreal m31, qreal m32, qreal m33, qreal m34, qreal m41, qreal m42, qreal m43, qreal m44 )
*/
void QMatrix4x4_new3()
{
  QMatrix4x4 * obj = new QMatrix4x4( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), PQREAL( 5 ), PQREAL( 6 ), PQREAL( 7 ), PQREAL( 8 ), PQREAL( 9 ), PQREAL( 10 ), PQREAL( 11 ), PQREAL( 12 ), PQREAL( 13 ), PQREAL( 14 ), PQREAL( 15 ), PQREAL( 16 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QMatrix4x4( const QTransform & transform )
*/
void QMatrix4x4_new5()
{
  QMatrix4x4 * obj = new QMatrix4x4( *PQTRANSFORM( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QMATRIX4X4_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QMatrix4x4_new1();
  }
  else if( ISNUMPAR( 16 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ISNUM( 5 ) && ISNUM( 6 ) && ISNUM( 7 ) && ISNUM( 8 ) && ISNUM( 9 ) && ISNUM( 10 ) && ISNUM( 11 ) && ISNUM( 12 ) && ISNUM( 13 ) && ISNUM( 14 ) && ISNUM( 15 ) && ISNUM( 16 ) )
  {
    QMatrix4x4_new3();
  }
  else if( ISNUMPAR( 1 ) && ISQTRANSFORM( 1 ) )
  {
    QMatrix4x4_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMATRIX4X4_DELETE )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

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
QVector4D column( int index ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_COLUMN )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->column( PINT( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QVECTOR4D", true );
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
qreal determinant() const
*/
HB_FUNC_STATIC( QMATRIX4X4_DETERMINANT )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
void fill( qreal value )
*/
HB_FUNC_STATIC( QMATRIX4X4_FILL )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->fill( PQREAL( 1 ) );
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
void flipCoordinates()
*/
HB_FUNC_STATIC( QMATRIX4X4_FLIPCOORDINATES )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->flipCoordinates();
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
void frustum( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_FRUSTUM )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 6 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ISNUM( 5 ) && ISNUM( 6 ) )
    {
#endif
      obj->frustum( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), PQREAL( 5 ), PQREAL( 6 ) );
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
QMatrix4x4 inverted( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_INVERTED )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ISOPTLOG( 1 ) )
    {
#endif
      bool par1;
      QMatrix4x4 * ptr = new QMatrix4x4( obj->inverted( &par1 ) );
      Qt4xHb::createReturnClass( ptr, "QMATRIX4X4", true );
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
bool isIdentity() const
*/
HB_FUNC_STATIC( QMATRIX4X4_ISIDENTITY )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
void lookAt( const QVector3D & eye, const QVector3D & center, const QVector3D & up )
*/
HB_FUNC_STATIC( QMATRIX4X4_LOOKAT )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 3 ) && ISQVECTOR3D( 1 ) && ISQVECTOR3D( 2 ) && ISQVECTOR3D( 3 ) )
    {
#endif
      obj->lookAt( *PQVECTOR3D( 1 ), *PQVECTOR3D( 2 ), *PQVECTOR3D( 3 ) );
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
QPoint map( const QPoint & point ) const
*/
void QMatrix4x4_map1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->map( *PQPOINT( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QPOINT", true );
  }
}

/*
QPointF map( const QPointF & point ) const
*/
void QMatrix4x4_map2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->map( *PQPOINTF( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QPOINTF", true );
  }
}

/*
QVector3D map( const QVector3D & point ) const
*/
void QMatrix4x4_map3()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->map( *PQVECTOR3D( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QVECTOR3D", true );
  }
}

/*
QVector4D map( const QVector4D & point ) const
*/
void QMatrix4x4_map4()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->map( *PQVECTOR4D( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QVECTOR4D", true );
  }
}

HB_FUNC_STATIC( QMATRIX4X4_MAP )
{
  if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QMatrix4x4_map1();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINTF( 1 ) )
  {
    QMatrix4x4_map2();
  }
  else if( ISNUMPAR( 1 ) && ISQVECTOR3D( 1 ) )
  {
    QMatrix4x4_map3();
  }
  else if( ISNUMPAR( 1 ) && ISQVECTOR4D( 1 ) )
  {
    QMatrix4x4_map4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect mapRect( const QRect & rect ) const
*/
void QMatrix4x4_mapRect1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->mapRect( *PQRECT( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
QRectF mapRect( const QRectF & rect ) const
*/
void QMatrix4x4_mapRect2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->mapRect( *PQRECTF( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QRECTF", true );
  }
}

HB_FUNC_STATIC( QMATRIX4X4_MAPRECT )
{
  if( ISNUMPAR( 1 ) && ISQRECT( 1 ) )
  {
    QMatrix4x4_mapRect1();
  }
  else if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
  {
    QMatrix4x4_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVector3D mapVector( const QVector3D & vector ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_MAPVECTOR )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQVECTOR3D( 1 ) )
    {
#endif
      QVector3D * ptr = new QVector3D( obj->mapVector( *PQVECTOR3D( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QVECTOR3D", true );
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
QMatrix3x3 normalMatrix() const
*/
HB_FUNC_STATIC( QMATRIX4X4_NORMALMATRIX )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QMatrix3x3 * ptr = new QMatrix3x3( obj->normalMatrix() );
      Qt4xHb::createReturnClass( ptr, "QMATRIX3X3", true );
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
void optimize()
*/
HB_FUNC_STATIC( QMATRIX4X4_OPTIMIZE )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->optimize();
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
void ortho( qreal left, qreal right, qreal bottom, qreal top, qreal nearPlane, qreal farPlane )
*/
void QMatrix4x4_ortho1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), PQREAL( 5 ), PQREAL( 6 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho( const QRect & rect )
*/
void QMatrix4x4_ortho2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho( *PQRECT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ortho( const QRectF & rect )
*/
void QMatrix4x4_ortho3()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->ortho( *PQRECTF( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMATRIX4X4_ORTHO )
{
  if( ISNUMPAR( 6 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ISNUM( 5 ) && ISNUM( 6 ) )
  {
    QMatrix4x4_ortho1();
  }
  else if( ISNUMPAR( 1 ) && ISQRECT( 1 ) )
  {
    QMatrix4x4_ortho2();
  }
  else if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
  {
    QMatrix4x4_ortho3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void perspective( qreal angle, qreal aspect, qreal nearPlane, qreal farPlane )
*/
HB_FUNC_STATIC( QMATRIX4X4_PERSPECTIVE )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 4 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) )
    {
#endif
      obj->perspective( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ) );
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
void rotate( qreal angle, const QVector3D & vector )
*/
void QMatrix4x4_rotate1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate( PQREAL( 1 ), *PQVECTOR3D( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate( const QQuaternion & quaternion )
*/
void QMatrix4x4_rotate2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate( *PQQUATERNION( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void rotate( qreal angle, qreal x, qreal y, qreal z = 0.0f )
*/
void QMatrix4x4_rotate3()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->rotate( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), OPQREAL( 4, 0.0f ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMATRIX4X4_ROTATE )
{
  if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISQVECTOR3D( 2 ) )
  {
    QMatrix4x4_rotate1();
  }
  else if( ISNUMPAR( 1 ) && ISQQUATERNION( 1 ) )
  {
    QMatrix4x4_rotate2();
  }
  else if( ISBETWEEN( 3, 4 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ( ISNUM( 4 ) || ISNIL( 4 ) ) )
  {
    QMatrix4x4_rotate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVector4D row( int index ) const
*/
HB_FUNC_STATIC( QMATRIX4X4_ROW )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      QVector4D * ptr = new QVector4D( obj->row( PINT( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QVECTOR4D", true );
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
void scale( const QVector3D & vector )
*/
void QMatrix4x4_scale1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale( *PQVECTOR3D( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale( qreal x, qreal y )
*/
void QMatrix4x4_scale2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale( PQREAL( 1 ), PQREAL( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale( qreal x, qreal y, qreal z )
*/
void QMatrix4x4_scale3()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale( qreal factor )
*/
void QMatrix4x4_scale4()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scale( PQREAL( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMATRIX4X4_SCALE )
{
  if( ISNUMPAR( 1 ) && ISQVECTOR3D( 1 ) )
  {
    QMatrix4x4_scale1();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
  {
    QMatrix4x4_scale2();
  }
  else if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) )
  {
    QMatrix4x4_scale3();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QMatrix4x4_scale4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColumn( int index, const QVector4D & value )
*/
HB_FUNC_STATIC( QMATRIX4X4_SETCOLUMN )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISQVECTOR4D( 2 ) )
    {
#endif
      obj->setColumn( PINT( 1 ), *PQVECTOR4D( 2 ) );
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
void setRow( int index, const QVector4D & value )
*/
HB_FUNC_STATIC( QMATRIX4X4_SETROW )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISQVECTOR4D( 2 ) )
    {
#endif
      obj->setRow( PINT( 1 ), *PQVECTOR4D( 2 ) );
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
void setToIdentity()
*/
HB_FUNC_STATIC( QMATRIX4X4_SETTOIDENTITY )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setToIdentity();
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
QTransform toTransform() const
*/
void QMatrix4x4_toTransform1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform() );
    Qt4xHb::createReturnClass( ptr, "QTRANSFORM", true );
  }
}

/*
QTransform toTransform( qreal distanceToPlane ) const
*/
void QMatrix4x4_toTransform2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTransform * ptr = new QTransform( obj->toTransform( PQREAL( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QTRANSFORM", true );
  }
}

HB_FUNC_STATIC( QMATRIX4X4_TOTRANSFORM )
{
  if( ISNUMPAR( 0 ) )
  {
    QMatrix4x4_toTransform1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QMatrix4x4_toTransform2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void translate( const QVector3D & vector )
*/
void QMatrix4x4_translate1()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate( *PQVECTOR3D( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate( qreal x, qreal y )
*/
void QMatrix4x4_translate2()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate( PQREAL( 1 ), PQREAL( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate( qreal x, qreal y, qreal z )
*/
void QMatrix4x4_translate3()
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QMATRIX4X4_TRANSLATE )
{
  if( ISNUMPAR( 1 ) && ISQVECTOR3D( 1 ) )
  {
    QMatrix4x4_translate1();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
  {
    QMatrix4x4_translate2();
  }
  else if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) )
  {
    QMatrix4x4_translate3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMatrix4x4 transposed() const
*/
HB_FUNC_STATIC( QMATRIX4X4_TRANSPOSED )
{
  QMatrix4x4 * obj = ( QMatrix4x4 * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QMatrix4x4 * ptr = new QMatrix4x4( obj->transposed() );
      Qt4xHb::createReturnClass( ptr, "QMATRIX4X4", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) );
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

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMATRIX4X4_NEWFROM );
}

HB_FUNC_STATIC( QMATRIX4X4_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMATRIX4X4_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
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
