/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QUrlInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD group
   METHOD isDir
   METHOD isExecutable
   METHOD isFile
   METHOD isReadable
   METHOD isSymLink
   METHOD isValid
   METHOD isWritable
   METHOD lastModified
   METHOD lastRead
   METHOD name
   METHOD owner
   METHOD permissions
   METHOD setDir
   METHOD setFile
   METHOD setGroup
   METHOD setLastModified
   METHOD setLastRead
   METHOD setName
   METHOD setOwner
   METHOD setPermissions
   METHOD setReadable
   METHOD setSize
   METHOD setSymLink
   METHOD setWritable
   METHOD size
   METHOD equal
   METHOD greaterThan
   METHOD lessThan

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUrlInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QUrlInfo>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QURLINFO_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QUrlInfo()
    */
    QUrlInfo *obj = new QUrlInfo();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQURLINFO(1))
  {
    /*
    QUrlInfo( const QUrlInfo & ui )
    */
    QUrlInfo *obj = new QUrlInfo(*PQURLINFO(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(13) && HB_ISCHAR(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISNUM(5) &&
           ISQDATETIME(6) && ISQDATETIME(7) && HB_ISLOG(8) && HB_ISLOG(9) && HB_ISLOG(10) && HB_ISLOG(11) &&
           HB_ISLOG(12) && HB_ISLOG(13))
  {
    /*
    QUrlInfo( const QString & name, int permissions, const QString & owner, const QString & group, qint64 size, const
    QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool
    isReadable, bool isExecutable )
    */
    QUrlInfo *obj = new QUrlInfo(PQSTRING(1), PINT(2), PQSTRING(3), PQSTRING(4), PQINT64(5), *PQDATETIME(6),
                                 *PQDATETIME(7), PBOOL(8), PBOOL(9), PBOOL(10), PBOOL(11), PBOOL(12), PBOOL(13));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(13) && ISQURL(1) && HB_ISNUM(2) && HB_ISCHAR(3) && HB_ISCHAR(4) && HB_ISNUM(5) && ISQDATETIME(6) &&
           ISQDATETIME(7) && HB_ISLOG(8) && HB_ISLOG(9) && HB_ISLOG(10) && HB_ISLOG(11) && HB_ISLOG(12) && HB_ISLOG(13))
  {
    /*
    QUrlInfo( const QUrl & url, int permissions, const QString & owner, const QString & group, qint64 size, const
    QDateTime & lastModified, const QDateTime & lastRead, bool isDir, bool isFile, bool isSymLink, bool isWritable, bool
    isReadable, bool isExecutable )
    */
    QUrlInfo *obj = new QUrlInfo(*PQURL(1), PINT(2), PQSTRING(3), PQSTRING(4), PQINT64(5), *PQDATETIME(6),
                                 *PQDATETIME(7), PBOOL(8), PBOOL(9), PBOOL(10), PBOOL(11), PBOOL(12), PBOOL(13));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QURLINFO_DELETE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString group() const
*/
HB_FUNC_STATIC(QURLINFO_GROUP)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->group());
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
bool isDir() const
*/
HB_FUNC_STATIC(QURLINFO_ISDIR)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isDir());
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
bool isExecutable() const
*/
HB_FUNC_STATIC(QURLINFO_ISEXECUTABLE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isExecutable());
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
bool isFile() const
*/
HB_FUNC_STATIC(QURLINFO_ISFILE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFile());
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
HB_FUNC_STATIC(QURLINFO_ISREADABLE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isReadable());
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
bool isSymLink() const
*/
HB_FUNC_STATIC(QURLINFO_ISSYMLINK)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSymLink());
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
HB_FUNC_STATIC(QURLINFO_ISVALID)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
HB_FUNC_STATIC(QURLINFO_ISWRITABLE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isWritable());
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
QDateTime lastModified() const
*/
HB_FUNC_STATIC(QURLINFO_LASTMODIFIED)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDateTime *ptr = new QDateTime(obj->lastModified());
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
QDateTime lastRead() const
*/
HB_FUNC_STATIC(QURLINFO_LASTREAD)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDateTime *ptr = new QDateTime(obj->lastRead());
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
QString name() const
*/
HB_FUNC_STATIC(QURLINFO_NAME)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->name());
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
QString owner() const
*/
HB_FUNC_STATIC(QURLINFO_OWNER)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->owner());
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
int permissions() const
*/
HB_FUNC_STATIC(QURLINFO_PERMISSIONS)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->permissions());
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
virtual void setDir( bool b )
*/
HB_FUNC_STATIC(QURLINFO_SETDIR)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setDir(PBOOL(1));
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
virtual void setFile( bool b )
*/
HB_FUNC_STATIC(QURLINFO_SETFILE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFile(PBOOL(1));
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
virtual void setGroup( const QString & s )
*/
HB_FUNC_STATIC(QURLINFO_SETGROUP)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setGroup(PQSTRING(1));
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
virtual void setLastModified( const QDateTime & dt )
*/
HB_FUNC_STATIC(QURLINFO_SETLASTMODIFIED)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATETIME(1))
    {
#endif
      obj->setLastModified(*PQDATETIME(1));
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
void setLastRead( const QDateTime & dt )
*/
HB_FUNC_STATIC(QURLINFO_SETLASTREAD)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATETIME(1))
    {
#endif
      obj->setLastRead(*PQDATETIME(1));
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
virtual void setName( const QString & name )
*/
HB_FUNC_STATIC(QURLINFO_SETNAME)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setName(PQSTRING(1));
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
virtual void setOwner( const QString & s )
*/
HB_FUNC_STATIC(QURLINFO_SETOWNER)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setOwner(PQSTRING(1));
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
virtual void setPermissions( int p )
*/
HB_FUNC_STATIC(QURLINFO_SETPERMISSIONS)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPermissions(PINT(1));
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
virtual void setReadable( bool b )
*/
HB_FUNC_STATIC(QURLINFO_SETREADABLE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setReadable(PBOOL(1));
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
virtual void setSize( qint64 size )
*/
HB_FUNC_STATIC(QURLINFO_SETSIZE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSize(PQINT64(1));
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
virtual void setSymLink( bool b )
*/
HB_FUNC_STATIC(QURLINFO_SETSYMLINK)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setSymLink(PBOOL(1));
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
virtual void setWritable( bool b )
*/
HB_FUNC_STATIC(QURLINFO_SETWRITABLE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setWritable(PBOOL(1));
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
qint64 size() const
*/
HB_FUNC_STATIC(QURLINFO_SIZE)
{
  QUrlInfo *obj = static_cast<QUrlInfo *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->size());
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
static bool equal( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC(QURLINFO_EQUAL)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQURLINFO(1) && ISQURLINFO(2) && HB_ISNUM(3))
  {
#endif
    RBOOL(QUrlInfo::equal(*PQURLINFO(1), *PQURLINFO(2), PINT(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool greaterThan( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC(QURLINFO_GREATERTHAN)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQURLINFO(1) && ISQURLINFO(2) && HB_ISNUM(3))
  {
#endif
    RBOOL(QUrlInfo::greaterThan(*PQURLINFO(1), *PQURLINFO(2), PINT(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static bool lessThan( const QUrlInfo & i1, const QUrlInfo & i2, int sortBy )
*/
HB_FUNC_STATIC(QURLINFO_LESSTHAN)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQURLINFO(1) && ISQURLINFO(2) && HB_ISNUM(3))
  {
#endif
    RBOOL(QUrlInfo::lessThan(*PQURLINFO(1), *PQURLINFO(2), PINT(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QURLINFO_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QURLINFO_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QURLINFO_NEWFROM);
}

HB_FUNC_STATIC(QURLINFO_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QURLINFO_NEWFROM);
}

HB_FUNC_STATIC(QURLINFO_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QURLINFO_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
