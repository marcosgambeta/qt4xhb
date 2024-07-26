//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR4D
#endif

CLASS QVector3D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD distanceToLine
   METHOD distanceToPlane
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD z
   METHOD crossProduct
   METHOD dotProduct
   METHOD normal

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVector3D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QVector3D>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtGui/QVector2D>
#include <QtGui/QVector4D>

HB_FUNC_STATIC(QVECTOR3D_NEW)
{
  if (ISNUMPAR(0))
  {
    // QVector3D()
    QVector3D *obj = new QVector3D();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    // QVector3D(qreal xpos, qreal ypos, qreal zpos)
    QVector3D *obj = new QVector3D(PQREAL(1), PQREAL(2), PQREAL(3));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOINT(1))
  {
    // QVector3D(const QPoint &point)
    QVector3D *obj = new QVector3D(*PQPOINT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    // QVector3D(const QPointF &point)
    QVector3D *obj = new QVector3D(*PQPOINTF(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQVECTOR2D(1))
  {
    // QVector3D(const QVector2D &vector)
    QVector3D *obj = new QVector3D(*PQVECTOR2D(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && ISQVECTOR2D(1) && HB_ISNUM(2))
  {
    // QVector3D(const QVector2D &vector, qreal zpos)
    QVector3D *obj = new QVector3D(*PQVECTOR2D(1), PQREAL(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQVECTOR4D(1))
  {
    // QVector3D(const QVector4D &vector)
    QVector3D *obj = new QVector3D(*PQVECTOR4D(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QVECTOR3D_DELETE)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

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
qreal distanceToLine(const QVector3D &point, const QVector3D &direction) const
*/
HB_FUNC_STATIC(QVECTOR3D_DISTANCETOLINE)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2))
    {
#endif
      RQREAL(obj->distanceToLine(*PQVECTOR3D(1), *PQVECTOR3D(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QVECTOR3D_DISTANCETOPLANE)
{
  if (ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2))
  {
    /*
    qreal distanceToPlane(const QVector3D &plane, const QVector3D &normal) const
    */
    QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQREAL(obj->distanceToPlane(*PQVECTOR3D(1), *PQVECTOR3D(2)));
    }
  }
  else if (ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3))
  {
    /*
    qreal distanceToPlane(const QVector3D &plane1, const QVector3D &plane2, const QVector3D &plane3) const
    */
    QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RQREAL(obj->distanceToPlane(*PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC(QVECTOR3D_ISNULL)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

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
qreal length() const
*/
HB_FUNC_STATIC(QVECTOR3D_LENGTH)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->length());
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
qreal lengthSquared() const
*/
HB_FUNC_STATIC(QVECTOR3D_LENGTHSQUARED)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->lengthSquared());
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
void normalize()
*/
HB_FUNC_STATIC(QVECTOR3D_NORMALIZE)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->normalize();
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
QVector3D normalized() const
*/
HB_FUNC_STATIC(QVECTOR3D_NORMALIZED)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->normalized());
      Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
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
void setX(qreal x)
*/
HB_FUNC_STATIC(QVECTOR3D_SETX)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setX(PQREAL(1));
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
void setY(qreal y)
*/
HB_FUNC_STATIC(QVECTOR3D_SETY)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setY(PQREAL(1));
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
void setZ(qreal z)
*/
HB_FUNC_STATIC(QVECTOR3D_SETZ)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZ(PQREAL(1));
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
QPoint toPoint() const
*/
HB_FUNC_STATIC(QVECTOR3D_TOPOINT)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->toPoint());
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
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
QPointF toPointF() const
*/
HB_FUNC_STATIC(QVECTOR3D_TOPOINTF)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->toPointF());
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
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
QVector2D toVector2D() const
*/
HB_FUNC_STATIC(QVECTOR3D_TOVECTOR2D)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector2D *ptr = new QVector2D(obj->toVector2D());
      Qt4xHb::createReturnClass(ptr, "QVECTOR2D", true);
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
QVector4D toVector4D() const
*/
HB_FUNC_STATIC(QVECTOR3D_TOVECTOR4D)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector4D *ptr = new QVector4D(obj->toVector4D());
      Qt4xHb::createReturnClass(ptr, "QVECTOR4D", true);
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
qreal x() const
*/
HB_FUNC_STATIC(QVECTOR3D_X)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->x());
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
qreal y() const
*/
HB_FUNC_STATIC(QVECTOR3D_Y)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->y());
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
qreal z() const
*/
HB_FUNC_STATIC(QVECTOR3D_Z)
{
  QVector3D *obj = static_cast<QVector3D *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->z());
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
static QVector3D crossProduct(const QVector3D &v1, const QVector3D &v2)
*/
HB_FUNC_STATIC(QVECTOR3D_CROSSPRODUCT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2))
  {
#endif
    QVector3D *ptr = new QVector3D(QVector3D::crossProduct(*PQVECTOR3D(1), *PQVECTOR3D(2)));
    Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static qreal dotProduct(const QVector3D &v1, const QVector3D &v2)
*/
HB_FUNC_STATIC(QVECTOR3D_DOTPRODUCT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2))
  {
#endif
    RQREAL(QVector3D::dotProduct(*PQVECTOR3D(1), *PQVECTOR3D(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QVECTOR3D_NORMAL)
{
  if (ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2))
  {
    /*
    static QVector3D normal(const QVector3D &v1, const QVector3D &v2)
    */

    QVector3D *ptr = new QVector3D(QVector3D::normal(*PQVECTOR3D(1), *PQVECTOR3D(2)));
    Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
  }
  else if (ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3))
  {
    /*
    static QVector3D normal(const QVector3D &v1, const QVector3D &v2, const QVector3D &v3)
    */

    QVector3D *ptr = new QVector3D(QVector3D::normal(*PQVECTOR3D(1), *PQVECTOR3D(2), *PQVECTOR3D(3)));
    Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QVECTOR3D_NEWFROM)
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

HB_FUNC_STATIC(QVECTOR3D_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QVECTOR3D_NEWFROM);
}

HB_FUNC_STATIC(QVECTOR3D_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QVECTOR3D_NEWFROM);
}

HB_FUNC_STATIC(QVECTOR3D_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QVECTOR3D_SETSELFDESTRUCTION)
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
