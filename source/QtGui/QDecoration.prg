/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREGION
#endif

CLASS QDecoration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD buildSysMenu
   METHOD menuTriggered
   METHOD paint
   METHOD region
   METHOD regionAt
   METHOD regionClicked
   METHOD regionDoubleClicked
   METHOD startMove
   METHOD startResize

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDecoration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QDecoration>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QDECORATION_DELETE)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual void buildSysMenu( QWidget * widget, QMenu * menu )
*/
HB_FUNC_STATIC(QDECORATION_BUILDSYSMENU)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && ISQMENU(2))
    {
#endif
      obj->buildSysMenu(PQWIDGET(1), PQMENU(2));
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
void menuTriggered( QWidget * widget, QAction * action )
*/
HB_FUNC_STATIC(QDECORATION_MENUTRIGGERED)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && ISQACTION(2))
    {
#endif
      obj->menuTriggered(PQWIDGET(1), PQACTION(2));
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
virtual bool paint( QPainter * painter, const QWidget * widget, int decorationRegion = QDecoration::All,
QDecoration::DecorationState state = QDecoration::Normal ) = 0
*/
HB_FUNC_STATIC(QDECORATION_PAINT)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 4) && ISQPAINTER(1) && ISQWIDGET(2) && (HB_ISNUM(3) || HB_ISNIL(3)) &&
        (HB_ISNUM(4) || HB_ISNIL(4)))
    {
#endif
      RBOOL(obj->paint(PQPAINTER(1), PQWIDGET(2), OPINT(3, QDecoration::All),
                       HB_ISNIL(4) ? (QDecoration::DecorationState)QDecoration::Normal
                                   : (QDecoration::DecorationState)hb_parni(4)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QDECORATION_REGION)
{
  if (ISBETWEEN(2, 3) && ISQWIDGET(1) && ISQRECT(2) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    /*
    virtual QRegion region( const QWidget * widget, const QRect & rectangle, int decorationRegion = QDecoration::All ) =
    0
    */
    QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->region(PQWIDGET(1), *PQRECT(2), OPINT(3, QDecoration::All)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else if (ISBETWEEN(1, 2) && ISQWIDGET(1) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    /*
    QRegion region( const QWidget * widget, int decorationRegion = QDecoration::All )
    */
    QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRegion *ptr = new QRegion(obj->region(PQWIDGET(1), OPINT(2, QDecoration::All)));
      Qt4xHb::createReturnClass(ptr, "QREGION", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual int regionAt( const QWidget * widget, const QPoint & point )
*/
HB_FUNC_STATIC(QDECORATION_REGIONAT)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && ISQPOINT(2))
    {
#endif
      RINT(obj->regionAt(PQWIDGET(1), *PQPOINT(2)));
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
virtual void regionClicked( QWidget * widget, int region )
*/
HB_FUNC_STATIC(QDECORATION_REGIONCLICKED)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && HB_ISNUM(2))
    {
#endif
      obj->regionClicked(PQWIDGET(1), PINT(2));
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
virtual void regionDoubleClicked( QWidget * widget, int region )
*/
HB_FUNC_STATIC(QDECORATION_REGIONDOUBLECLICKED)
{
  QDecoration *obj = static_cast<QDecoration *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQWIDGET(1) && HB_ISNUM(2))
    {
#endif
      obj->regionDoubleClicked(PQWIDGET(1), PINT(2));
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
static void startMove( QWidget * widget )
*/
HB_FUNC_STATIC(QDECORATION_STARTMOVE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQWIDGET(1))
  {
#endif
    QDecoration::startMove(PQWIDGET(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void startResize( QWidget * widget )
*/
HB_FUNC_STATIC(QDECORATION_STARTRESIZE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQWIDGET(1))
  {
#endif
    QDecoration::startResize(PQWIDGET(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QDECORATION_NEWFROM)
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

HB_FUNC_STATIC(QDECORATION_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QDECORATION_NEWFROM);
}

HB_FUNC_STATIC(QDECORATION_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QDECORATION_NEWFROM);
}

HB_FUNC_STATIC(QDECORATION_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QDECORATION_SETSELFDESTRUCTION)
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
