$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFontMetrics

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFont
   METHOD inFontUcs4
   METHOD leading
   METHOD leftBearing
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD rightBearing
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width1
   METHOD width2
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontMetrics>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontMetrics ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW1 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW2 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetrics ( const QFontMetrics & fm )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW3 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONTMETRICS(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_ASCENT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->ascent () );
  }
}

/*
int averageCharWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_AVERAGECHARWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->averageCharWidth () );
  }
}

/*
QRect boundingRect ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT1 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect boundingRect ( const QString & text ) const
*/
$method=|QRect|boundingRect,boundingRect2|const QString &

/*
QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT3 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int* par8 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PQSTRING(6), OPINT(7,0), par8 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT4 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int* par5 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->boundingRect ( *PQRECT(1), PINT(2), PQSTRING(3), OPINT(4,0), par5 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT2 );
  }
  else if( ISBETWEEN(6,8) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISNUM(7)||ISNIL(7)) && (ISARRAY(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT3 );
  }
  else if( ISBETWEEN(3,5) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT4 );
  }
}

/*
int descent () const
*/
HB_FUNC_STATIC( QFONTMETRICS_DESCENT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->descent () );
  }
}

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, int width, int flags = 0 ) const
*/
$method=|QString|elidedText|const QString &,Qt::TextElideMode,int,int=0

/*
int height () const
*/
HB_FUNC_STATIC( QFONTMETRICS_HEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}

/*
bool inFont ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_INFONT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->inFont ( *par1 ) );
  }
}

/*
bool inFontUcs4 ( uint character ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_INFONTUCS4 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->inFontUcs4 ( PUINT(1) ) );
  }
}

/*
int leading () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEADING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->leading () );
  }
}

/*
int leftBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_LEFTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->leftBearing ( *par1 ) );
  }
}

/*
int lineSpacing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINESPACING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineSpacing () );
  }
}

/*
int lineWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_LINEWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->lineWidth () );
  }
}

/*
int maxWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MAXWIDTH )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maxWidth () );
  }
}

/*
int minLeftBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINLEFTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minLeftBearing () );
  }
}

/*
int minRightBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICS_MINRIGHTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->minRightBearing () );
  }
}

/*
int overlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_OVERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->overlinePos () );
  }
}

/*
int rightBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_RIGHTBEARING )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->rightBearing ( *par1 ) );
  }
}

/*
QSize size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_SIZE )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int* par4 = (int*) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->size ( PINT(1), PQSTRING(2), OPINT(3,0), par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int strikeOutPos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_STRIKEOUTPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->strikeOutPos () );
  }
}

/*
QRect tightBoundingRect ( const QString & text ) const
*/
$method=|QRect|tightBoundingRect|const QString &

/*
int underlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICS_UNDERLINEPOS )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->underlinePos () );
  }
}

/*
int width ( const QString & text, int len = -1 ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_WIDTH1 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width ( PQSTRING(1), OPINT(2,-1) ) );
  }
}

/*
int width ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICS_WIDTH2 )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->width ( *par1 ) );
  }
}

//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH2 );
  }
}

/*
int xHeight () const
*/
HB_FUNC_STATIC( QFONTMETRICS_XHEIGHT )
{
  QFontMetrics * obj = (QFontMetrics *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->xHeight () );
  }
}

$extraMethods

#pragma ENDDUMP
