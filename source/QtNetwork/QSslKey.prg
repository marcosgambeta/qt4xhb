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

CLASS QSslKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD algorithm
   METHOD clear
   METHOD isNull
   METHOD length
   METHOD toDer
   METHOD toPem
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSslKey
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtNetwork/QSslKey>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSSLKEY_NEW)
{
  if (ISNUMPAR(0))
  {
    // QSslKey()
    QSslKey *obj = new QSslKey();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 5) && ISQBYTEARRAY(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)) && (ISQBYTEARRAY(5) || HB_ISNIL(5)))
  {
    /*
    QSslKey(const QByteArray &encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem,
    QSsl::KeyType type = QSsl::PrivateKey, const QByteArray &passPhrase = QByteArray())
    */
    QSslKey *obj = new QSslKey(*PQBYTEARRAY(1), (QSsl::KeyAlgorithm)hb_parni(2),
                               HB_ISNIL(3) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(3),
                               HB_ISNIL(4) ? (QSsl::KeyType)QSsl::PrivateKey : (QSsl::KeyType)hb_parni(4),
                               HB_ISNIL(5) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(5)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 5) && ISQIODEVICE(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
           (HB_ISNUM(4) || HB_ISNIL(4)) && (ISQBYTEARRAY(5) || HB_ISNIL(5)))
  {
    /*
    QSslKey(QIODevice *device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType
    type = QSsl::PrivateKey, const QByteArray &passPhrase = QByteArray())
    */
    QSslKey *obj = new QSslKey(PQIODEVICE(1), (QSsl::KeyAlgorithm)hb_parni(2),
                               HB_ISNIL(3) ? (QSsl::EncodingFormat)QSsl::Pem : (QSsl::EncodingFormat)hb_parni(3),
                               HB_ISNIL(4) ? (QSsl::KeyType)QSsl::PrivateKey : (QSsl::KeyType)hb_parni(4),
                               HB_ISNIL(5) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(5)));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSSLKEY(1))
  {
    // QSslKey(const QSslKey &other)
    QSslKey *obj = new QSslKey(*PQSSLKEY(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSSLKEY_DELETE)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

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
QSsl::KeyAlgorithm algorithm() const
*/
HB_FUNC_STATIC(QSSLKEY_ALGORITHM)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->algorithm());
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
void clear()
*/
HB_FUNC_STATIC(QSSLKEY_CLEAR)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

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

/*
bool isNull() const
*/
HB_FUNC_STATIC(QSSLKEY_ISNULL)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNull());
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
int length() const
*/
HB_FUNC_STATIC(QSSLKEY_LENGTH)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->length());
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
QByteArray toDer(const QByteArray &passPhrase = QByteArray()) const
*/
HB_FUNC_STATIC(QSSLKEY_TODER)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQBYTEARRAY(1) || HB_ISNIL(1)))
    {
#endif
      QByteArray *ptr =
          new QByteArray(obj->toDer(HB_ISNIL(1) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(1))));
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
QByteArray toPem(const QByteArray &passPhrase = QByteArray()) const
*/
HB_FUNC_STATIC(QSSLKEY_TOPEM)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQBYTEARRAY(1) || HB_ISNIL(1)))
    {
#endif
      QByteArray *ptr =
          new QByteArray(obj->toPem(HB_ISNIL(1) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(1))));
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
QSsl::KeyType type() const
*/
HB_FUNC_STATIC(QSSLKEY_TYPE)
{
  QSslKey *obj = static_cast<QSslKey *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->type());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSSLKEY_NEWFROM)
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

HB_FUNC_STATIC(QSSLKEY_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QSSLKEY_NEWFROM);
}

HB_FUNC_STATIC(QSSLKEY_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QSSLKEY_NEWFROM);
}

HB_FUNC_STATIC(QSSLKEY_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QSSLKEY_SETSELFDESTRUCTION)
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
