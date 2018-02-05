%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD error
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD setFileName
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size
   METHOD copy
   METHOD decodeName
   METHOD encodeName
   METHOD exists
   METHOD link
   METHOD permissions
   METHOD remove
   METHOD rename
   METHOD resize
   METHOD setPermissions
   METHOD symLinkTarget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFile>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFile ( const QString & name )
$internalConstructor=|new1|const QString &

$prototype=QFile ( QObject * parent )
$internalConstructor=|new2|QObject *

$prototype=QFile ( const QString & name, QObject * parent )
$internalConstructor=|new3|const QString &,QObject *

//[1]QFile ( const QString & name )
//[2]QFile ( QObject * parent )
//[3]QFile ( const QString & name, QObject * parent )

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QFile_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QFile_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=FileError error () const
$method=|QFile::FileError|error|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=bool flush ()
$method=|bool|flush|

$prototype=int handle () const
$method=|int|handle|

$prototype=void setFileName ( const QString & name )
$method=|void|setFileName|const QString &

$prototype=bool unmap ( uchar * address )
$method=|bool|unmap|uchar *

$prototype=void unsetError ()
$method=|void|unsetError|

$prototype=virtual bool atEnd () const
$virtualMethod=|bool|atEnd|

$prototype=virtual void close ()
$virtualMethod=|void|close|

$prototype=virtual bool isSequential () const
$virtualMethod=|bool|isSequential|

$prototype=bool open ( FILE * fh, OpenMode mode )
$internalMethod=|bool|open,open1|FILE *,QIODevice::OpenMode

$prototype=bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
$internalMethod=|bool|open,open2|FILE *,QIODevice::OpenMode,QFile::FileHandleFlags

$prototype=bool open ( int fd, OpenMode mode )
$internalMethod=|bool|open,open3|int,QIODevice::OpenMode

$prototype=bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
$internalMethod=|bool|open,open4|int,QIODevice::OpenMode,QFile::FileHandleFlags

$prototype=bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )

$prototype=virtual bool open ( OpenMode mode )
$internalVirtualMethod=|bool|open,open6|QIODevice::OpenMode

//[1]bool open ( FILE * fh, OpenMode mode )
//[2]bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
//[3]bool open ( int fd, OpenMode mode )
//[4]bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
//[5]bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )
//[6]virtual bool open ( OpenMode mode )

%% TODO: implementar
HB_FUNC_STATIC( QFILE_OPEN )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    QFile_open1();
  }
  else if( ISNUMPAR(3) && ISPOINTER(1) && ISNUM(2) && ISNUM(3) )
  {
    QFile_open2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFile_open3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QFile_open4();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_open6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual qint64 pos () const
$virtualMethod=|qint64|pos|

$prototype=virtual bool seek ( qint64 pos )
$virtualMethod=|bool|seek|qint64

$prototype=virtual qint64 size () const
$virtualMethod=|qint64|size|

$prototype=bool copy ( const QString & newName )
$internalMethod=|bool|copy,copy1|const QString &

$prototype=static bool copy ( const QString & fileName, const QString & newName )
$internalStaticMethod=|bool|copy,copy2|const QString &,const QString &

//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_copy1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_copy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QString decodeName ( const QByteArray & localFileName )
$internalStaticMethod=|QString|decodeName,decodeName1|const QByteArray &

$prototype=static QString decodeName ( const char * localFileName )
$internalStaticMethod=|QString|decodeName,decodeName2|const char *

//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QFile_decodeName1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_decodeName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QByteArray encodeName ( const QString & fileName )
$staticMethod=|QByteArray|encodeName|const QString &

$prototype=bool exists () const
$internalMethod=|bool|exists,exists1|

$prototype=static bool exists ( const QString & fileName )
$internalStaticMethod=|bool|exists,exists2|const QString &

//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    QFile_exists1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_exists2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool link ( const QString & linkName )
$internalMethod=|bool|link,link1|const QString &

$prototype=static bool link ( const QString & fileName, const QString & linkName )
$internalStaticMethod=|bool|link,link2|const QString &,const QString &

//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_link1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_link2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=Permissions permissions () const
$internalMethod=|QFile::Permissions|permissions,permissions1|

$prototype=static Permissions permissions ( const QString & fileName )
$internalStaticMethod=|QFile::Permissions|permissions,permissions2|const QString &

//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    QFile_permissions1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_permissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool remove ()
$internalMethod=|bool|remove,remove1|

$prototype=static bool remove ( const QString & fileName )
$internalStaticMethod=|bool|remove,remove2|const QString &

//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    QFile_remove1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_remove2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool rename ( const QString & newName )
$internalMethod=|bool|rename,rename1|const QString &

$prototype=static bool rename ( const QString & oldName, const QString & newName )
$internalStaticMethod=|bool|rename,rename2|const QString &,const QString &

//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_rename1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QFile_rename2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool resize ( qint64 sz )
$internalMethod=|bool|resize,resize1|qint64

$prototype=static bool resize ( const QString & fileName, qint64 sz )
$internalStaticMethod=|bool|resize,resize2|const QString &,qint64

//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_resize1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool setPermissions ( Permissions permissions )
$internalMethod=|bool|setPermissions,setPermissions1|QFile::Permissions

$prototype=static bool setPermissions ( const QString & fileName, Permissions permissions )
$internalStaticMethod=|bool|setPermissions,setPermissions2|const QString &,QFile::Permissions

//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFile_setPermissions1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QFile_setPermissions2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QString symLinkTarget () const
$internalMethod=|QString|symLinkTarget,symLinkTarget1|

$prototype=static QString symLinkTarget ( const QString & fileName )
$internalStaticMethod=|QString|symLinkTarget,symLinkTarget2|const QString &

//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    QFile_symLinkTarget1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFile_symLinkTarget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
