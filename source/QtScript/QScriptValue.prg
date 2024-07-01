/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QOBJECT
REQUEST QREGEXP
REQUEST QSCRIPTCLASS
REQUEST QVARIANT
#endif

CLASS QScriptValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new10
   METHOD new
   METHOD delete
   METHOD call1
   METHOD call2
   METHOD call
   METHOD construct1
   METHOD construct2
   METHOD construct
   METHOD data
   METHOD equals
   METHOD instanceOf
   METHOD isArray
   METHOD isBool
   METHOD isDate
   METHOD isError
   METHOD isFunction
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQMetaObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isValid
   METHOD isVariant
   METHOD lessThan
   METHOD prototype
   METHOD scriptClass
   METHOD setData
   METHOD setPrototype
   METHOD setScriptClass
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt32
   METHOD toQObject
   METHOD toRegExp
   METHOD toString
   METHOD toUInt16
   METHOD toUInt32
   METHOD toVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScriptValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtScript/QScriptValue>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QDateTime>
#include <QtCore/QRegExp>
#include <QtCore/QVariant>

/*
QScriptValue( QScriptValue::SpecialValue value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW3 )
{
  QScriptValue * obj = new QScriptValue( ( QScriptValue::SpecialValue ) hb_parni(1) );
  Qt4xHb::returnNewObject(obj, true);
}

/*
QScriptValue( int value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW5 )
{
  QScriptValue * obj = new QScriptValue( PINT(1) );
  Qt4xHb::returnNewObject(obj, true);
}

/*
QScriptValue( uint value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW6 )
{
  QScriptValue * obj = new QScriptValue( PUINT(1) );
  Qt4xHb::returnNewObject(obj, true);
}

/*
QScriptValue( const char * value )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW10 )
{
  QScriptValue * obj = new QScriptValue( PCONSTCHAR(1) );
  Qt4xHb::returnNewObject(obj, true);
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QScriptValue()
    */
    QScriptValue * obj = new QScriptValue();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    /*
    QScriptValue( const QScriptValue & other )
    */
    QScriptValue * obj = new QScriptValue( *PQSCRIPTVALUE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW3 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW6 );
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW7 );
  }
  else if( ISNUMPAR(1) && HB_ISLOG(1) )
  {
    /*
    QScriptValue( bool value )
    */
    QScriptValue * obj = new QScriptValue( PBOOL(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QScriptValue( const QString & value )
    */
    QScriptValue * obj = new QScriptValue( PQSTRING(1) );
    Qt4xHb::returnNewObject(obj, true);
    //HB_FUNC_EXEC( QSCRIPTVALUE_NEW10 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_DELETE )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QScriptValue call ( const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != NULL )
  {
    QScriptValue par1 = HB_ISNIL(1)? QScriptValue() : *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValueList par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QScriptValue * ptr = new QScriptValue( obj->call ( par1, par2 ) );
    Qt4xHb::createReturnClass ( ptr, "QSCRIPTVALUE");
  }
}

/*
QScriptValue call( const QScriptValue & thisObject, const QScriptValue & arguments )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CALL2 )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->call( *PQSCRIPTVALUE(1), *PQSCRIPTVALUE(2)) );
      Qt4xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
  if( ISBETWEEN(0, 2) && (ISQSCRIPTVALUE(1) || HB_ISNIL(1)) && (HB_ISOBJECT(2) || HB_ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CALL2 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScriptValue construct ( const QScriptValueList & args = QScriptValueList() )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT1 )
{
  QScriptValue * obj = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj != NULL )
  {
    QScriptValueList par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    QScriptValue * ptr = new QScriptValue( obj->construct ( par1 ) );
    Qt4xHb::createReturnClass ( ptr, "QSCRIPTVALUE");
  }
}

/*
QScriptValue construct( const QScriptValue & arguments )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT2 )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->construct( *PQSCRIPTVALUE(1)) );
      Qt4xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISBETWEEN(0, 1) && (HB_ISOBJECT(1) || HB_ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_CONSTRUCT2 );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QScriptValue data() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_DATA )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->data() );
      Qt4xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool equals( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_EQUALS )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->equals( *PQSCRIPTVALUE(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool instanceOf( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_INSTANCEOF )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->instanceOf( *PQSCRIPTVALUE(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isArray() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISARRAY )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isArray() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISBOOL )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBool() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isDate() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISDATE )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDate() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isError() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISERROR )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isError() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isFunction() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISFUNCTION )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFunction() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNULL )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isNumber() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNUMBER )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNumber() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISOBJECT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isObject() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isQMetaObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQMETAOBJECT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQMetaObject() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQOBJECT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQObject() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISREGEXP )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRegExp() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISSTRING )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isString() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isUndefined() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISUNDEFINED )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isUndefined() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVALID )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVARIANT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVariant() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool lessThan( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_LESSTHAN )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->lessThan( *PQSCRIPTVALUE(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_PROTOTYPE )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->prototype() );
      Qt4xHb::createReturnClass(ptr, "QSCRIPTVALUE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QScriptClass * scriptClass() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SCRIPTCLASS )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptClass * ptr = obj->scriptClass();
      Qt4xHb::createReturnClass(ptr, "QSCRIPTCLASS", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setData( const QScriptValue & data )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETDATA )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setData( *PQSCRIPTVALUE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPrototype( const QScriptValue & prototype )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETPROTOTYPE )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setPrototype( *PQSCRIPTVALUE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setScriptClass( QScriptClass * scriptClass )
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETSCRIPTCLASS )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTCLASS(1) )
    {
#endif
      obj->setScriptClass( PQSCRIPTCLASS(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool strictlyEquals( const QScriptValue & other ) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_STRICTLYEQUALS )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->strictlyEquals( *PQSCRIPTVALUE(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool toBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOBOOL )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->toBool() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TODATETIME )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toDateTime() );
      Qt4xHb::createReturnClass(ptr, "QDATETIME", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qint32 toInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINT32 )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT32( obj->toInt32() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QObject * toQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQOBJECT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->toQObject();
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QRegExp toRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOREGEXP )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->toRegExp() );
      Qt4xHb::createReturnClass(ptr, "QREGEXP", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOSTRING )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
quint16 toUInt16() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT16 )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->toUInt16() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
quint32 toUInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT32 )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->toUInt32() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOVARIANT )
{
  QScriptValue * obj = static_cast<QScriptValue*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->toVariant() );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSCRIPTVALUE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
