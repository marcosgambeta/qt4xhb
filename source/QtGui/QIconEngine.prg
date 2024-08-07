//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QSIZE
#endif

CLASS QIconEngine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD paint
   METHOD pixmap

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QIconEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QIconEngine>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QICONENGINE_DELETE)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// virtual QSize actualSize(const QSize &size, QIcon::Mode mode, QIcon::State state)
HB_FUNC_STATIC(QICONENGINE_ACTUALSIZE)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQSIZE(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      QSize *ptr = new QSize(obj->actualSize(*PQSIZE(1), (QIcon::Mode)hb_parni(2), (QIcon::State)hb_parni(3)));
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void addFile(const QString &fileName, const QSize &size, QIcon::Mode mode, QIcon::State state)
HB_FUNC_STATIC(QICONENGINE_ADDFILE)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISCHAR(1) && ISQSIZE(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->addFile(PQSTRING(1), *PQSIZE(2), (QIcon::Mode)hb_parni(3), (QIcon::State)hb_parni(4));
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

// virtual void addPixmap(const QPixmap &pixmap, QIcon::Mode mode, QIcon::State state)
HB_FUNC_STATIC(QICONENGINE_ADDPIXMAP)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQPIXMAP(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      obj->addPixmap(*PQPIXMAP(1), (QIcon::Mode)hb_parni(2), (QIcon::State)hb_parni(3));
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

// virtual void paint(QPainter *painter, const QRect &rect, QIcon::Mode mode, QIcon::State state) = 0
HB_FUNC_STATIC(QICONENGINE_PAINT)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && ISQPAINTER(1) && ISQRECT(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      obj->paint(PQPAINTER(1), *PQRECT(2), (QIcon::Mode)hb_parni(3), (QIcon::State)hb_parni(4));
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

// virtual QPixmap pixmap(const QSize &size, QIcon::Mode mode, QIcon::State state)
HB_FUNC_STATIC(QICONENGINE_PIXMAP)
{
  QIconEngine *obj = static_cast<QIconEngine *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(3) && ISQSIZE(1) && HB_ISNUM(2) && HB_ISNUM(3))
    {
#endif
      QPixmap *ptr = new QPixmap(obj->pixmap(*PQSIZE(1), (QIcon::Mode)hb_parni(2), (QIcon::State)hb_parni(3)));
      Qt4xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QICONENGINE_NEWFROM)
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

HB_FUNC_STATIC(QICONENGINE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QICONENGINE_NEWFROM);
}

HB_FUNC_STATIC(QICONENGINE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QICONENGINE_NEWFROM);
}

HB_FUNC_STATIC(QICONENGINE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QICONENGINE_SETSELFDESTRUCTION)
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
