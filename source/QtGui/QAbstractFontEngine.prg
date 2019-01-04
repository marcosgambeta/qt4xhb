/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QAbstractFontEngine INHERIT QObject

   METHOD delete
   METHOD capabilities
   METHOD fontProperty
   METHOD renderGlyph

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractFontEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractFontEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QABSTRACTFONTENGINE_DELETE )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void addGlyphOutlinesToPath ( uint * glyphs, int numGlyphs, FixedPoint * positions, QPainterPath * path )
*/

/*
virtual Capabilities capabilities () const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_CAPABILITIES )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->capabilities () );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool convertStringToGlyphIndices ( const QChar * string, int length, uint * glyphs, int * numGlyphs, TextShapingFlags flags ) const = 0
*/

/*
virtual QVariant fontProperty ( FontProperty property ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_FONTPROPERTY )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->fontProperty ( (QAbstractFontEngine::FontProperty) hb_parni(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void getGlyphAdvances ( const uint * glyphs, int numGlyphs, Fixed * advances, TextShapingFlags flags ) const = 0
*/

/*
virtual bool renderGlyph ( uint glyph, int depth, int bytesPerLine, int height, uchar * buffer )
*/
HB_FUNC_STATIC( QABSTRACTFONTENGINE_RENDERGLYPH )
{
  QAbstractFontEngine * obj = (QAbstractFontEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISCHAR(5) )
    {
#endif
      RBOOL( obj->renderGlyph ( PUINT(1), PINT(2), PINT(3), PINT(4), (uchar *) hb_parc(5) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP