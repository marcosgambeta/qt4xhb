//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QXmlName

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD isNull
   METHOD localName
   METHOD namespaceUri
   METHOD prefix
   METHOD toClarkName
   METHOD fromClarkName
   METHOD isNCName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlName
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtXmlPatterns/QXmlName>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtXmlPatterns/QXmlNamePool>

HB_FUNC_STATIC(QXMLNAME_NEW)
{
  if (ISNUMPAR(0))
  {
    // QXmlName()
    QXmlName *obj = new QXmlName();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(2, 4) && ISQXMLNAMEPOOL(1) && HB_ISCHAR(2) && (HB_ISCHAR(3) || HB_ISNIL(3)) &&
           (HB_ISCHAR(4) || HB_ISNIL(4)))
  {
    // QXmlName(QXmlNamePool &namePool, const QString &localName, const QString &namespaceURI = QString(), const QString
    // &prefix = QString())
    QXmlName *obj = new QXmlName(*PQXMLNAMEPOOL(1), PQSTRING(2), OPQSTRING(3, QString()), OPQSTRING(4, QString()));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// bool isNull() const
HB_FUNC_STATIC(QXMLNAME_ISNULL)
{
  QXmlName *obj = static_cast<QXmlName *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// QString localName(const QXmlNamePool &namePool) const
HB_FUNC_STATIC(QXMLNAME_LOCALNAME)
{
  QXmlName *obj = static_cast<QXmlName *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLNAMEPOOL(1))
    {
#endif
      RQSTRING(obj->localName(*PQXMLNAMEPOOL(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString namespaceUri(const QXmlNamePool &namePool) const
HB_FUNC_STATIC(QXMLNAME_NAMESPACEURI)
{
  QXmlName *obj = static_cast<QXmlName *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLNAMEPOOL(1))
    {
#endif
      RQSTRING(obj->namespaceUri(*PQXMLNAMEPOOL(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString prefix(const QXmlNamePool &namePool) const
HB_FUNC_STATIC(QXMLNAME_PREFIX)
{
  QXmlName *obj = static_cast<QXmlName *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLNAMEPOOL(1))
    {
#endif
      RQSTRING(obj->prefix(*PQXMLNAMEPOOL(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString toClarkName(const QXmlNamePool &namePool) const
HB_FUNC_STATIC(QXMLNAME_TOCLARKNAME)
{
  QXmlName *obj = static_cast<QXmlName *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQXMLNAMEPOOL(1))
    {
#endif
      RQSTRING(obj->toClarkName(*PQXMLNAMEPOOL(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// static QXmlName fromClarkName(const QString &clarkName, const QXmlNamePool &namePool)
HB_FUNC_STATIC(QXMLNAME_FROMCLARKNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQXMLNAMEPOOL(2))
  {
#endif
    QXmlName *ptr = new QXmlName(QXmlName::fromClarkName(PQSTRING(1), *PQXMLNAMEPOOL(2)));
    Qt4xHb::createReturnClass(ptr, "QXMLNAME", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool isNCName(const QString &candidate)
HB_FUNC_STATIC(QXMLNAME_ISNCNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RBOOL(QXmlName::isNCName(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QXMLNAME_NEWFROM)
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

HB_FUNC_STATIC(QXMLNAME_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLNAME_NEWFROM);
}

HB_FUNC_STATIC(QXMLNAME_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLNAME_NEWFROM);
}

HB_FUNC_STATIC(QXMLNAME_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLNAME_SETSELFDESTRUCTION)
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
