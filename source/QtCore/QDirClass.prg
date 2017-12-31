/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFILEINFO
REQUEST QDIR
REQUEST QCHAR
#endif

CLASS QDir

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList1
   METHOD entryInfoList2
   METHOD entryInfoList
   METHOD entryList1
   METHOD entryList2
   METHOD entryList
   METHOD exists1
   METHOD exists2
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match1
   METHOD match2
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDir>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDir(const QDir & dir)
*/
HB_FUNC_STATIC( QDIR_NEW1 )
{
  QDir * o = new QDir ( *PQDIR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QDir(const QString & path = QString())
*/
HB_FUNC_STATIC( QDIR_NEW2 )
{
  QDir * o = new QDir ( OPQSTRING(1,QString()) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)
*/
HB_FUNC_STATIC( QDIR_NEW3 )
{
  int par3 = ISNIL(3)? (int) QDir::Name | QDir::IgnoreCase : hb_parni(3);
  int par4 = ISNIL(4)? (int) QDir::AllEntries : hb_parni(4);
  QDir * o = new QDir ( PQSTRING(1), PQSTRING(2), (QDir::SortFlags) par3, (QDir::Filters) par4 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QDir(const QDir & dir)
//[2]QDir(const QString & path = QString())
//[3]QDir(const QString & path, const QString & nameFilter, SortFlags sort = SortFlags( Name | IgnoreCase ), Filters filters = AllEntries)

HB_FUNC_STATIC( QDIR_NEW )
{
  if( ISNUMPAR(1) && ISQDIR(1) )
  {
    HB_FUNC_EXEC( QDIR_NEW1 );
  }
  else if( ISBETWEEN(0,1) && (ISCHAR(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDIR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISCHAR(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDIR_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_DELETE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QString absoluteFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->absoluteFilePath ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString absolutePath() const
*/
HB_FUNC_STATIC( QDIR_ABSOLUTEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->absolutePath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString canonicalPath() const
*/
HB_FUNC_STATIC( QDIR_CANONICALPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->canonicalPath () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool cd(const QString & dirName)
*/
HB_FUNC_STATIC( QDIR_CD )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->cd ( PQSTRING(1) ) );
  }
}

/*
bool cdUp()
*/
HB_FUNC_STATIC( QDIR_CDUP )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->cdUp () );
  }
}

/*
uint count() const
*/
HB_FUNC_STATIC( QDIR_COUNT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->count () );
  }
}

/*
QString dirName() const
*/
HB_FUNC_STATIC( QDIR_DIRNAME )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->dirName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDir::NoFilter : hb_parni(2);
  int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
  if( obj )
  {
    QFileInfoList list = obj->entryInfoList ( PQSTRINGLIST(1), (QDir::Filters) par2, (QDir::SortFlags) par3 );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYINFOLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFileInfoList list = obj->entryInfoList ( ISNIL(1)? QDir::NoFilter : (QDir::Filters) hb_parni(1), ISNIL(2)? QDir::NoSort : (QDir::SortFlags) hb_parni(2) );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QFILEINFO" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

//[1]QFileInfoList entryInfoList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QFileInfoList entryInfoList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYINFOLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYINFOLIST2 );
  }
}

/*
QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYLIST1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) QDir::NoSort : hb_parni(3);
  if( obj )
  {
    RQSTRINGLIST( obj->entryList ( PQSTRINGLIST(1), ISNIL(2)? QDir::NoFilter : (QDir::Filters) hb_parni(2), (QDir::SortFlags) par3 ) );
  }
}

/*
QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const
*/
HB_FUNC_STATIC( QDIR_ENTRYLIST2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) QDir::NoSort : hb_parni(2);
  if( obj )
  {
    RQSTRINGLIST( obj->entryList ( ISNIL(1)? QDir::NoFilter : (QDir::Filters) hb_parni(1), (QDir::SortFlags) par2 ) );
  }
}

//[1]QStringList entryList(const QStringList & nameFilters, Filters filters = NoFilter, SortFlags sort = NoSort) const
//[2]QStringList entryList(Filters filters = NoFilter, SortFlags sort = NoSort) const

HB_FUNC_STATIC( QDIR_ENTRYLIST )
{
  if( ISBETWEEN(1,3) && ISARRAY(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST1 );
  }
  else if( ISBETWEEN(0,2) && (ISNUM(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDIR_ENTRYLIST2 );
  }
}

/*
bool exists(const QString & name) const
*/
HB_FUNC_STATIC( QDIR_EXISTS1 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->exists ( PQSTRING(1) ) );
  }
}

/*
bool exists() const
*/
HB_FUNC_STATIC( QDIR_EXISTS2 )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->exists () );
  }
}

