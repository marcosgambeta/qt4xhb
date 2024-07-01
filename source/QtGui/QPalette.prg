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
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPalette

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alternateBase
   METHOD base
   METHOD brightText
   METHOD brush
   METHOD button
   METHOD buttonText
   METHOD cacheKey
   METHOD color
   METHOD currentColorGroup
   METHOD dark
   METHOD highlight
   METHOD highlightedText
   METHOD isBrushSet
   METHOD isCopyOf
   METHOD isEqual
   METHOD light
   METHOD link
   METHOD linkVisited
   METHOD mid
   METHOD midlight
   METHOD resolve
   METHOD setBrush
   METHOD setColor
   METHOD setColorGroup
   METHOD setCurrentColorGroup
   METHOD shadow
   METHOD text
   METHOD toolTipBase
   METHOD toolTipText
   METHOD window
   METHOD windowText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPalette
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QPalette>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QPALETTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QPalette()
    */
    QPalette * obj = new QPalette();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)) )
  {
    /*
    QPalette( const QColor & button )
    */
    QPalette * obj = new QPalette( HB_ISOBJECT(1) ? *static_cast<QColor*>( Qt4xHb::itemGetPtr(1) ) : QColor( hb_parc(1)) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    QPalette( Qt::GlobalColor button )
    */
    QPalette * obj = new QPalette( ( Qt::GlobalColor ) hb_parni(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (ISQCOLOR(2) || HB_ISCHAR(2)) )
  {
    /*
    QPalette( const QColor & button, const QColor & window )
    */
    QPalette * obj = new QPalette( HB_ISOBJECT(1) ? *static_cast<QColor*>( Qt4xHb::itemGetPtr(1) ) : QColor( hb_parc(1) ), HB_ISOBJECT(2) ? *static_cast<QColor*>( Qt4xHb::itemGetPtr(2) ) : QColor( hb_parc(2)) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) )
  {
    /*
    QPalette( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
    */
    QPalette * obj = new QPalette( *PQBRUSH(1), *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4), *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7), *PQBRUSH(8), *PQBRUSH(9) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    /*
    QPalette( const QPalette & p )
    */
    QPalette * obj = new QPalette( *PQPALETTE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPALETTE_DELETE )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
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
const QBrush & alternateBase() const
*/
HB_FUNC_STATIC( QPALETTE_ALTERNATEBASE )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->alternateBase();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & base() const
*/
HB_FUNC_STATIC( QPALETTE_BASE )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->base();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & brightText() const
*/
HB_FUNC_STATIC( QPALETTE_BRIGHTTEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->brightText();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPALETTE_BRUSH )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    const QBrush & brush( QPalette::ColorGroup group, QPalette::ColorRole role ) const
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      const QBrush * ptr = &obj->brush( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorRole ) hb_parni(2) );
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    const QBrush & brush( QPalette::ColorRole role ) const
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      const QBrush * ptr = &obj->brush( ( QPalette::ColorRole ) hb_parni(1) );
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
const QBrush & button() const
*/
HB_FUNC_STATIC( QPALETTE_BUTTON )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->button();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & buttonText() const
*/
HB_FUNC_STATIC( QPALETTE_BUTTONTEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->buttonText();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
qint64 cacheKey() const
*/
HB_FUNC_STATIC( QPALETTE_CACHEKEY )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->cacheKey() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPALETTE_COLOR )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    const QColor & color( QPalette::ColorGroup group, QPalette::ColorRole role ) const
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      const QColor * ptr = &obj->color( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorRole ) hb_parni(2) );
      Qt4xHb::createReturnClass(ptr, "QCOLOR", false);
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    const QColor & color( QPalette::ColorRole role ) const
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      const QColor * ptr = &obj->color( ( QPalette::ColorRole ) hb_parni(1) );
      Qt4xHb::createReturnClass(ptr, "QCOLOR", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPalette::ColorGroup currentColorGroup() const
*/
HB_FUNC_STATIC( QPALETTE_CURRENTCOLORGROUP )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->currentColorGroup() );
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
const QBrush & dark() const
*/
HB_FUNC_STATIC( QPALETTE_DARK )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->dark();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & highlight() const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->highlight();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & highlightedText() const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHTEDTEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->highlightedText();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
bool isBrushSet( QPalette::ColorGroup cg, QPalette::ColorRole cr ) const
*/
HB_FUNC_STATIC( QPALETTE_ISBRUSHSET )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->isBrushSet( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorRole ) hb_parni(2)) );
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
bool isCopyOf( const QPalette & p ) const
*/
HB_FUNC_STATIC( QPALETTE_ISCOPYOF )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPALETTE(1) )
    {
#endif
      RBOOL( obj->isCopyOf( *PQPALETTE(1)) );
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
bool isEqual( QPalette::ColorGroup cg1, QPalette::ColorGroup cg2 ) const
*/
HB_FUNC_STATIC( QPALETTE_ISEQUAL )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      RBOOL( obj->isEqual( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorGroup ) hb_parni(2)) );
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
const QBrush & light() const
*/
HB_FUNC_STATIC( QPALETTE_LIGHT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->light();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & link() const
*/
HB_FUNC_STATIC( QPALETTE_LINK )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->link();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & linkVisited() const
*/
HB_FUNC_STATIC( QPALETTE_LINKVISITED )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->linkVisited();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & mid() const
*/
HB_FUNC_STATIC( QPALETTE_MID )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->mid();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & midlight() const
*/
HB_FUNC_STATIC( QPALETTE_MIDLIGHT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->midlight();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
QPalette resolve( const QPalette & other ) const
*/
HB_FUNC_STATIC( QPALETTE_RESOLVE )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPALETTE(1) )
    {
#endif
      QPalette * ptr = new QPalette( obj->resolve( *PQPALETTE(1)) );
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

HB_FUNC_STATIC( QPALETTE_SETBRUSH )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && ISQBRUSH(2) )
  {
    /*
    void setBrush( QPalette::ColorRole role, const QBrush & brush )
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setBrush( ( QPalette::ColorRole ) hb_parni(1), *PQBRUSH(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQBRUSH(3) )
  {
    /*
    void setBrush( QPalette::ColorGroup group, QPalette::ColorRole role, const QBrush & brush )
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setBrush( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorRole ) hb_parni(2), *PQBRUSH(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPALETTE_SETCOLOR )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQCOLOR(3) || HB_ISCHAR(3)) )
  {
    /*
    void setColor( QPalette::ColorGroup group, QPalette::ColorRole role, const QColor & color )
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setColor( ( QPalette::ColorGroup ) hb_parni(1), ( QPalette::ColorRole ) hb_parni(2), HB_ISOBJECT(3) ? *static_cast<QColor*>( Qt4xHb::itemGetPtr(3) ) : QColor( hb_parc(3)) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && (ISQCOLOR(2) || HB_ISCHAR(3)) )
  {
    /*
    void setColor( QPalette::ColorRole role, const QColor & color )
    */
    QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->setColor( ( QPalette::ColorRole ) hb_parni(1), HB_ISOBJECT(2) ? *static_cast<QColor*>( Qt4xHb::itemGetPtr(2) ) : QColor( hb_parc(2)) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setColorGroup( QPalette::ColorGroup cg, const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLORGROUP )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(10) && HB_ISNUM(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) && ISQBRUSH(10) )
    {
#endif
      obj->setColorGroup( ( QPalette::ColorGroup ) hb_parni(1), *PQBRUSH(2), *PQBRUSH(3), *PQBRUSH(4), *PQBRUSH(5), *PQBRUSH(6), *PQBRUSH(7), *PQBRUSH(8), *PQBRUSH(9), *PQBRUSH(10) );
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
void setCurrentColorGroup( QPalette::ColorGroup cg )
*/
HB_FUNC_STATIC( QPALETTE_SETCURRENTCOLORGROUP )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCurrentColorGroup( ( QPalette::ColorGroup ) hb_parni(1) );
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
const QBrush & shadow() const
*/
HB_FUNC_STATIC( QPALETTE_SHADOW )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->shadow();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & text() const
*/
HB_FUNC_STATIC( QPALETTE_TEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->text();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & toolTipBase() const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPBASE )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->toolTipBase();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & toolTipText() const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPTEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->toolTipText();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & window() const
*/
HB_FUNC_STATIC( QPALETTE_WINDOW )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->window();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
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
const QBrush & windowText() const
*/
HB_FUNC_STATIC( QPALETTE_WINDOWTEXT )
{
  QPalette * obj = static_cast<QPalette*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QBrush * ptr = &obj->windowText();
      Qt4xHb::createReturnClass(ptr, "QBRUSH", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPALETTE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
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

HB_FUNC_STATIC( QPALETTE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPALETTE_NEWFROM );
}

HB_FUNC_STATIC( QPALETTE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPALETTE_NEWFROM );
}

HB_FUNC_STATIC( QPALETTE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPALETTE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
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
