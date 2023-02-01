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
REQUEST QDIR
REQUEST QFILEICONPROVIDER
REQUEST QFILEINFO
REQUEST QICON
REQUEST QMIMEDATA
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QFileSystemModel INHERIT QAbstractItemModel

   METHOD new
   METHOD delete
   METHOD fileIcon
   METHOD fileInfo
   METHOD fileName
   METHOD filePath
   METHOD filter
   METHOD iconProvider
   METHOD isDir
   METHOD isReadOnly
   METHOD lastModified
   METHOD mkdir
   METHOD myComputer
   METHOD nameFilterDisables
   METHOD nameFilters
   METHOD permissions
   METHOD remove
   METHOD resolveSymlinks
   METHOD rmdir
   METHOD rootDirectory
   METHOD rootPath
   METHOD setFilter
   METHOD setIconProvider
   METHOD setNameFilterDisables
   METHOD setNameFilters
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setRootPath
   METHOD size
   METHOD type
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD headerData
   METHOD index
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD rowCount
   METHOD setData
   METHOD sort
   METHOD supportedDropActions

   METHOD onDirectoryLoaded
   METHOD onFileRenamed
   METHOD onRootPathChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileSystemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QFileSystemModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtCore/QDateTime>
#include <QtCore/QMimeData>

