/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QFile INHERIT QIODevice

   DATA class_id INIT Class_Id_QFile
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD copy1
   METHOD error
   METHOD exists1
   METHOD fileName
   METHOD flush
   METHOD handle
   METHOD link1
   METHOD open1
   METHOD open2
   METHOD open3
   METHOD open4
   METHOD permissions1
   METHOD remove1
   METHOD rename1
   METHOD resize1
   METHOD setFileName
   METHOD setPermissions1
   METHOD symLinkTarget1
   METHOD unmap
   METHOD unsetError
   METHOD atEnd
   METHOD close
   METHOD isSequential
   METHOD open6
   METHOD open
   METHOD pos
   METHOD seek
   METHOD size
   METHOD copy2
   METHOD copy
   METHOD decodeName1
   METHOD decodeName2
   METHOD decodeName
   METHOD encodeName
   METHOD exists2
   METHOD exists
   METHOD link2
   METHOD link
   METHOD permissions2
   METHOD permissions
   METHOD remove2
   METHOD remove
   METHOD rename2
   METHOD rename
   METHOD resize2
   METHOD resize
   METHOD setPermissions2
   METHOD setPermissions
   METHOD symLinkTarget2
   METHOD symLinkTarget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QFile>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QFile ( const QString & name )
*/
HB_FUNC_STATIC( QFILE_NEW1 )
{
  QFile * o = NULL;
  QString par1 = hb_parc(1);
  o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFile ( QObject * parent )
*/
HB_FUNC_STATIC( QFILE_NEW2 )
{
  QFile * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFile ( const QString & name, QObject * parent )
*/
HB_FUNC_STATIC( QFILE_NEW3 )
{
  QFile * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFile ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFile ( const QString & name )
//[2]QFile ( QObject * parent )
//[3]QFile ( const QString & name, QObject * parent )

HB_FUNC_STATIC( QFILE_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QFILE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QFILE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILE_DELETE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool copy ( const QString & newName )
*/
HB_FUNC_STATIC( QFILE_COPY1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->copy ( par1 ) );
  }
}


/*
FileError error () const
*/
HB_FUNC_STATIC( QFILE_ERROR )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error (  ) );
  }
}


/*
bool exists () const
*/
HB_FUNC_STATIC( QFILE_EXISTS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->exists (  ) );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QFILE_FILENAME )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool flush ()
*/
HB_FUNC_STATIC( QFILE_FLUSH )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->flush (  ) );
  }
}


/*
int handle () const
*/
HB_FUNC_STATIC( QFILE_HANDLE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->handle (  ) );
  }
}


/*
bool link ( const QString & linkName )
*/
HB_FUNC_STATIC( QFILE_LINK1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->link ( par1 ) );
  }
}



/*
bool open ( FILE * fh, OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par1 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->open ( par1,  (QFile::OpenMode) hb_parni(2) ) );
  }
}


/*
bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFILE_OPEN2 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    FILE * par1 = (FILE *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->open ( par1,  (QFile::OpenMode) hb_parni(2),  (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}


/*
bool open ( int fd, OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN3 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open ( hb_parni(1),  (QFile::OpenMode) hb_parni(2) ) );
  }
}


/*
bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
*/
HB_FUNC_STATIC( QFILE_OPEN4 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open ( hb_parni(1),  (QFile::OpenMode) hb_parni(2),  (QFile::FileHandleFlags) hb_parni(3) ) );
  }
}



/*
Permissions permissions () const
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->permissions (  ) );
  }
}


/*
bool remove ()
*/
HB_FUNC_STATIC( QFILE_REMOVE1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->remove (  ) );
  }
}


/*
bool rename ( const QString & newName )
*/
HB_FUNC_STATIC( QFILE_RENAME1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->rename ( par1 ) );
  }
}


/*
bool resize ( qint64 sz )
*/
HB_FUNC_STATIC( QFILE_RESIZE1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    hb_retl( obj->resize ( par1 ) );
  }
}


/*
void setFileName ( const QString & name )
*/
HB_FUNC_STATIC( QFILE_SETFILENAME )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setPermissions ( Permissions permissions )
*/
HB_FUNC_STATIC( QFILE_SETPERMISSIONS1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->setPermissions (  (QFile::Permissions) hb_parni(1) ) );
  }
}


/*
QString symLinkTarget () const
*/
HB_FUNC_STATIC( QFILE_SYMLINKTARGET1 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->symLinkTarget (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool unmap ( uchar * address )
*/
HB_FUNC_STATIC( QFILE_UNMAP )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uchar * par1 = (uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->unmap ( par1 ) );
  }
}


/*
void unsetError ()
*/
HB_FUNC_STATIC( QFILE_UNSETERROR )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetError (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


// Reimplemented Public Functions

/*
virtual bool atEnd () const
*/
HB_FUNC_STATIC( QFILE_ATEND )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->atEnd (  ) );
  }
}


/*
virtual void close ()
*/
HB_FUNC_STATIC( QFILE_CLOSE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSequential () const
*/
HB_FUNC_STATIC( QFILE_ISSEQUENTIAL )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSequential (  ) );
  }
}


/*
virtual bool open ( OpenMode mode )
*/
HB_FUNC_STATIC( QFILE_OPEN6 )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open (  (QFile::OpenMode) hb_parni(1) ) );
  }
}


