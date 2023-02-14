/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QPROCESSENVIRONMENT
#endif

CLASS QProcess INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD closeReadChannel
   METHOD closeWriteChannel
   METHOD environment
   METHOD error
   METHOD exitCode
   METHOD exitStatus
   METHOD nativeArguments
   METHOD processChannelMode
   METHOD processEnvironment
   METHOD readAllStandardError
   METHOD readAllStandardOutput
   METHOD readChannel
   METHOD setEnvironment
   METHOD setNativeArguments
   METHOD setProcessChannelMode
   METHOD setProcessEnvironment
   METHOD setReadChannel
   METHOD setStandardErrorFile
   METHOD setStandardInputFile
   METHOD setStandardOutputFile
   METHOD setStandardOutputProcess
   METHOD setWorkingDirectory
   METHOD start
   METHOD state
   METHOD waitForFinished
   METHOD waitForStarted
   METHOD workingDirectory
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD isSequential
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD kill
   METHOD terminate
   METHOD execute
   METHOD startDetached
   METHOD systemEnvironment

   METHOD onError
   METHOD onFinished
   METHOD onReadyReadStandardError
   METHOD onReadyReadStandardOutput
   METHOD onStarted
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QProcess
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QProcess>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

/*
QProcess( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPROCESS_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)) )
  {
    QProcess * obj = new QProcess( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPROCESS_DELETE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void closeReadChannel( QProcess::ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_CLOSEREADCHANNEL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->closeReadChannel( ( QProcess::ProcessChannel ) hb_parni(1) );
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
void closeWriteChannel()
*/
HB_FUNC_STATIC( QPROCESS_CLOSEWRITECHANNEL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->closeWriteChannel();
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
QStringList environment() const
*/
HB_FUNC_STATIC( QPROCESS_ENVIRONMENT )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->environment() );
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
QProcess::ProcessError error() const
*/
HB_FUNC_STATIC( QPROCESS_ERROR )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
int exitCode() const
*/
HB_FUNC_STATIC( QPROCESS_EXITCODE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->exitCode() );
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
QProcess::ExitStatus exitStatus() const
*/
HB_FUNC_STATIC( QPROCESS_EXITSTATUS )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->exitStatus() );
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
QString nativeArguments () const
*/
HB_FUNC_STATIC( QPROCESS_NATIVEARGUMENTS )
{
#if defined(Q_OS_WIN) 
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->nativeArguments() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}
/*
QProcess::ProcessChannelMode processChannelMode() const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSCHANNELMODE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->processChannelMode() );
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
QProcessEnvironment processEnvironment() const
*/
HB_FUNC_STATIC( QPROCESS_PROCESSENVIRONMENT )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QProcessEnvironment * ptr = new QProcessEnvironment( obj->processEnvironment() );
      Qt4xHb::createReturnClass(ptr, "QPROCESSENVIRONMENT", true);
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
QByteArray readAllStandardError()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDERROR )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->readAllStandardError() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QByteArray readAllStandardOutput()
*/
HB_FUNC_STATIC( QPROCESS_READALLSTANDARDOUTPUT )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->readAllStandardOutput() );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
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
QProcess::ProcessChannel readChannel() const
*/
HB_FUNC_STATIC( QPROCESS_READCHANNEL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->readChannel() );
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
void setEnvironment( const QStringList & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETENVIRONMENT )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setEnvironment( PQSTRINGLIST(1) );
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
void setNativeArguments ( const QString & arguments )
*/
HB_FUNC_STATIC( QPROCESS_SETNATIVEARGUMENTS )
{
#if defined(Q_OS_WIN) 
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setNativeArguments( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}
/*
void setProcessChannelMode( QProcess::ProcessChannelMode mode )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSCHANNELMODE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setProcessChannelMode( ( QProcess::ProcessChannelMode ) hb_parni(1) );
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
void setProcessEnvironment( const QProcessEnvironment & environment )
*/
HB_FUNC_STATIC( QPROCESS_SETPROCESSENVIRONMENT )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPROCESSENVIRONMENT(1) )
    {
#endif
      obj->setProcessEnvironment( *PQPROCESSENVIRONMENT(1) );
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
void setReadChannel( QProcess::ProcessChannel channel )
*/
HB_FUNC_STATIC( QPROCESS_SETREADCHANNEL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setReadChannel( ( QProcess::ProcessChannel ) hb_parni(1) );
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
void setStandardErrorFile( const QString & fileName, QIODevice::OpenMode mode = QIODevice::Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDERRORFILE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      obj->setStandardErrorFile( PQSTRING(1), HB_ISNIL(2) ? ( QIODevice::OpenMode ) QIODevice::Truncate : ( QIODevice::OpenMode ) hb_parni(2) );
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
void setStandardInputFile( const QString & fileName )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDINPUTFILE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setStandardInputFile( PQSTRING(1) );
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
void setStandardOutputFile( const QString & fileName, QIODevice::OpenMode mode = QIODevice::Truncate )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTFILE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      obj->setStandardOutputFile( PQSTRING(1), HB_ISNIL(2) ? ( QIODevice::OpenMode ) QIODevice::Truncate : ( QIODevice::OpenMode ) hb_parni(2) );
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
void setStandardOutputProcess( QProcess * destination )
*/
HB_FUNC_STATIC( QPROCESS_SETSTANDARDOUTPUTPROCESS )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPROCESS(1) )
    {
#endif
      obj->setStandardOutputProcess( PQPROCESS(1) );
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
void setWorkingDirectory( const QString & dir )
*/
HB_FUNC_STATIC( QPROCESS_SETWORKINGDIRECTORY )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setWorkingDirectory( PQSTRING(1) );
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

HB_FUNC_STATIC( QPROCESS_START )
{
  if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISARRAY(2) && (HB_ISNUM(3) || HB_ISNIL(3)) )
  {
    /*
    void start( const QString & program, const QStringList & arguments, QIODevice::OpenMode mode = QIODevice::ReadWrite )
    */
    QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->start( PQSTRING(1), PQSTRINGLIST(2), HB_ISNIL(3) ? ( QIODevice::OpenMode ) QIODevice::ReadWrite : ( QIODevice::OpenMode ) hb_parni(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
  {
    /*
    void start( const QString & program, QIODevice::OpenMode mode = QIODevice::ReadWrite )
    */
    QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->start( PQSTRING(1), HB_ISNIL(2) ? ( QIODevice::OpenMode ) QIODevice::ReadWrite : ( QIODevice::OpenMode ) hb_parni(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QProcess::ProcessState state() const
*/
HB_FUNC_STATIC( QPROCESS_STATE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
bool waitForFinished( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORFINISHED )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->waitForFinished( OPINT( 1, 30000 )) );
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
bool waitForStarted( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORSTARTED )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->waitForStarted( OPINT( 1, 30000 )) );
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
QString workingDirectory() const
*/
HB_FUNC_STATIC( QPROCESS_WORKINGDIRECTORY )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->workingDirectory() );
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
virtual bool atEnd() const
*/
HB_FUNC_STATIC( QPROCESS_ATEND )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd() );
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
virtual qint64 bytesAvailable() const
*/
HB_FUNC_STATIC( QPROCESS_BYTESAVAILABLE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable() );
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
virtual qint64 bytesToWrite() const
*/
HB_FUNC_STATIC( QPROCESS_BYTESTOWRITE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesToWrite() );
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
virtual bool canReadLine() const
*/
HB_FUNC_STATIC( QPROCESS_CANREADLINE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canReadLine() );
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
virtual void close()
*/
HB_FUNC_STATIC( QPROCESS_CLOSE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual bool isSequential() const
*/
HB_FUNC_STATIC( QPROCESS_ISSEQUENTIAL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential() );
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
virtual bool waitForBytesWritten( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORBYTESWRITTEN )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->waitForBytesWritten( OPINT( 1, 30000 )) );
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
virtual bool waitForReadyRead( int msecs = 30000 )
*/
HB_FUNC_STATIC( QPROCESS_WAITFORREADYREAD )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->waitForReadyRead( OPINT( 1, 30000 )) );
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
void kill()
*/
HB_FUNC_STATIC( QPROCESS_KILL )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->kill();
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
void terminate()
*/
HB_FUNC_STATIC( QPROCESS_TERMINATE )
{
  QProcess * obj = qobject_cast<QProcess*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->terminate();
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

HB_FUNC_STATIC( QPROCESS_EXECUTE )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    /*
    static int execute( const QString & program, const QStringList & arguments )
    */

    RINT( QProcess::execute( PQSTRING(1), PQSTRINGLIST(2)) );
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static int execute( const QString & program )
    */

    RINT( QProcess::execute( PQSTRING(1)) );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPROCESS_STARTDETACHED )
{
  if( ISBETWEEN(3, 4) && HB_ISCHAR(1) && HB_ISARRAY(2) && HB_ISCHAR(3) )
  {
    /*
    static bool startDetached( const QString & program, const QStringList & arguments, const QString & workingDirectory, NULL )
    */

    RBOOL( QProcess::startDetached( PQSTRING(1), PQSTRINGLIST(2), PQSTRING(3), NULL ) );
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    /*
    static bool startDetached( const QString & program, const QStringList & arguments )
    */

    RBOOL( QProcess::startDetached( PQSTRING(1), PQSTRINGLIST(2)) );
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static bool startDetached( const QString & program )
    */

    RBOOL( QProcess::startDetached( PQSTRING(1)) );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QStringList systemEnvironment()
*/
HB_FUNC_STATIC( QPROCESS_SYSTEMENVIRONMENT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QProcess::systemEnvironment() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QProcessSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QPROCESS_ONERROR )
{
  QProcessSlots_connect_signal("error(QProcess::ProcessError)", "error(QProcess::ProcessError)");
}

HB_FUNC_STATIC( QPROCESS_ONFINISHED )
{
  QProcessSlots_connect_signal("finished(int,QProcess::ExitStatus)", "finished(int,QProcess::ExitStatus)");
}

HB_FUNC_STATIC( QPROCESS_ONREADYREADSTANDARDERROR )
{
  QProcessSlots_connect_signal("readyReadStandardError()", "readyReadStandardError()");
}

HB_FUNC_STATIC( QPROCESS_ONREADYREADSTANDARDOUTPUT )
{
  QProcessSlots_connect_signal("readyReadStandardOutput()", "readyReadStandardOutput()");
}

HB_FUNC_STATIC( QPROCESS_ONSTARTED )
{
  QProcessSlots_connect_signal("started()", "started()");
}

HB_FUNC_STATIC( QPROCESS_ONSTATECHANGED )
{
  QProcessSlots_connect_signal("stateChanged(QProcess::ProcessState)", "stateChanged(QProcess::ProcessState)");
}

#pragma ENDDUMP
