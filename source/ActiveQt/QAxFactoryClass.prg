/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QAxFactory INHERIT QObject

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAxFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QAXFACTORY_DELETE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QUuid appID () const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUuid * ptr = new QUuid( obj->appID () );
      _qt4xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->classID ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QObject * ptr = obj->createObject ( PQSTRING(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->eventsID ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->exposeToSuperClass ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QStringList featureList () const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->featureList () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool hasStockEvents ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->hasStockEvents ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QUuid * ptr = new QUuid( obj->interfaceID ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool isService () const
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isService () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      const QMetaObject * ptr = obj->metaObject ( PQSTRING(1) );
      _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQSETTINGS(2) )
    {
      obj->registerClass ( PQSTRING(1), PQSETTINGS(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool stayTopLevel ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->stayTopLevel ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QUuid typeLibID () const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QUuid * ptr = new QUuid( obj->typeLibID () );
      _qt4xhb_createReturnClass ( ptr, "QUUID", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQSETTINGS(2) )
    {
      obj->unregisterClass ( PQSTRING(1), PQSETTINGS(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC_STATIC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      RBOOL( obj->validateLicenseKey ( PQSTRING(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static bool isServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVER )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QAxFactory::isServer () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool registerActiveObject ( QObject * object )
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
    if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
      RBOOL( QAxFactory::registerActiveObject ( PQOBJECT(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString serverDirPath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERDIRPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QAxFactory::serverDirPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString serverFilePath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERFILEPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QAxFactory::serverFilePath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
      RBOOL( QAxFactory::startServer ( ISNIL(1)? (QAxFactory::ServerType) QAxFactory::MultipleInstances : (QAxFactory::ServerType) hb_parni(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool stopServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_STOPSERVER )
{
    if( ISNUMPAR(0) )
  {
      RBOOL( QAxFactory::stopServer () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
