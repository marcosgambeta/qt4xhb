/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QCleanlooksStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
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

PROCEDURE destroyObject() CLASS QCleanlooksStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QCleanlooksStyle>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

/*
QCleanlooksStyle()
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCleanlooksStyle * obj = new QCleanlooksStyle();
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DELETE )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && ISQWIDGET(4) )
    {
#endif
      obj->drawComplexControl( ( QStyle::ComplexControl ) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), PQWIDGET(4) );
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
virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCONTROL )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && ISQWIDGET(4) )
    {
#endif
      obj->drawControl( ( QStyle::ControlElement ) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), PQWIDGET(4) );
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
virtual void drawItemPixmap( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMPIXMAP )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQPAINTER(1) && ISQRECT(2) && HB_ISNUM(3) && ISQPIXMAP(4) )
    {
#endif
      obj->drawItemPixmap( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4) );
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
virtual void drawItemText( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMTEXT )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(6, 7) && ISQPAINTER(1) && ISQRECT(2) && HB_ISNUM(3) && ISQPALETTE(4) && HB_ISLOG(5) && HB_ISCHAR(6) && (HB_ISNUM(7) || HB_ISNIL(7)) )
    {
#endif
      obj->drawItemText( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPALETTE(4), PBOOL(5), PQSTRING(6), HB_ISNIL(7) ? ( QPalette::ColorRole ) QPalette::NoRole : ( QPalette::ColorRole ) hb_parni(7) );
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
virtual void drawPrimitive( QStyle::PrimitiveElement elem, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWPRIMITIVE )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)) )
    {
#endif
      obj->drawPrimitive( ( QStyle::PrimitiveElement ) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET( 4, 0 ) );
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
virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_GENERATEDICONPIXMAP )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap( ( QIcon::Mode ) hb_parni(1), *PQPIXMAP(2), PQSTYLEOPTION(3)) );
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

/*
virtual QStyle::SubControl hitTestComplexControl( QStyle::ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && (ISQWIDGET(4) || HB_ISNIL(4)) )
    {
#endif
      RENUM( obj->hitTestComplexControl( ( QStyle::ComplexControl ) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), *PQPOINT(3), OPQWIDGET( 4, 0 )) );
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
virtual QRect itemPixmapRect( const QRect & r, int flags, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_ITEMPIXMAPRECT )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQRECT(1) && HB_ISNUM(2) && ISQPIXMAP(3) )
    {
#endif
      QRect * ptr = new QRect( obj->itemPixmapRect( *PQRECT(1), PINT(2), *PQPIXMAP(3)) );
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

/*
virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_PIXELMETRIC )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric( ( QStyle::PixelMetric ) hb_parni(1), HB_ISNIL(2) ? 0 : static_cast<QStyleOption*>( Qt4xHb::itemGetPtr(2) ), OPQWIDGET( 3, 0 )) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    virtual void polish( QWidget * widget )
    */
    QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->polish( PQWIDGET(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    /*
    virtual void polish( QApplication * app )
    */
    QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->polish( PQAPPLICATION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    /*
    virtual void polish( QPalette & pal )
    */
    QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->polish( *PQPALETTE(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SIZEFROMCONTENTS )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && ISQWIDGET(4) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents( ( QStyle::ContentsType ) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), PQWIDGET(4)) );
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

/*
virtual QPalette standardPalette() const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPALETTE )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPalette * ptr = new QPalette( obj->standardPalette() );
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

/*
virtual QPixmap standardPixmap( QStyle::StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPIXMAP )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap( ( QStyle::StandardPixmap ) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET( 3, 0 )) );
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

/*
virtual int styleHint( QStyle::StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STYLEHINT )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 4) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)) && (ISQSTYLEHINTRETURN(4) || HB_ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint( ( QStyle::StyleHint ) hb_parni(1), HB_ISNIL(2) ? 0 : static_cast<QStyleOption*>( Qt4xHb::itemGetPtr(2) ), OPQWIDGET( 3, 0 ), HB_ISNIL(4) ? 0 : static_cast<QStyleHintReturn*>( Qt4xHb::itemGetPtr(4)) ) );
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
virtual QRect subControlRect( QStyle::ComplexControl control, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBCONTROLRECT )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && HB_ISNUM(3) && ISQWIDGET(4) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect( ( QStyle::ComplexControl ) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), ( QStyle::SubControl ) hb_parni(3), PQWIDGET(4)) );
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

/*
virtual QRect subElementRect( QStyle::SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBELEMENTRECT )
{
  QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect( ( QStyle::SubElement ) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET( 3, 0 )) );
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

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    virtual void unpolish( QWidget * widget )
    */
    QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->unpolish( PQWIDGET(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    /*
    virtual void unpolish( QApplication * app )
    */
    QCleanlooksStyle * obj = qobject_cast<QCleanlooksStyle*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->unpolish( PQAPPLICATION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
