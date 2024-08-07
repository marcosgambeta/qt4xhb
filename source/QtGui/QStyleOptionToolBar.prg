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

CLASS QStyleOptionToolBar INHERIT QStyleOption

   METHOD new
   METHOD positionOfLine
   METHOD setPositionOfLine
   METHOD positionWithinLine
   METHOD setPositionWithinLine
   METHOD toolBarArea
   METHOD setToolBarArea
   METHOD features
   METHOD setFeatures
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionToolBar>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_NEW)
{
  if (ISNUMPAR(0))
  {
    // QStyleOptionToolBar()
    QStyleOptionToolBar *obj = new QStyleOptionToolBar();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBAR(1))
  {
    // QStyleOptionToolBar(const QStyleOptionToolBar &other)
    QStyleOptionToolBar *obj = new QStyleOptionToolBar(*PQSTYLEOPTIONTOOLBAR(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// ToolBarPosition positionOfLine
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_POSITIONOFLINE)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->positionOfLine);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETPOSITIONOFLINE)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->positionOfLine=(QStyleOptionToolBar::ToolBarPosition)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// ToolBarPosition positionWithinLine
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_POSITIONWITHINLINE)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->positionWithinLine);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETPOSITIONWITHINLINE)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->positionWithinLine=(QStyleOptionToolBar::ToolBarPosition)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// Qt::ToolBarArea toolBarArea
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_TOOLBARAREA)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->toolBarArea);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETTOOLBARAREA)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->toolBarArea=(Qt::ToolBarArea)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// ToolBarFeatures features
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_FEATURES)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->features);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETFEATURES)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->features=(QStyleOptionToolBar::ToolBarFeatures)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// int lineWidth
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_LINEWIDTH)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->lineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETLINEWIDTH)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->lineWidth=PINT(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// int midLineWidth
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_MIDLINEWIDTH)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->midLineWidth);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTOOLBAR_SETMIDLINEWIDTH)
{
  QStyleOptionToolBar *obj = static_cast<QStyleOptionToolBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->midLineWidth=PINT(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
