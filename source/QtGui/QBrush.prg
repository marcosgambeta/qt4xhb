//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGRADIENT
REQUEST QIMAGE
REQUEST QMATRIX
REQUEST QPIXMAP
REQUEST QTRANSFORM
#endif

CLASS QBrush

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor
   METHOD setMatrix
   METHOD setStyle
   METHOD setTexture
   METHOD setTextureImage
   METHOD setTransform
   METHOD style
   METHOD texture
   METHOD textureImage
   METHOD transform
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBrush
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QBrush>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QVariant>

HB_FUNC_STATIC(QBRUSH_NEW)
{
  if (ISNUMPAR(0))
  {
    // QBrush()
    QBrush *obj = new QBrush();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // QBrush(Qt::BrushStyle style)
    QBrush *obj = new QBrush((Qt::BrushStyle)hb_parni(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    // QBrush(const QColor &color, Qt::BrushStyle style = Qt::SolidPattern)
    QBrush *obj = new QBrush(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)),
                             HB_ISNIL(2) ? (Qt::BrushStyle)Qt::SolidPattern : (Qt::BrushStyle)hb_parni(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    // QBrush(Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern)
    QBrush *obj = new QBrush((Qt::GlobalColor)hb_parni(1),
                             HB_ISNIL(2) ? (Qt::BrushStyle)Qt::SolidPattern : (Qt::BrushStyle)hb_parni(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && ISQPIXMAP(2))
  {
    // QBrush(const QColor &color, const QPixmap &pixmap)
    QBrush *obj =
        new QBrush(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)), *PQPIXMAP(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && ISQPIXMAP(2))
  {
    // QBrush(Qt::GlobalColor color, const QPixmap &pixmap)
    QBrush *obj = new QBrush((Qt::GlobalColor)hb_parni(1), *PQPIXMAP(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPIXMAP(1))
  {
    // QBrush(const QPixmap &pixmap)
    QBrush *obj = new QBrush(*PQPIXMAP(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQIMAGE(1))
  {
    // QBrush(const QImage &image)
    QBrush *obj = new QBrush(*PQIMAGE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQBRUSH(1))
  {
    // QBrush(const QBrush &other)
    QBrush *obj = new QBrush(*PQBRUSH(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQGRADIENT(1))
  {
    // QBrush(const QGradient &gradient)
    QBrush *obj = new QBrush(*PQGRADIENT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBRUSH_DELETE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// const QColor &color() const
HB_FUNC_STATIC(QBRUSH_COLOR)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QColor *ptr = &obj->color();
      Qt4xHb::createReturnClass(ptr, "QCOLOR", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// const QGradient *gradient() const
HB_FUNC_STATIC(QBRUSH_GRADIENT)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QGradient *ptr = obj->gradient();
      Qt4xHb::createReturnClass(ptr, "QGRADIENT", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isOpaque() const
HB_FUNC_STATIC(QBRUSH_ISOPAQUE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isOpaque());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// const QMatrix &matrix() const
HB_FUNC_STATIC(QBRUSH_MATRIX)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QMatrix *ptr = &obj->matrix();
      Qt4xHb::createReturnClass(ptr, "QMATRIX", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QBRUSH_SETCOLOR)
{
  if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
  {
    // void setColor(const QColor &color)
    QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setColor(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    // void setColor(Qt::GlobalColor color)
    QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setColor((Qt::GlobalColor)hb_parni(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// void setMatrix(const QMatrix &matrix)
HB_FUNC_STATIC(QBRUSH_SETMATRIX)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMATRIX(1))
    {
#endif
      obj->setMatrix(*PQMATRIX(1));
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

// void setStyle(Qt::BrushStyle style)
HB_FUNC_STATIC(QBRUSH_SETSTYLE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStyle((Qt::BrushStyle)hb_parni(1));
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

// void setTexture(const QPixmap &pixmap)
HB_FUNC_STATIC(QBRUSH_SETTEXTURE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPIXMAP(1))
    {
#endif
      obj->setTexture(*PQPIXMAP(1));
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

// void setTextureImage(const QImage &image)
HB_FUNC_STATIC(QBRUSH_SETTEXTUREIMAGE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQIMAGE(1))
    {
#endif
      obj->setTextureImage(*PQIMAGE(1));
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

// void setTransform(const QTransform &matrix)
HB_FUNC_STATIC(QBRUSH_SETTRANSFORM)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTRANSFORM(1))
    {
#endif
      obj->setTransform(*PQTRANSFORM(1));
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

// Qt::BrushStyle style() const
HB_FUNC_STATIC(QBRUSH_STYLE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->style());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QPixmap texture() const
HB_FUNC_STATIC(QBRUSH_TEXTURE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPixmap *ptr = new QPixmap(obj->texture());
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

// QImage textureImage() const
HB_FUNC_STATIC(QBRUSH_TEXTUREIMAGE)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QImage *ptr = new QImage(obj->textureImage());
      Qt4xHb::createReturnClass(ptr, "QIMAGE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTransform transform() const
HB_FUNC_STATIC(QBRUSH_TRANSFORM)
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTransform *ptr = new QTransform(obj->transform());
      Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant toVariant()
void QBrush_toVariant1()
{
  QBrush *obj = static_cast<QBrush *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj)
  {
    QVariant *variant = new QVariant();
    variant->setValue<QBrush>(*obj);
    Qt4xHb::createReturnClass(variant, "QVARIANT", true);
  }
}

// static QVariant toVariant(const QBrush &)
void QBrush_toVariant2()
{
  QBrush *brush = static_cast<QBrush *>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
  QVariant *variant = new QVariant();
  variant->setValue<QBrush>(*brush);
  Qt4xHb::createReturnClass(variant, "QVARIANT", true);
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant(const QBrush &)

HB_FUNC_STATIC(QBRUSH_TOVARIANT)
{
  if (ISNUMPAR(0))
  {
    QBrush_toVariant1();
  }
  else if (ISNUMPAR(1) && ISQBRUSH(1))
  {
    QBrush_toVariant2();
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static QBrush fromVariant(const QVariant &)
HB_FUNC_STATIC(QBRUSH_FROMVARIANT)
{
  if (ISNUMPAR(1) && ISQVARIANT(1))
  {
    QVariant *variant = static_cast<QVariant *>(hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    QBrush *brush = new QBrush(variant->value<QBrush>());
    Qt4xHb::createReturnClass(brush, "QBRUSH", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBRUSH_NEWFROM)
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

HB_FUNC_STATIC(QBRUSH_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QBRUSH_NEWFROM);
}

HB_FUNC_STATIC(QBRUSH_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QBRUSH_NEWFROM);
}

HB_FUNC_STATIC(QBRUSH_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QBRUSH_SETSELFDESTRUCTION)
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
