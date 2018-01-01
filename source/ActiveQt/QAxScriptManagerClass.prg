/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QAXSCRIPT
#endif

CLASS QAxScriptManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addObject
   METHOD call
   METHOD functions
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter

   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAxScriptManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QAxScriptManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAxScriptManager * o = new QAxScriptManager ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_DELETE )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addObject ( QAxBase * object )
*/
void QAxScriptManager_addObject1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addObject ( PQAXBASE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addObject ( QObject * object )
*/
void QAxScriptManager_addObject2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addObject ( PQOBJECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addObject ( QAxBase * object )
//[2]void addObject ( QObject * object )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if( ISNUMPAR(1) && ISQAXBASE(1) )
  {
    QAxScriptManager_addObject1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAxScriptManager_addObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxScriptManager_call1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(2), ISNIL(3)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(3), ISNIL(4)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(4), ISNIL(5)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(5), ISNIL(6)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(6), ISNIL(7)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(7), ISNIL(8)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(8), ISNIL(9)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(9) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant call ( const QString & function, QList<QVariant> & arguments )
*/
void QAxScriptManager_call2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QVariant> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScriptManager_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScriptManager_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList functions ( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_FUNCTIONS )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RQSTRINGLIST( obj->functions ( ISNIL(1)? (QAxScript::FunctionFlags) QAxScript::FunctionNames : (QAxScript::FunctionFlags) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAxScript * load ( const QString & code, const QString & name, const QString & language )
*/
void QAxScriptManager_load1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAxScript * ptr = obj->load ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
  }
}

/*
QAxScript * load ( const QString & file, const QString & name )
*/
void QAxScriptManager_load2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAxScript * ptr = obj->load ( PQSTRING(1), PQSTRING(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
  }
}

//[1]QAxScript * load ( const QString & code, const QString & name, const QString & language )
//[2]QAxScript * load ( const QString & file, const QString & name )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QAxScriptManager_load1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAxScriptManager_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAxScript * script ( const QString & name ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPT )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QAxScript * ptr = obj->script ( PQSTRING(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList scriptNames () const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTNAMES )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->scriptNames () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static bool registerEngine ( const QString & name, const QString & extension, const QString & code = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_REGISTERENGINE )
{
    if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
  {
      RBOOL( QAxScriptManager::registerEngine ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString scriptFileFilter ()
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTFILEFILTER )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QAxScriptManager::scriptFileFilter () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
