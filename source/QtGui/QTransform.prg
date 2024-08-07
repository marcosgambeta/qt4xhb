//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLINE
REQUEST QLINEF
REQUEST QPAINTERPATH
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QPOLYGON
REQUEST QPOLYGONF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGION
#endif

CLASS QTransform

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD adjoint
   METHOD determinant
   METHOD dx
   METHOD dy
   METHOD inverted
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isRotating
   METHOD isScaling
   METHOD isTranslating
   METHOD map1
   METHOD map10
   METHOD map
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD setMatrix
   METHOD transposed
   METHOD type
   METHOD fromScale
   METHOD fromTranslate
   METHOD quadToQuad
   METHOD quadToSquare
   METHOD squareToQuad

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTransform>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QTRANSFORM_NEW)
{
  if (ISNUMPAR(0))
  {
    // QTransform()
    QTransform *obj = new QTransform();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(8, 9) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) &&
           HB_ISNUM(7) && HB_ISNUM(8) && (HB_ISNUM(9) || HB_ISNIL(9)))
  {
    // QTransform(qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33
    // = 1.0)
    QTransform *obj = new QTransform(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7),
                                     PQREAL(8), OPQREAL(9, 1.0));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6))
  {
    // QTransform(qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy)
    QTransform *obj = new QTransform(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQMATRIX(1))
  {
    // QTransform(const QMatrix &matrix)
    QTransform *obj = new QTransform(*PQMATRIX(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTRANSFORM_DELETE)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// qreal m11() const
HB_FUNC_STATIC(QTRANSFORM_M11)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m11());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m12() const
HB_FUNC_STATIC(QTRANSFORM_M12)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m12());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m13() const
HB_FUNC_STATIC(QTRANSFORM_M13)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m13());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m21() const
HB_FUNC_STATIC(QTRANSFORM_M21)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m21());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m22() const
HB_FUNC_STATIC(QTRANSFORM_M22)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m22());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m23() const
HB_FUNC_STATIC(QTRANSFORM_M23)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m23());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m31() const
HB_FUNC_STATIC(QTRANSFORM_M31)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m31());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m32() const
HB_FUNC_STATIC(QTRANSFORM_M32)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m32());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal m33() const
HB_FUNC_STATIC(QTRANSFORM_M33)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->m33());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTransform adjoint() const
HB_FUNC_STATIC(QTRANSFORM_ADJOINT)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTransform *ptr = new QTransform(obj->adjoint());
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

// qreal determinant() const
HB_FUNC_STATIC(QTRANSFORM_DETERMINANT)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->determinant());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal dx() const
HB_FUNC_STATIC(QTRANSFORM_DX)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->dx());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal dy() const
HB_FUNC_STATIC(QTRANSFORM_DY)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->dy());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTransform inverted(bool *invertible = 0) const
HB_FUNC_STATIC(QTRANSFORM_INVERTED)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
    {
#endif
      bool par1;
      QTransform *ptr = new QTransform(obj->inverted(&par1));
      Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
      hb_storl(par1, 1);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isAffine() const
HB_FUNC_STATIC(QTRANSFORM_ISAFFINE)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAffine());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isIdentity() const
HB_FUNC_STATIC(QTRANSFORM_ISIDENTITY)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isIdentity());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isInvertible() const
HB_FUNC_STATIC(QTRANSFORM_ISINVERTIBLE)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isInvertible());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isRotating() const
HB_FUNC_STATIC(QTRANSFORM_ISROTATING)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isRotating());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isScaling() const
HB_FUNC_STATIC(QTRANSFORM_ISSCALING)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isScaling());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isTranslating() const
HB_FUNC_STATIC(QTRANSFORM_ISTRANSLATING)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isTranslating());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void map(qreal x, qreal y, qreal *tx, qreal *ty) const
HB_FUNC_STATIC(QTRANSFORM_MAP1)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      qreal par3;
      qreal par4;
      obj->map(PQREAL(1), PQREAL(2), &par3, &par4);
      hb_stornd(par3, 3);
      hb_stornd(par4, 4);
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