/*
QFileSystemModel( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)) )
  {
    QFileSystemModel * obj = new QFileSystemModel( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFILESYSTEMMODEL_DELETE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QIcon fileIcon( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEICON )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QIcon * ptr = new QIcon( obj->fileIcon( *PQMODELINDEX(1)) );
      Qt4xHb::createReturnClass(ptr, "QICON", true);
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
QFileInfo fileInfo( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEINFO )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QFileInfo * ptr = new QFileInfo( obj->fileInfo( *PQMODELINDEX(1)) );
      Qt4xHb::createReturnClass(ptr, "QFILEINFO", true);
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
QString fileName( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILENAME )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->fileName( *PQMODELINDEX(1)) );
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
QString filePath( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILEPATH )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->filePath( *PQMODELINDEX(1)) );
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
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FILTER )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->filter() );
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
QFileIconProvider * iconProvider() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ICONPROVIDER )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFileIconProvider * ptr = obj->iconProvider();
      Qt4xHb::createReturnClass(ptr, "QFILEICONPROVIDER", false);
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
bool isDir( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISDIR )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->isDir( *PQMODELINDEX(1)) );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ISREADONLY )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
QDateTime lastModified( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_LASTMODIFIED )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->lastModified( *PQMODELINDEX(1)) );
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
QModelIndex mkdir( const QModelIndex & parent, const QString & name )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MKDIR )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && HB_ISCHAR(2) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->mkdir( *PQMODELINDEX(1), PQSTRING(2)) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
QVariant myComputer( int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MYCOMPUTER )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->myComputer( OPINT( 1, Qt::DisplayRole )) );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
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
bool nameFilterDisables() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERDISABLES )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->nameFilterDisables() );
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
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_NAMEFILTERS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->nameFilters() );
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
QFile::Permissions permissions( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PERMISSIONS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->permissions( *PQMODELINDEX(1)) );
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
bool remove( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_REMOVE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->remove( *PQMODELINDEX(1)) );
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
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RESOLVESYMLINKS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->resolveSymlinks() );
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
bool rmdir( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_RMDIR )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->rmdir( *PQMODELINDEX(1)) );
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
QDir rootDirectory() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTDIRECTORY )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDir * ptr = new QDir( obj->rootDirectory() );
      Qt4xHb::createReturnClass(ptr, "QDIR", true);
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
QString rootPath() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROOTPATH )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->rootPath() );
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
void setFilter( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETFILTER )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFilter( ( QDir::Filters ) hb_parni(1) );
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
void setIconProvider( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETICONPROVIDER )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFILEICONPROVIDER(1) )
    {
#endif
      obj->setIconProvider( PQFILEICONPROVIDER(1) );
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
void setNameFilterDisables( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERDISABLES )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setNameFilterDisables( PBOOL(1) );
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
void setNameFilters( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETNAMEFILTERS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setNameFilters( PQSTRINGLIST(1) );
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
void setReadOnly( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETREADONLY )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setReadOnly( PBOOL(1) );
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
void setResolveSymlinks( bool enable )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETRESOLVESYMLINKS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setResolveSymlinks( PBOOL(1) );
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
QModelIndex setRootPath( const QString & newPath )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETROOTPATH )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->setRootPath( PQSTRING(1)) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
qint64 size( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SIZE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQINT64( obj->size( *PQMODELINDEX(1)) );
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
QString type( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_TYPE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->type( *PQMODELINDEX(1)) );
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
virtual bool canFetchMore( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_CANFETCHMORE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RBOOL( obj->canFetchMore( *PQMODELINDEX(1)) );
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
virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_COLUMNCOUNT )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(1)) ) );
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
virtual QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_DATA )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQMODELINDEX(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT( 2, Qt::DisplayRole )) );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
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
virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_DROPMIMEDATA )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData( PQMIMEDATA(1), ( Qt::DropAction ) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5)) );
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
virtual void fetchMore( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FETCHMORE )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      obj->fetchMore( *PQMODELINDEX(1) );
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
virtual Qt::ItemFlags flags( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_FLAGS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      RENUM( obj->flags( *PQMODELINDEX(1)) );
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
virtual bool hasChildren( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_HASCHILDREN )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)) )
    {
#endif
      RBOOL( obj->hasChildren( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(1)) ) );
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
virtual QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_HEADERDATA )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->headerData( PINT(1), ( Qt::Orientation ) hb_parni(2), OPINT( 3, Qt::DisplayRole )) );
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFILESYSTEMMODEL_INDEX )
{
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
  {
    /*
    QModelIndex index( const QString & path, int column = 0 ) const
    */
    QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QModelIndex * ptr = new QModelIndex( obj->index( PQSTRING(1), OPINT( 2, 0 )) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
  }
  else if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
  {
    /*
    virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
    */
    QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QModelIndex * ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual QMimeData * mimeData( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMEDATA )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QModelIndexList par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << *static_cast<QModelIndex*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1+1), "POINTER", 0)));
      }
      QMimeData * ptr = obj->mimeData( par1 );
      Qt4xHb::createReturnQObjectClass(ptr, "QMIMEDATA");
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
virtual QStringList mimeTypes() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_MIMETYPES )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->mimeTypes() );
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
virtual QModelIndex parent( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_PARENT )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1)) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_ROWCOUNT )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(1)) ) );
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
virtual bool setData( const QModelIndex & idx, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SETDATA )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && ISQMODELINDEX(1) && ISQVARIANT(2) && (HB_ISNUM(3) || HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->setData( *PQMODELINDEX(1), *PQVARIANT(2), OPINT( 3, Qt::EditRole )) );
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
virtual void sort( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SORT )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      obj->sort( PINT(1), HB_ISNIL(2) ? ( Qt::SortOrder ) Qt::AscendingOrder : ( Qt::SortOrder ) hb_parni(2) );
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
virtual Qt::DropActions supportedDropActions() const
*/
HB_FUNC_STATIC( QFILESYSTEMMODEL_SUPPORTEDDROPACTIONS )
{
  QFileSystemModel * obj = qobject_cast<QFileSystemModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedDropActions() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QFileSystemModelSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QFILESYSTEMMODEL_ONDIRECTORYLOADED )
{
  QFileSystemModelSlots_connect_signal("directoryLoaded(QString)", "directoryLoaded(QString)");
}

HB_FUNC_STATIC( QFILESYSTEMMODEL_ONFILERENAMED )
{
  QFileSystemModelSlots_connect_signal("fileRenamed(QString,QString,QString)", "fileRenamed(QString,QString,QString)");
}

HB_FUNC_STATIC( QFILESYSTEMMODEL_ONROOTPATHCHANGED )
{
  QFileSystemModelSlots_connect_signal("rootPathChanged(QString)", "rootPathChanged(QString)");
}

#pragma ENDDUMP
