/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
REQUEST QSQLERROR
REQUEST QSQLINDEX
REQUEST QSQLQUERY
REQUEST QSQLRECORD
#endif

CLASS QSqlDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD commit
   METHOD connectOptions
   METHOD connectionName
   METHOD databaseName
   METHOD driver
   METHOD driverName
   METHOD exec
   METHOD hostName
   METHOD isOpen
   METHOD isOpenError
   METHOD isValid
   METHOD lastError
   METHOD numericalPrecisionPolicy
   METHOD open
   METHOD password
   METHOD port
   METHOD primaryIndex
   METHOD record
   METHOD rollback
   METHOD setConnectOptions
   METHOD setDatabaseName
   METHOD setHostName
   METHOD setNumericalPrecisionPolicy
   METHOD setPassword
   METHOD setPort
   METHOD setUserName
   METHOD tables
   METHOD transaction
   METHOD userName
   METHOD addDatabase
   METHOD cloneDatabase
   METHOD connectionNames
   METHOD contains
   METHOD database
   METHOD drivers
   METHOD isDriverAvailable
   METHOD registerSqlDriver
   METHOD removeDatabase

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtSql/QSqlDatabase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtSql/QSqlQuery>
#include <QtSql/QSqlError>
#include <QtCore/QStringList>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>
#include <QtSql/QSqlDriver>

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QSqlDatabase()
    */
    QSqlDatabase * obj = new QSqlDatabase();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    /*
    QSqlDatabase( const QSqlDatabase & other )
    */
    QSqlDatabase * obj = new QSqlDatabase( *PQSQLDATABASE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QSQLDATABASE_DELETE )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void close()