// void map(int x, int y, int *tx, int *ty) const
HB_FUNC_STATIC(QTRANSFORM_MAP10)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
    {
#endif
      int par3;
      int par4;
      obj->map(PINT(1), PINT(2), &par3, &par4);
      hb_storni(par3, 3);
      hb_storni(par4, 4);
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

HB_FUNC_STATIC(QTRANSFORM_MAP)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    HB_FUNC_EXEC(QTRANSFORM_MAP1);
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    // QPointF map(const QPointF &p) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPointF *ptr = new QPointF(obj->map(*PQPOINTF(1)));
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    // QPoint map(const QPoint &point) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPoint *ptr = new QPoint(obj->map(*PQPOINT(1)));
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
    }
  }
  else if (ISNUMPAR(1) && ISQLINE(1))
  {
    // QLine map(const QLine &l) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QLine *ptr = new QLine(obj->map(*PQLINE(1)));
      Qt4xHb::createReturnClass(ptr, "QLINE", true);
    }
  }
  else if (ISNUMPAR(1) && ISQLINEF(1))
  {
    // QLineF map(const QLineF &line) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QLineF *ptr = new QLineF(obj->map(*PQLINEF(1)));
      Qt4xHb::createReturnClass(ptr, "QLINEF", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOLYGONF(1))
  {
    // QPolygonF map(const QPolygonF &polygon) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPolygonF *ptr = new QPolygonF(obj->map(*PQPOLYGONF(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGONF", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPOLYGON(1))
  {
    // QPolygon map(const QPolygon &polygon) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPolygon *ptr = new QPolygon(obj->map(*PQPOLYGON(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
    }
  }
  else if (ISNUMPAR(1) && ISQREGION(1))
  {
    // QRegion map(const QRegion &region) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->map(*PQREGION(1)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else if (ISNUMPAR(1) && ISQPAINTERPATH(1))
  {
    // QPainterPath map(const QPainterPath &path) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QPainterPath *ptr = new QPainterPath(obj->map(*PQPAINTERPATH(1)));
      Qt4xHb::createReturnClass(ptr, "QPAINTERPATH", true);
    }
  }
  else if (ISNUMPAR(4) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4))
  {
    HB_FUNC_EXEC(QTRANSFORM_MAP10);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTRANSFORM_MAPRECT)
{
  if (ISNUMPAR(1) && ISQRECTF(1))
  {
    // QRectF mapRect(const QRectF &rectangle) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRectF *ptr = new QRectF(obj->mapRect(*PQRECTF(1)));
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
    }
  }
  else if (ISNUMPAR(1) && ISQRECT(1))
  {
    // QRect mapRect(const QRect &rectangle) const
    QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->mapRect(*PQRECT(1)));
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// QPolygon mapToPolygon(const QRect &rectangle) const
HB_FUNC_STATIC(QTRANSFORM_MAPTOPOLYGON)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQRECT(1))
    {
#endif
      QPolygon *ptr = new QPolygon(obj->mapToPolygon(*PQRECT(1)));
      Qt4xHb::createReturnClass(ptr, "QPOLYGON", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void reset()
HB_FUNC_STATIC(QTRANSFORM_RESET)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reset();
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

// void setMatrix(qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33)
HB_FUNC_STATIC(QTRANSFORM_SETMATRIX)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(9) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) &&
        HB_ISNUM(7) && HB_ISNUM(8) && HB_ISNUM(9))
    {
#endif
      obj->setMatrix(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), PQREAL(7), PQREAL(8), PQREAL(9));
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

// QTransform transposed() const
HB_FUNC_STATIC(QTRANSFORM_TRANSPOSED)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTransform *ptr = new QTransform(obj->transposed());
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

// QTransform::TransformationType type() const
HB_FUNC_STATIC(QTRANSFORM_TYPE)
{
  QTransform *obj = static_cast<QTransform *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// static QTransform fromScale(qreal sx, qreal sy)
HB_FUNC_STATIC(QTRANSFORM_FROMSCALE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
#endif
    QTransform *ptr = new QTransform(QTransform::fromScale(PQREAL(1), PQREAL(2)));
    Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QTransform fromTranslate(qreal dx, qreal dy)
HB_FUNC_STATIC(QTRANSFORM_FROMTRANSLATE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
#endif
    QTransform *ptr = new QTransform(QTransform::fromTranslate(PQREAL(1), PQREAL(2)));
    Qt4xHb::createReturnClass(ptr, "QTRANSFORM", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool quadToQuad(const QPolygonF &one, const QPolygonF &two, QTransform &trans)
HB_FUNC_STATIC(QTRANSFORM_QUADTOQUAD)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(3) && ISQPOLYGONF(1) && ISQPOLYGONF(2) && ISQTRANSFORM(3))
  {
#endif
    RBOOL(QTransform::quadToQuad(*PQPOLYGONF(1), *PQPOLYGONF(2), *PQTRANSFORM(3)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool quadToSquare(const QPolygonF &quad, QTransform &trans)
HB_FUNC_STATIC(QTRANSFORM_QUADTOSQUARE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2))
  {
#endif
    RBOOL(QTransform::quadToSquare(*PQPOLYGONF(1), *PQTRANSFORM(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool squareToQuad(const QPolygonF &quad, QTransform &trans)
HB_FUNC_STATIC(QTRANSFORM_SQUARETOQUAD)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQPOLYGONF(1) && ISQTRANSFORM(2))
  {
#endif
    RBOOL(QTransform::squareToQuad(*PQPOLYGONF(1), *PQTRANSFORM(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QTRANSFORM_NEWFROM)
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

HB_FUNC_STATIC(QTRANSFORM_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QTRANSFORM_NEWFROM);
}

HB_FUNC_STATIC(QTRANSFORM_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QTRANSFORM_NEWFROM);
}

HB_FUNC_STATIC(QTRANSFORM_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QTRANSFORM_SETSELFDESTRUCTION)
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
