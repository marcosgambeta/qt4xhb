/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activationObject
   METHOD argument
   METHOD argumentCount
   METHOD argumentsObject
   METHOD backtrace
   METHOD callee
   METHOD engine
   METHOD isCalledAsConstructor
   METHOD parentContext
   METHOD setActivationObject
   METHOD setThisObject
   METHOD state
   METHOD thisObject
   METHOD throwError
   METHOD throwValue
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QScriptEngine>

HB_FUNC_STATIC( QSCRIPTCONTEXT_DELETE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QScriptValue activationObject () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->activationObject () );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QScriptValue argument ( int index ) const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->argument ( PINT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
int argumentCount () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTCOUNT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->argumentCount () );
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
QScriptValue argumentsObject () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ARGUMENTSOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->argumentsObject () );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QStringList backtrace () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_BACKTRACE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->backtrace () );
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
QScriptValue callee () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_CALLEE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->callee () );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QScriptEngine * engine () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ENGINE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptEngine * ptr = obj->engine ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QSCRIPTENGINE" );
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
bool isCalledAsConstructor () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ISCALLEDASCONSTRUCTOR )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCalledAsConstructor () );
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
QScriptContext * parentContext () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_PARENTCONTEXT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptContext * ptr = obj->parentContext ();
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT", false );
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
void setActivationObject ( const QScriptValue & activation )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setActivationObject ( *PQSCRIPTVALUE(1) );
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
void setThisObject ( const QScriptValue & thisObject )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_SETTHISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setThisObject ( *PQSCRIPTVALUE(1) );
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
ExecutionState state () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_STATE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
QScriptValue thisObject () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THISOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->thisObject () );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QScriptValue throwError ( Error error, const QString & text )
*/
void QScriptContext_throwError1 ()
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->throwError ( (QScriptContext::Error) hb_parni(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

/*
QScriptValue throwError ( const QString & text )
*/
void QScriptContext_throwError2 ()
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QScriptValue * ptr = new QScriptValue( obj->throwError ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue throwError ( Error error, const QString & text )
//[2]QScriptValue throwError ( const QString & text )

HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QScriptContext_throwError1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QScriptContext_throwError2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue throwValue ( const QScriptValue & value )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWVALUE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->throwValue ( *PQSCRIPTVALUE(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QString toString () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_TOSTRING )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString () );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTCONTEXT_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTCONTEXT_SETSELFDESTRUCTION )
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