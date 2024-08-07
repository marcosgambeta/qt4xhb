//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QWindowsXPStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWindowsXPStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QWindowsXPStyle>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    // QWindowsXPStyle()
HB_FUNC_STATIC(QWINDOWSXPSTYLE_NEW)
{
  if (ISNUMPAR(0))
  {
    QWindowsXPStyle *obj = new QWindowsXPStyle();
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QWINDOWSXPSTYLE_DELETE)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// virtual void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex *option, QPainter *p, const
// QWidget *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_DRAWCOMPLEXCONTROL)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawComplexControl((QStyle::ComplexControl)hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3),
                              OPQWIDGET(4, 0));
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

// virtual void drawControl(QStyle::ControlElement element, const QStyleOption *option, QPainter *p, const QWidget
// *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_DRAWCONTROL)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawControl((QStyle::ControlElement)hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4, 0));
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

// virtual void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption *option, QPainter *p, const QWidget
// *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_DRAWPRIMITIVE)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawPrimitive((QStyle::PrimitiveElement)hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4, 0));
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

// virtual int pixelMetric(QStyle::PixelMetric pm, const QStyleOption *option = 0, const QWidget *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_PIXELMETRIC)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      RINT(obj->pixelMetric((QStyle::PixelMetric)hb_parni(1),
                            HB_ISNIL(2) ? 0 : static_cast<QStyleOption *>(Qt4xHb::itemGetPtr(2)), OPQWIDGET(3, 0)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QWINDOWSXPSTYLE_POLISH)
{
  if (ISNUMPAR(1) && ISQAPPLICATION(1))
  {
    // virtual void polish(QApplication *app)
    QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->polish(PQAPPLICATION(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    // virtual void polish(QWidget *widget)
    QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->polish(PQWIDGET(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQPALETTE(1))
  {
    // virtual void polish(QPalette &pal)
    QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->polish(*PQPALETTE(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// virtual QSize sizeFromContents(QStyle::ContentsType ct, const QStyleOption *option, const QSize &contentsSize, const
// QWidget *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_SIZEFROMCONTENTS)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      QSize *ptr = new QSize(
          obj->sizeFromContents((QStyle::ContentsType)hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4, 0)));
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

// virtual QPalette standardPalette() const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_STANDARDPALETTE)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPalette *ptr = new QPalette(obj->standardPalette());
      Qt4xHb::createReturnClass(ptr, "QPALETTE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QPixmap standardPixmap(QStyle::StandardPixmap standardPixmap, const QStyleOption *option, const QWidget
// *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_STANDARDPIXMAP)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      QPixmap *ptr =
          new QPixmap(obj->standardPixmap((QStyle::StandardPixmap)hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3, 0)));
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

// virtual int styleHint(QStyle::StyleHint hint, const QStyleOption *option = 0, const QWidget *widget = 0,
// QStyleHintReturn *returnData = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_STYLEHINT)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)) &&
        (ISQSTYLEHINTRETURN(4) || HB_ISNIL(4)))
    {
#endif
      RINT(obj->styleHint((QStyle::StyleHint)hb_parni(1),
                          HB_ISNIL(2) ? 0 : static_cast<QStyleOption *>(Qt4xHb::itemGetPtr(2)), OPQWIDGET(3, 0),
                          HB_ISNIL(4) ? 0 : static_cast<QStyleHintReturn *>(Qt4xHb::itemGetPtr(4))));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QRect subControlRect(QStyle::ComplexControl cc, const QStyleOptionComplex *option, QStyle::SubControl
// subControl, const QWidget *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_SUBCONTROLRECT)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && HB_ISNUM(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      QRect *ptr = new QRect(obj->subControlRect((QStyle::ComplexControl)hb_parni(1), PQSTYLEOPTIONCOMPLEX(2),
                                                 (QStyle::SubControl)hb_parni(3), OPQWIDGET(4, 0)));
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual QRect subElementRect(QStyle::SubElement sr, const QStyleOption *option, const QWidget *widget = 0) const
HB_FUNC_STATIC(QWINDOWSXPSTYLE_SUBELEMENTRECT)
{
  QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      QRect *ptr = new QRect(obj->subElementRect((QStyle::SubElement)hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3, 0)));
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QWINDOWSXPSTYLE_UNPOLISH)
{
  if (ISNUMPAR(1) && ISQAPPLICATION(1))
  {
    // virtual void unpolish(QApplication *app)
    QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->unpolish(PQAPPLICATION(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    // virtual void unpolish(QWidget *widget)
    QWindowsXPStyle *obj = qobject_cast<QWindowsXPStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->unpolish(PQWIDGET(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