//[1]bool open ( FILE * fh, OpenMode mode )
//[2]bool open ( FILE * fh, OpenMode mode, FileHandleFlags handleFlags )
//[3]bool open ( int fd, OpenMode mode )
//[4]bool open ( int fd, OpenMode mode, FileHandleFlags handleFlags )
//[5]bool open ( const RFile & f, OpenMode mode, FileHandleFlags handleFlags = DontCloseHandle )
//[6]virtual bool open ( OpenMode mode )

HB_FUNC_STATIC( QFILE_OPEN )
{
  HB_FUNC_EXEC( QFILE_OPEN6 );
}

/*
virtual qint64 pos () const
*/
HB_FUNC_STATIC( QFILE_POS )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->pos (  );
    hb_retni( i );
  }
}


/*
virtual bool seek ( qint64 pos )
*/
HB_FUNC_STATIC( QFILE_SEEK )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    hb_retl( obj->seek ( par1 ) );
  }
}


/*
virtual qint64 size () const
*/
HB_FUNC_STATIC( QFILE_SIZE )
{
  QFile * obj = (QFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->size (  );
    hb_retni( i );
  }
}



// Static Public Members

/*
bool copy ( const QString & fileName, const QString & newName )
*/
HB_FUNC_STATIC( QFILE_COPY2 )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  hb_retl( QFile::copy ( par1, par2 ) );
}


//[1]bool copy ( const QString & newName )
//[2]bool copy ( const QString & fileName, const QString & newName )

HB_FUNC_STATIC( QFILE_COPY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_COPY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_COPY2 );
  }
}

/*
QString decodeName ( const QByteArray & localFileName )
*/
HB_FUNC_STATIC( QFILE_DECODENAME1 )
{
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QString str1 = QFile::decodeName ( *par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString decodeName ( const char * localFileName )
*/
HB_FUNC_STATIC( QFILE_DECODENAME2 )
{
  const char * par1 = hb_parc(1);
  QString str1 = QFile::decodeName (  (const char *) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


//[1]QString decodeName ( const QByteArray & localFileName )
//[2]QString decodeName ( const char * localFileName )

HB_FUNC_STATIC( QFILE_DECODENAME )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_DECODENAME2 );
  }
}

/*
QByteArray encodeName ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_ENCODENAME )
{
  QString par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QFile::encodeName ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
bool exists ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_EXISTS2 )
{
  QString par1 = hb_parc(1);
  hb_retl( QFile::exists ( par1 ) );
}


//[1]bool exists () const
//[2]bool exists ( const QString & fileName )

HB_FUNC_STATIC( QFILE_EXISTS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_EXISTS2 );
  }
}

/*
bool link ( const QString & fileName, const QString & linkName )
*/
HB_FUNC_STATIC( QFILE_LINK2 )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  hb_retl( QFile::link ( par1, par2 ) );
}


//[1]bool link ( const QString & linkName )
//[2]bool link ( const QString & fileName, const QString & linkName )

HB_FUNC_STATIC( QFILE_LINK )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_LINK1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_LINK2 );
  }
}

/*
Permissions permissions ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_PERMISSIONS2 )
{
  QString par1 = hb_parc(1);
  hb_retni( (int) QFile::permissions ( par1 ) );
}


//[1]Permissions permissions () const
//[2]Permissions permissions ( const QString & fileName )

HB_FUNC_STATIC( QFILE_PERMISSIONS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_PERMISSIONS2 );
  }
}

/*
bool remove ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_REMOVE2 )
{
  QString par1 = hb_parc(1);
  hb_retl( QFile::remove ( par1 ) );
}


//[1]bool remove ()
//[2]bool remove ( const QString & fileName )

HB_FUNC_STATIC( QFILE_REMOVE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_REMOVE2 );
  }
}

/*
bool rename ( const QString & oldName, const QString & newName )
*/
HB_FUNC_STATIC( QFILE_RENAME2 )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  hb_retl( QFile::rename ( par1, par2 ) );
}


//[1]bool rename ( const QString & newName )
//[2]bool rename ( const QString & oldName, const QString & newName )

HB_FUNC_STATIC( QFILE_RENAME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_RENAME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QFILE_RENAME2 );
  }
}

/*
bool resize ( const QString & fileName, qint64 sz )
*/
HB_FUNC_STATIC( QFILE_RESIZE2 )
{
  QString par1 = hb_parc(1);
  qint64 par2 = hb_parni(2);
  hb_retl( QFile::resize ( par1, par2 ) );
}


//[1]bool resize ( qint64 sz )
//[2]bool resize ( const QString & fileName, qint64 sz )

HB_FUNC_STATIC( QFILE_RESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_RESIZE2 );
  }
}



/*
bool setPermissions ( const QString & fileName, Permissions permissions )
*/
HB_FUNC_STATIC( QFILE_SETPERMISSIONS2 )
{
  QString par1 = hb_parc(1);
  hb_retl( QFile::setPermissions ( par1,  (QFile::Permissions) hb_parni(2) ) );
}


//[1]bool setPermissions ( Permissions permissions )
//[2]bool setPermissions ( const QString & fileName, Permissions permissions )

HB_FUNC_STATIC( QFILE_SETPERMISSIONS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFILE_SETPERMISSIONS2 );
  }
}

/*
QString symLinkTarget ( const QString & fileName )
*/
HB_FUNC_STATIC( QFILE_SYMLINKTARGET2 )
{
  QString par1 = hb_parc(1);
  QString str1 = QFile::symLinkTarget ( par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


//[1]QString symLinkTarget () const
//[2]QString symLinkTarget ( const QString & fileName )

HB_FUNC_STATIC( QFILE_SYMLINKTARGET )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFILE_SYMLINKTARGET2 );
  }
}

//Signals



#pragma ENDDUMP