*/
HB_FUNC_STATIC( QSQLDATABASE_CLOSE )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close();
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
bool commit()
*/
HB_FUNC_STATIC( QSQLDATABASE_COMMIT )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->commit() );
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
QString connectOptions() const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTOPTIONS )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->connectOptions() );
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
QString connectionName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->connectionName() );
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
QString databaseName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASENAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->databaseName() );
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
QSqlDriver * driver() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVER )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSqlDriver * ptr = obj->driver();
      Qt4xHb::createReturnQObjectClass(ptr, "QSQLDRIVER");
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
QString driverName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->driverName() );
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
QSqlQuery exec( const QString & query = QString() ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_EXEC )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) )
    {
#endif
      QSqlQuery * ptr = new QSqlQuery( obj->exec( OPQSTRING( 1, QString() ) ) );
      Qt4xHb::createReturnClass(ptr, "QSQLQUERY", true);
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
QString hostName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_HOSTNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->hostName() );
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
bool isOpen() const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPEN )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpen() );
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
bool isOpenError() const
*/
HB_FUNC_STATIC( QSQLDATABASE_ISOPENERROR )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isOpenError() );
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
HB_FUNC_STATIC( QSQLDATABASE_ISVALID )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

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
QSqlError lastError() const
*/
HB_FUNC_STATIC( QSQLDATABASE_LASTERROR )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSqlError * ptr = new QSqlError( obj->lastError() );
      Qt4xHb::createReturnClass(ptr, "QSQLERROR", true);
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
QSql::NumericalPrecisionPolicy numericalPrecisionPolicy() const
*/
HB_FUNC_STATIC( QSQLDATABASE_NUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->numericalPrecisionPolicy() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    /*
    bool open()
    */
    QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open() );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    bool open( const QString & user, const QString & password )
    */
    QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open( PQSTRING(1), PQSTRING(2) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString password() const
*/
HB_FUNC_STATIC( QSQLDATABASE_PASSWORD )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->password() );
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
int port() const
*/
HB_FUNC_STATIC( QSQLDATABASE_PORT )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->port() );
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
QSqlIndex primaryIndex( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_PRIMARYINDEX )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QSqlIndex * ptr = new QSqlIndex( obj->primaryIndex( PQSTRING(1) ) );
      Qt4xHb::createReturnClass(ptr, "QSQLINDEX", true);
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
QSqlRecord record( const QString & tablename ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_RECORD )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QSqlRecord * ptr = new QSqlRecord( obj->record( PQSTRING(1) ) );
      Qt4xHb::createReturnClass(ptr, "QSQLRECORD", true);
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
bool rollback()
*/
HB_FUNC_STATIC( QSQLDATABASE_ROLLBACK )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->rollback() );
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
void setConnectOptions( const QString & options = QString() )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETCONNECTOPTIONS )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) )
    {
#endif
      obj->setConnectOptions( OPQSTRING( 1, QString() ) );
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
void setDatabaseName( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETDATABASENAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setDatabaseName( PQSTRING(1) );
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
void setHostName( const QString & host )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETHOSTNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setHostName( PQSTRING(1) );
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
void setNumericalPrecisionPolicy( QSql::NumericalPrecisionPolicy precisionPolicy )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETNUMERICALPRECISIONPOLICY )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setNumericalPrecisionPolicy( ( QSql::NumericalPrecisionPolicy ) hb_parni(1) );
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
void setPassword( const QString & password )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPASSWORD )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPassword( PQSTRING(1) );
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
void setPort( int port )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETPORT )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPort( PINT(1) );
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
void setUserName( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_SETUSERNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setUserName( PQSTRING(1) );
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
QStringList tables( QSql::TableType type = QSql::Tables ) const
*/
HB_FUNC_STATIC( QSQLDATABASE_TABLES )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RQSTRINGLIST( obj->tables( HB_ISNIL(1) ? ( QSql::TableType ) QSql::Tables : ( QSql::TableType ) hb_parni(1) ) );
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
bool transaction()
*/
HB_FUNC_STATIC( QSQLDATABASE_TRANSACTION )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->transaction() );
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
QString userName() const
*/
HB_FUNC_STATIC( QSQLDATABASE_USERNAME )
{
  QSqlDatabase * obj = static_cast<QSqlDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->userName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
  {
    /*
    static QSqlDatabase addDatabase( const QString & type, const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
    */

    QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase( PQSTRING(1), OPQSTRING( 2, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
    Qt4xHb::createReturnClass(ptr, "QSQLDATABASE", true);
  }
  else if( ISBETWEEN(1, 2) && ISQSQLDRIVER(1) && ( HB_ISCHAR(2) || HB_ISNIL(2) ) )
  {
    /*
    static QSqlDatabase addDatabase( QSqlDriver * driver, const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
    */

    QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase( PQSQLDRIVER(1), OPQSTRING( 2, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
    Qt4xHb::createReturnClass(ptr, "QSQLDATABASE", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QSqlDatabase cloneDatabase( const QSqlDatabase & other, const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_CLONEDATABASE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQSQLDATABASE(1) && HB_ISCHAR(2) )
  {
#endif
    QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::cloneDatabase( *PQSQLDATABASE(1), PQSTRING(2) ) );
    Qt4xHb::createReturnClass(ptr, "QSQLDATABASE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList connectionNames()
*/
HB_FUNC_STATIC( QSQLDATABASE_CONNECTIONNAMES )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QSqlDatabase::connectionNames() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool contains( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ) )
*/
HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 1) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) )
  {
#endif
    RBOOL( QSqlDatabase::contains( OPQSTRING( 1, QLatin1String( QSqlDatabase::defaultConnection ) ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QSqlDatabase database( const QString & connectionName = QLatin1String( QSqlDatabase::defaultConnection ), bool open = true )
*/
HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 2) && ( HB_ISCHAR(1) || HB_ISNIL(1) ) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
  {
#endif
    QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database( OPQSTRING( 1, QLatin1String( QSqlDatabase::defaultConnection ) ), OPBOOL( 2, true ) ) );
    Qt4xHb::createReturnClass(ptr, "QSQLDATABASE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList drivers()
*/
HB_FUNC_STATIC( QSQLDATABASE_DRIVERS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QSqlDatabase::drivers() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool isDriverAvailable( const QString & name )
*/
HB_FUNC_STATIC( QSQLDATABASE_ISDRIVERAVAILABLE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QSqlDatabase::isDriverAvailable( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void registerSqlDriver( const QString & name, QSqlDriverCreatorBase * creator )
*/
HB_FUNC_STATIC( QSQLDATABASE_REGISTERSQLDRIVER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQSQLDRIVERCREATORBASE(2) )
  {
#endif
    QSqlDatabase::registerSqlDriver( PQSTRING(1), PQSQLDRIVERCREATORBASE(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void removeDatabase( const QString & connectionName )
*/
HB_FUNC_STATIC( QSQLDATABASE_REMOVEDATABASE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QSqlDatabase::removeDatabase( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QSQLDATABASE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QSQLDATABASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
