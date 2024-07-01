/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo

   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsRotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsRotation>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QGraphicsRotation( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QGRAPHICSROTATION_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QGraphicsRotation *obj = new QGraphicsRotation(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSROTATION_DELETE)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
qreal angle() const
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_ANGLE)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->angle());
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
QVector3D axis() const
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_AXIS)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->axis());
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
QVector3D origin() const
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_ORIGIN)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->origin());
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
void setAngle( qreal )
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_SETANGLE)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAngle(PQREAL(1));
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

HB_FUNC_STATIC(QGRAPHICSROTATION_SETAXIS)
{
  if (ISNUMPAR(1) && ISQVECTOR3D(1))
  {
    /*
    void setAxis( const QVector3D & axis )
    */
    QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setAxis(*PQVECTOR3D(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setAxis( Qt::Axis axis )
    */
    QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setAxis((Qt::Axis)hb_parni(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setOrigin( const QVector3D & point )
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_SETORIGIN)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVECTOR3D(1))
    {
#endif
      obj->setOrigin(*PQVECTOR3D(1));
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
virtual void applyTo( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC(QGRAPHICSROTATION_APPLYTO)
{
  QGraphicsRotation *obj = qobject_cast<QGraphicsRotation *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMATRIX4X4(1))
    {
#endif
      obj->applyTo(PQMATRIX4X4(1));
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

void QGraphicsRotationSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGRAPHICSROTATION_ONANGLECHANGED)
{
  QGraphicsRotationSlots_connect_signal("angleChanged()", "angleChanged()");
}

HB_FUNC_STATIC(QGRAPHICSROTATION_ONAXISCHANGED)
{
  QGraphicsRotationSlots_connect_signal("axisChanged()", "axisChanged()");
}

HB_FUNC_STATIC(QGRAPHICSROTATION_ONORIGINCHANGED)
{
  QGraphicsRotationSlots_connect_signal("originChanged()", "originChanged()");
}

#pragma ENDDUMP