//[1]bool exists(const QString & name) const
//[2]bool exists() const

HB_FUNC_STATIC( QDIR_EXISTS )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDIR_EXISTS2 );
  }
}

/*
QString filePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_FILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->filePath ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Filters filter() const
*/
HB_FUNC_STATIC( QDIR_FILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->filter () );
  }
}

/*
bool isAbsolute() const
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAbsolute () );
  }
}

/*
bool isReadable() const
*/
HB_FUNC_STATIC( QDIR_ISREADABLE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadable () );
  }
}

/*
bool isRelative() const
*/
HB_FUNC_STATIC( QDIR_ISRELATIVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRelative () );
  }
}

/*
bool isRoot() const
*/
HB_FUNC_STATIC( QDIR_ISROOT )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRoot () );
  }
}

/*
bool makeAbsolute()
*/
HB_FUNC_STATIC( QDIR_MAKEABSOLUTE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->makeAbsolute () );
  }
}

/*
bool mkdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_MKDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->mkdir ( PQSTRING(1) ) );
  }
}

/*
bool mkpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_MKPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->mkpath ( PQSTRING(1) ) );
  }
}

/*
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QDIR_NAMEFILTERS )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->nameFilters () );
  }
}

/*
QString path() const
*/
HB_FUNC_STATIC( QDIR_PATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->path () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void refresh() const
*/
HB_FUNC_STATIC( QDIR_REFRESH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->refresh ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString relativeFilePath(const QString & fileName) const
*/
HB_FUNC_STATIC( QDIR_RELATIVEFILEPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RQSTRING( obj->relativeFilePath ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool remove(const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_REMOVE )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->remove ( PQSTRING(1) ) );
  }
}

/*
bool rename(const QString & oldName, const QString & newName)
*/
HB_FUNC_STATIC( QDIR_RENAME )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rename ( PQSTRING(1), PQSTRING(2) ) );
  }
}

/*
bool rmdir(const QString & dirName) const
*/
HB_FUNC_STATIC( QDIR_RMDIR )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rmdir ( PQSTRING(1) ) );
  }
}

/*
bool rmpath(const QString & dirPath) const
*/
HB_FUNC_STATIC( QDIR_RMPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rmpath ( PQSTRING(1) ) );
  }
}

