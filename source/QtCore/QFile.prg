//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

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

PROCEDURE destroyObject() CLASS QFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QFile>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QFILE_NEW)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // QFile(const QString &name)
    QFile *obj = new QFile(PQSTRING(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    // QFile(QObject *parent)
    QFile *obj = new QFile(PQOBJECT(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2))
  {
    // QFile(const QString &name, QObject *parent)
    QFile *obj = new QFile(PQSTRING(1), PQOBJECT(2));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_DELETE)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// QFile::FileError error() const
HB_FUNC_STATIC(QFILE_ERROR)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString fileName() const
HB_FUNC_STATIC(QFILE_FILENAME)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->fileName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool flush()
HB_FUNC_STATIC(QFILE_FLUSH)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->flush());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int handle() const
HB_FUNC_STATIC(QFILE_HANDLE)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->handle());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setFileName(const QString &name)
HB_FUNC_STATIC(QFILE_SETFILENAME)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setFileName(PQSTRING(1));
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

// bool unmap(uchar *address)
HB_FUNC_STATIC(QFILE_UNMAP)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->unmap((uchar *)hb_parc(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void unsetError()
HB_FUNC_STATIC(QFILE_UNSETERROR)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->unsetError();
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

// virtual bool atEnd() const
HB_FUNC_STATIC(QFILE_ATEND)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->atEnd());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void close()
HB_FUNC_STATIC(QFILE_CLOSE)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
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

// virtual bool isSequential() const
HB_FUNC_STATIC(QFILE_ISSEQUENTIAL)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isSequential());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QFILE_OPEN)
{
  if (ISNUMPAR(2) && HB_ISPOINTER(1) && HB_ISNUM(2))
  {
    // bool open(FILE *fh, QIODevice::OpenMode mode)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->open(static_cast<FILE *>(hb_parptr(1)), (QIODevice::OpenMode)hb_parni(2)));
    }
  }
  else if (ISNUMPAR(3) && HB_ISPOINTER(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    // bool open(FILE *fh, QIODevice::OpenMode mode, QFile::FileHandleFlags handleFlags)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->open(static_cast<FILE *>(hb_parptr(1)), (QIODevice::OpenMode)hb_parni(2),
                      (QFile::FileHandleFlags)hb_parni(3)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // bool open(int fd, QIODevice::OpenMode mode)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->open(PINT(1), (QIODevice::OpenMode)hb_parni(2)));
    }
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    // bool open(int fd, QIODevice::OpenMode mode, QFile::FileHandleFlags handleFlags)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->open(PINT(1), (QIODevice::OpenMode)hb_parni(2), (QFile::FileHandleFlags)hb_parni(3)));
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // virtual bool open(QIODevice::OpenMode mode)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->open((QIODevice::OpenMode)hb_parni(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual qint64 pos() const
HB_FUNC_STATIC(QFILE_POS)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->pos());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool seek(qint64 pos)
HB_FUNC_STATIC(QFILE_SEEK)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->seek(PQINT64(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual qint64 size() const
HB_FUNC_STATIC(QFILE_SIZE)
{
  QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QFILE_COPY)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // bool copy(const QString &newName)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->copy(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    // static bool copy(const QString &fileName, const QString &newName)

    RBOOL(QFile::copy(PQSTRING(1), PQSTRING(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_DECODENAME)
{
  if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    // static QString decodeName(const QByteArray &localFileName)

    RQSTRING(QFile::decodeName(*PQBYTEARRAY(1)));
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // static QString decodeName(const char *localFileName)

    RQSTRING(QFile::decodeName(PCONSTCHAR(1)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static QByteArray encodeName(const QString &fileName)
HB_FUNC_STATIC(QFILE_ENCODENAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QByteArray *ptr = new QByteArray(QFile::encodeName(PQSTRING(1)));
    Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QFILE_EXISTS)
{
  if (ISNUMPAR(0))
  {
    // bool exists() const
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->exists());
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // static bool exists(const QString &fileName)

    RBOOL(QFile::exists(PQSTRING(1)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_LINK)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // bool link(const QString &linkName)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->link(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    // static bool link(const QString &fileName, const QString &linkName)

    RBOOL(QFile::link(PQSTRING(1), PQSTRING(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_PERMISSIONS)
{
  if (ISNUMPAR(0))
  {
    // QFile::Permissions permissions() const
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RENUM(obj->permissions());
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // static QFile::Permissions permissions(const QString &fileName)

    RENUM(QFile::permissions(PQSTRING(1)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_REMOVE)
{
  if (ISNUMPAR(0))
  {
    // bool remove()
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->remove());
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // static bool remove(const QString &fileName)

    RBOOL(QFile::remove(PQSTRING(1)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_RENAME)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // bool rename(const QString &newName)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->rename(PQSTRING(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
    // static bool rename(const QString &oldName, const QString &newName)

    RBOOL(QFile::rename(PQSTRING(1), PQSTRING(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_RESIZE)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // bool resize(qint64 sz)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->resize(PQINT64(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    // static bool resize(const QString &fileName, qint64 sz)

    RBOOL(QFile::resize(PQSTRING(1), PQINT64(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_SETPERMISSIONS)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // bool setPermissions(QFile::Permissions permissions)
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RBOOL(obj->setPermissions((QFile::Permissions)hb_parni(1)));
    }
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
  {
    // static bool setPermissions(const QString &fileName, QFile::Permissions permissions)

    RBOOL(QFile::setPermissions(PQSTRING(1), (QFile::Permissions)hb_parni(2)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILE_SYMLINKTARGET)
{
  if (ISNUMPAR(0))
  {
    // QString symLinkTarget() const
    QFile *obj = qobject_cast<QFile *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RQSTRING(obj->symLinkTarget());
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // static QString symLinkTarget(const QString &fileName)

    RQSTRING(QFile::symLinkTarget(PQSTRING(1)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
