/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAOBJECT
REQUEST QOBJECT
REQUEST QUUID
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

PROCEDURE destroyObject() CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <ActiveQt/QAxFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QAXFACTORY_DELETE )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
virtual QUuid appID() const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QUuid * ptr = new QUuid( obj->appID() );
      Qt4xHb::createReturnClass( ptr, "QUUID", true );
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
virtual QUuid classID( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QUuid * ptr = new QUuid( obj->classID( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QUUID", true );
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
virtual QObject * createObject( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QObject * ptr = obj->createObject( PQSTRING( 1 ) );
      Qt4xHb::createReturnQObjectClass( ptr, "QOBJECT" );
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
virtual QUuid eventsID( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QUuid * ptr = new QUuid( obj->eventsID( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QUUID", true );
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
virtual QString exposeToSuperClass( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      RQSTRING( obj->exposeToSuperClass( PQSTRING( 1 ) ) );
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
virtual QStringList featureList() const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRINGLIST( obj->featureList() );
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
virtual bool hasStockEvents( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      RBOOL( obj->hasStockEvents( PQSTRING( 1 ) ) );
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
virtual QUuid interfaceID( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      QUuid * ptr = new QUuid( obj->interfaceID( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QUUID", true );
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
virtual bool isService() const
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isService() );
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
virtual const QMetaObject * metaObject( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      const QMetaObject * ptr = obj->metaObject( PQSTRING( 1 ) );
      Qt4xHb::createReturnClass( ptr, "QMETAOBJECT", false );
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
virtual void registerClass( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISCHAR( 1 ) && ISQSETTINGS( 2 ) )
    {
#endif
      obj->registerClass( PQSTRING( 1 ), PQSETTINGS( 2 ) );
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
virtual bool stayTopLevel( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      RBOOL( obj->stayTopLevel( PQSTRING( 1 ) ) );
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
virtual QUuid typeLibID() const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QUuid * ptr = new QUuid( obj->typeLibID() );
      Qt4xHb::createReturnClass( ptr, "QUUID", true );
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
virtual void unregisterClass( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISCHAR( 1 ) && ISQSETTINGS( 2 ) )
    {
#endif
      obj->unregisterClass( PQSTRING( 1 ), PQSETTINGS( 2 ) );
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
virtual bool validateLicenseKey( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC_STATIC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = static_cast< QAxFactory * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISCHAR( 1 ) && ISCHAR( 2 ) )
    {
#endif
      RBOOL( obj->validateLicenseKey( PQSTRING( 1 ), PQSTRING( 2 ) ) );
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
static bool isServer()
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RBOOL( QAxFactory::isServer() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool registerActiveObject( QObject * object )
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && ISQOBJECT( 1 ) )
  {
#endif
    RBOOL( QAxFactory::registerActiveObject( PQOBJECT( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString serverDirPath()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERDIRPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RQSTRING( QAxFactory::serverDirPath() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString serverFilePath()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERFILEPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RQSTRING( QAxFactory::serverFilePath() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool startServer( QAxFactory::ServerType type = QAxFactory::MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 0, 1 ) && ( ISNUM( 1 ) || ISNIL( 1 ) ) )
  {
#endif
    RBOOL( QAxFactory::startServer( ISNIL( 1 ) ? ( QAxFactory::ServerType ) QAxFactory::MultipleInstances : ( QAxFactory::ServerType ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool stopServer()
*/
HB_FUNC_STATIC( QAXFACTORY_STOPSERVER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RBOOL( QAxFactory::stopServer() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