/*
void setFilter(Filters filters)
*/
HB_FUNC_STATIC( QDIR_SETFILTER )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFilter ( (QDir::Filters) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNameFilters(const QStringList & nameFilters)
*/
HB_FUNC_STATIC( QDIR_SETNAMEFILTERS )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNameFilters ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETPATH )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSorting(SortFlags sort)
*/
HB_FUNC_STATIC( QDIR_SETSORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSorting ( (QDir::SortFlags) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
SortFlags sorting() const
*/
HB_FUNC_STATIC( QDIR_SORTING )
{
  QDir * obj = (QDir *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->sorting () );
  }
}

/*
void addSearchPath(const QString & prefix, const QString & path)
*/
HB_FUNC_STATIC( QDIR_ADDSEARCHPATH )
{
  QDir::addSearchPath ( PQSTRING(1), PQSTRING(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString cleanPath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_CLEANPATH )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RQSTRING( QDir::cleanPath ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDir current()
*/
HB_FUNC_STATIC( QDIR_CURRENT )
{
  QDir * ptr = new QDir( QDir::current () );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString currentPath()
*/
HB_FUNC_STATIC( QDIR_CURRENTPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QDir::currentPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QFileInfoList drives()
*/
HB_FUNC_STATIC( QDIR_DRIVES )
{
  QFileInfoList list = QDir::drives ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QFILEINFO" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QFileInfo *) new QFileInfo( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QString fromNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_FROMNATIVESEPARATORS )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RQSTRING( QDir::fromNativeSeparators ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDir home()
*/
HB_FUNC_STATIC( QDIR_HOME )
{
  QDir * ptr = new QDir( QDir::home () );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString homePath()
*/
HB_FUNC_STATIC( QDIR_HOMEPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QDir::homePath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isAbsolutePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISABSOLUTEPATH )
{
  RBOOL( QDir::isAbsolutePath ( PQSTRING(1) ) );
}

/*
bool isRelativePath(const QString & path)
*/
HB_FUNC_STATIC( QDIR_ISRELATIVEPATH )
{
  RBOOL( QDir::isRelativePath ( PQSTRING(1) ) );
}

/*
bool match(const QString & filter, const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_MATCH1 )
{
  RBOOL( QDir::match ( PQSTRING(1), PQSTRING(2) ) );
}

/*
bool match(const QStringList & filters, const QString & fileName)
*/
HB_FUNC_STATIC( QDIR_MATCH2 )
{
  RBOOL( QDir::match ( PQSTRINGLIST(1), PQSTRING(2) ) );
}

//[1]bool match(const QString & filter, const QString & fileName)
//[2]bool match(const QStringList & filters, const QString & fileName)

HB_FUNC_STATIC( QDIR_MATCH )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH1 );
  }
  else if( ISNUMPAR(2) && ISARRAY(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDIR_MATCH2 );
  }
}

/*
QDir root()
*/
HB_FUNC_STATIC( QDIR_ROOT )
{
  QDir * ptr = new QDir( QDir::root () );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString rootPath()
*/
HB_FUNC_STATIC( QDIR_ROOTPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QDir::rootPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList searchPaths(const QString & prefix)
*/
HB_FUNC_STATIC( QDIR_SEARCHPATHS )
{
  RQSTRINGLIST( QDir::searchPaths ( PQSTRING(1) ) );
}

/*
QChar separator()
*/
HB_FUNC_STATIC( QDIR_SEPARATOR )
{
  QChar * ptr = new QChar( QDir::separator () );
  _qt4xhb_createReturnClass ( ptr, "QCHAR" );
}

/*
bool setCurrent(const QString & path)
*/
HB_FUNC_STATIC( QDIR_SETCURRENT )
{
  RBOOL( QDir::setCurrent ( PQSTRING(1) ) );
}

/*
void setSearchPaths(const QString & prefix, const QStringList & searchPaths)
*/
HB_FUNC_STATIC( QDIR_SETSEARCHPATHS )
{
  QDir::setSearchPaths ( PQSTRING(1), PQSTRINGLIST(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir temp()
*/
HB_FUNC_STATIC( QDIR_TEMP )
{
  QDir * ptr = new QDir( QDir::temp () );
  _qt4xhb_createReturnClass ( ptr, "QDIR", true );
}

/*
static QString tempPath()
*/
HB_FUNC_STATIC( QDIR_TEMPPATH )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QDir::tempPath () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString toNativeSeparators(const QString & pathName)
*/
HB_FUNC_STATIC( QDIR_TONATIVESEPARATORS )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RQSTRING( QDir::toNativeSeparators ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDIR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDIR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDIR_NEWFROM );
}

HB_FUNC_STATIC( QDIR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDIR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
