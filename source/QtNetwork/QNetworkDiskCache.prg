//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkDiskCache
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QNetworkDiskCache>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QNetworkDiskCache( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QNETWORKDISKCACHE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QNetworkDiskCache *obj = new QNetworkDiskCache(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QNETWORKDISKCACHE_DELETE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
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
QString cacheDirectory() const
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_CACHEDIRECTORY)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->cacheDirectory());
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
QNetworkCacheMetaData fileMetaData( const QString &fileName ) const
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_FILEMETADATA)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QNetworkCacheMetaData *ptr = new QNetworkCacheMetaData(obj->fileMetaData(PQSTRING(1)));
      Qt4xHb::createReturnClass(ptr, "QNETWORKCACHEMETADATA", true);
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
qint64 maximumCacheSize() const
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_MAXIMUMCACHESIZE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->maximumCacheSize());
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
void setCacheDirectory( const QString &cacheDir )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_SETCACHEDIRECTORY)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCacheDirectory(PQSTRING(1));
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
void setMaximumCacheSize( qint64 size )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_SETMAXIMUMCACHESIZE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaximumCacheSize(PQINT64(1));
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
virtual qint64 cacheSize() const
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_CACHESIZE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->cacheSize());
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
virtual QIODevice * data( const QUrl &url )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_DATA)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      QIODevice *ptr = obj->data(*PQURL(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QIODEVICE");
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
virtual void insert( QIODevice * device )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_INSERT)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIODEVICE(1))
    {
#endif
      obj->insert(PQIODEVICE(1));
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
virtual QNetworkCacheMetaData metaData( const QUrl &url )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_METADATA)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      QNetworkCacheMetaData *ptr = new QNetworkCacheMetaData(obj->metaData(*PQURL(1)));
      Qt4xHb::createReturnClass(ptr, "QNETWORKCACHEMETADATA", true);
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
virtual QIODevice * prepare( const QNetworkCacheMetaData &metaData )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_PREPARE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1))
    {
#endif
      QIODevice *ptr = obj->prepare(*PQNETWORKCACHEMETADATA(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QIODEVICE");
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
virtual bool remove( const QUrl &url )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_REMOVE)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      RBOOL(obj->remove(*PQURL(1)));
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
virtual void updateMetaData( const QNetworkCacheMetaData &metaData )
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_UPDATEMETADATA)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1))
    {
#endif
      obj->updateMetaData(*PQNETWORKCACHEMETADATA(1));
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
virtual void clear()
*/
HB_FUNC_STATIC(QNETWORKDISKCACHE_CLEAR)
{
  QNetworkDiskCache *obj = qobject_cast<QNetworkDiskCache *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
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

#pragma ENDDUMP
