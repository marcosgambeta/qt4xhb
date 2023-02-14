/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QFILEINFO
#endif

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   METHOD new
   METHOD delete
   METHOD open
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD owner
   METHOD ownerId
   METHOD pos
   METHOD read
   METHOD readLine
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD seek
   METHOD setFileName
   METHOD setPermissions
   METHOD setSize
   METHOD size
   METHOD supportsExtension
   METHOD write
   METHOD currentPath
   METHOD drives
   METHOD homePath
   METHOD rootPath
   METHOD setCurrentPath
   METHOD tempPath

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFSFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QFSFileEngine>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QDateTime>

HB_FUNC_STATIC( QFSFILEENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QFSFileEngine()
    */
    QFSFileEngine * obj = new QFSFileEngine();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QFSFileEngine( const QString & file )
    */
    QFSFileEngine * obj = new QFSFileEngine( PQSTRING(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFSFILEENGINE_DELETE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

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

HB_FUNC_STATIC( QFSFILEENGINE_OPEN )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISPOINTER(2) )
  {
    /*
    bool open( QIODevice::OpenMode openMode, FILE * fh )
    */
    QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open( ( QIODevice::OpenMode ) hb_parni(1), static_cast<FILE*>( hb_parptr(2)) ) );
    }
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    bool open( QIODevice::OpenMode openMode, int fd )
    */
    QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open( ( QIODevice::OpenMode ) hb_parni(1), PINT(2)) );
    }
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) )
  {
    /*
    bool open( QIODevice::OpenMode openMode, int fd, QFile::FileHandleFlags handleFlags )
    */
    QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open( ( QIODevice::OpenMode ) hb_parni(1), PINT(2), ( QFile::FileHandleFlags ) hb_parni(3)) );
    }
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISPOINTER(2) && HB_ISNUM(3) )
  {
    /*
    bool open( QIODevice::OpenMode openMode, FILE * fh, QFile::FileHandleFlags handleFlags )
    */
    QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RBOOL( obj->open( ( QIODevice::OpenMode ) hb_parni(1), static_cast<FILE*>( hb_parptr(2) ), ( QFile::FileHandleFlags ) hb_parni(3)) );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual bool caseSensitive() const
*/
HB_FUNC_STATIC( QFSFILEENGINE_CASESENSITIVE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->caseSensitive() );
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
virtual bool close()
*/
HB_FUNC_STATIC( QFSFILEENGINE_CLOSE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->close() );
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
virtual bool copy( const QString & copyName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_COPY )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->copy( PQSTRING(1)) );
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
virtual QAbstractFileEngine::FileFlags fileFlags( QAbstractFileEngine::FileFlags type ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILEFLAGS )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RENUM( obj->fileFlags( ( QAbstractFileEngine::FileFlags ) hb_parni(1)) );
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
virtual QString fileName( QAbstractFileEngine::FileName file ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILENAME )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->fileName( ( QAbstractFileEngine::FileName ) hb_parni(1)) );
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
virtual QDateTime fileTime( QAbstractFileEngine::FileTime time ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_FILETIME )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->fileTime( ( QAbstractFileEngine::FileTime ) hb_parni(1)) );
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
virtual bool flush()
*/
HB_FUNC_STATIC( QFSFILEENGINE_FLUSH )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush() );
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
virtual int handle() const
*/
HB_FUNC_STATIC( QFSFILEENGINE_HANDLE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->handle() );
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
virtual bool isRelativePath() const
*/
HB_FUNC_STATIC( QFSFILEENGINE_ISRELATIVEPATH )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRelativePath() );
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
HB_FUNC_STATIC( QFSFILEENGINE_ISSEQUENTIAL )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual bool link( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_LINK )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->link( PQSTRING(1)) );
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
virtual bool mkdir( const QString & name, bool createParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_MKDIR )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2) )
    {
#endif
      RBOOL( obj->mkdir( PQSTRING(1), PBOOL(2)) );
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
virtual QString owner( QAbstractFileEngine::FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNER )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->owner( ( QAbstractFileEngine::FileOwner ) hb_parni(1)) );
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
virtual uint ownerId( QAbstractFileEngine::FileOwner own ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_OWNERID )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RUINT( obj->ownerId( ( QAbstractFileEngine::FileOwner ) hb_parni(1)) );
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
virtual qint64 pos() const
*/
HB_FUNC_STATIC( QFSFILEENGINE_POS )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual qint64 read( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READ )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQINT64( obj->read( ( char * ) hb_parc(1), PQINT64(2)) );
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
virtual qint64 readLine( char * data, qint64 maxlen )
*/
HB_FUNC_STATIC( QFSFILEENGINE_READLINE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQINT64( obj->readLine( ( char * ) hb_parc(1), PQINT64(2)) );
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
virtual bool remove()
*/
HB_FUNC_STATIC( QFSFILEENGINE_REMOVE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->remove() );
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
virtual bool rename( const QString & newName )
*/
HB_FUNC_STATIC( QFSFILEENGINE_RENAME )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      RBOOL( obj->rename( PQSTRING(1)) );
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
virtual bool rmdir( const QString & name, bool recurseParentDirectories ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_RMDIR )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISLOG(2) )
    {
#endif
      RBOOL( obj->rmdir( PQSTRING(1), PBOOL(2)) );
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
HB_FUNC_STATIC( QFSFILEENGINE_SEEK )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->seek( PQINT64(1)) );
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
virtual void setFileName( const QString & file )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETFILENAME )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setFileName( PQSTRING(1) );
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
virtual bool setPermissions( uint perms )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETPERMISSIONS )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setPermissions( PUINT(1)) );
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
virtual bool setSize( qint64 size )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETSIZE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setSize( PQINT64(1)) );
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
virtual qint64 size() const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SIZE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual bool supportsExtension( QAbstractFileEngine::Extension extension ) const
*/
HB_FUNC_STATIC( QFSFILEENGINE_SUPPORTSEXTENSION )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->supportsExtension( ( QAbstractFileEngine::Extension ) hb_parni(1)) );
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
virtual qint64 write( const char * data, qint64 len )
*/
HB_FUNC_STATIC( QFSFILEENGINE_WRITE )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2) )
    {
#endif
      RQINT64( obj->write( PCONSTCHAR(1), PQINT64(2)) );
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
static QString currentPath( const QString & fileName = QString() )
*/
HB_FUNC_STATIC( QFSFILEENGINE_CURRENTPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0, 1) && (HB_ISCHAR(1) || HB_ISNIL(1)) )
  {
#endif
    RQSTRING( QFSFileEngine::currentPath( OPQSTRING( 1, QString()) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QFileInfoList drives()
*/
HB_FUNC_STATIC( QFSFILEENGINE_DRIVES )
{
  QFSFileEngine * obj = static_cast<QFSFileEngine*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFileInfoList list = obj->drives();
      PHB_DYNS pDynSym = hb_dynsymFindName("QFILEINFO");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        const int count = list.count();
        for( int i = 0; i < count; i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QFileInfo(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QFILEINFO", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
static QString homePath()
*/
HB_FUNC_STATIC( QFSFILEENGINE_HOMEPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QFSFileEngine::homePath() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString rootPath()
*/
HB_FUNC_STATIC( QFSFILEENGINE_ROOTPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QFSFileEngine::rootPath() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool setCurrentPath( const QString & path )
*/
HB_FUNC_STATIC( QFSFILEENGINE_SETCURRENTPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QFSFileEngine::setCurrentPath( PQSTRING(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString tempPath()
*/
HB_FUNC_STATIC( QFSFILEENGINE_TEMPPATH )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QFSFileEngine::tempPath() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
