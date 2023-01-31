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
#endif

CLASS QIODevice INHERIT QObject

   METHOD delete
   METHOD atEnd
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD close
   METHOD errorString
   METHOD getChar
   METHOD isOpen
   METHOD isReadable
   METHOD isSequential
   METHOD isTextModeEnabled
   METHOD isWritable
   METHOD open
   METHOD openMode
   METHOD peek
   METHOD pos
   METHOD putChar
   METHOD read
   METHOD readAll
   METHOD readLine
   METHOD reset
   METHOD seek
   METHOD setTextModeEnabled
   METHOD size
   METHOD ungetChar
   METHOD waitForBytesWritten
   METHOD waitForReadyRead
   METHOD write

   METHOD onAboutToClose
   METHOD onBytesWritten
   METHOD onReadChannelFinished
   METHOD onReadyRead

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QIODevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QIODevice>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QIODEVICE_DELETE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual bool atEnd() const
*/
HB_FUNC_STATIC( QIODEVICE_ATEND )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QIODEVICE_BYTESAVAILABLE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QIODEVICE_BYTESTOWRITE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QIODEVICE_CANREADLINE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
HB_FUNC_STATIC( QIODEVICE_CLOSE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QString errorString() const
*/
HB_FUNC_STATIC( QIODEVICE_ERRORSTRING )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
bool getChar( char * c )
*/
HB_FUNC_STATIC( QIODEVICE_GETCHAR )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->getChar( ( char * ) hb_parc(1) ) );
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
HB_FUNC_STATIC( QIODEVICE_ISOPEN )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
bool isReadable() const
*/
HB_FUNC_STATIC( QIODEVICE_ISREADABLE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadable() );
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
virtual bool isSequential() const
*/
HB_FUNC_STATIC( QIODEVICE_ISSEQUENTIAL )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
bool isTextModeEnabled() const
*/
HB_FUNC_STATIC( QIODEVICE_ISTEXTMODEENABLED )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTextModeEnabled() );
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
bool isWritable() const
*/
HB_FUNC_STATIC( QIODEVICE_ISWRITABLE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable() );
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
virtual bool open( QIODevice::OpenMode mode )
*/
HB_FUNC_STATIC( QIODEVICE_OPEN )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->open( ( QIODevice::OpenMode ) hb_parni(1) ) );
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
QIODevice::OpenMode openMode() const
*/
HB_FUNC_STATIC( QIODEVICE_OPENMODE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->openMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QIODEVICE_PEEK )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    qint64 peek( char * data, qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->peek( ( char * ) hb_parc(1), PQINT64(2) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QByteArray peek( qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QByteArray * ptr = new QByteArray( obj->peek( PQINT64(1) ) );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual qint64 pos() const
*/
HB_FUNC_STATIC( QIODEVICE_POS )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->pos() );
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
bool putChar( char c )
*/
HB_FUNC_STATIC( QIODEVICE_PUTCHAR )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->putChar( PCHAR(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QIODEVICE_READ )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    qint64 read( char * data, qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->read( ( char * ) hb_parc(1), PQINT64(2) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QByteArray read( qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QByteArray * ptr = new QByteArray( obj->read( PQINT64(1) ) );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QByteArray readAll()
*/
HB_FUNC_STATIC( QIODEVICE_READALL )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->readAll() );
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

HB_FUNC_STATIC( QIODEVICE_READLINE )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    qint64 readLine( char * data, qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->readLine( ( char * ) hb_parc(1), PQINT64(2) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QByteArray readLine( qint64 maxSize = 0 )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QByteArray * ptr = new QByteArray( obj->readLine( OPQINT64( 1, 0 ) ) );
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual bool reset()
*/
HB_FUNC_STATIC( QIODEVICE_RESET )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reset() );
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
virtual bool seek( qint64 pos )
*/
HB_FUNC_STATIC( QIODEVICE_SEEK )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->seek( PQINT64(1) ) );
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
void setTextModeEnabled( bool enabled )
*/
HB_FUNC_STATIC( QIODEVICE_SETTEXTMODEENABLED )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setTextModeEnabled( PBOOL(1) );
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
virtual qint64 size() const
*/
HB_FUNC_STATIC( QIODEVICE_SIZE )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->size() );
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
void ungetChar( char c )
*/
HB_FUNC_STATIC( QIODEVICE_UNGETCHAR )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->ungetChar( PCHAR(1) );
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
virtual bool waitForBytesWritten( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORBYTESWRITTEN )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForBytesWritten( PINT(1) ) );
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
virtual bool waitForReadyRead( int msecs )
*/
HB_FUNC_STATIC( QIODEVICE_WAITFORREADYREAD )
{
  QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForReadyRead( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QIODEVICE_WRITE )
{
  if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
  {
    /*
    qint64 write( const char * data, qint64 maxSize )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->write( PCONSTCHAR(1), PQINT64(2) ) );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    qint64 write( const char * data )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->write( PCONSTCHAR(1) ) );
    }
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    qint64 write( const QByteArray & byteArray )
    */
    QIODevice * obj = qobject_cast<QIODevice*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      RQINT64( obj->write( *PQBYTEARRAY(1) ) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QIODeviceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QIODEVICE_ONABOUTTOCLOSE )
{
  QIODeviceSlots_connect_signal("aboutToClose()", "aboutToClose()");
}

HB_FUNC_STATIC( QIODEVICE_ONBYTESWRITTEN )
{
  QIODeviceSlots_connect_signal("bytesWritten(qint64)", "bytesWritten(qint64)");
}

HB_FUNC_STATIC( QIODEVICE_ONREADCHANNELFINISHED )
{
  QIODeviceSlots_connect_signal("readChannelFinished()", "readChannelFinished()");
}

HB_FUNC_STATIC( QIODEVICE_ONREADYREAD )
{
  QIODeviceSlots_connect_signal("readyRead()", "readyRead()");
}

#pragma ENDDUMP
