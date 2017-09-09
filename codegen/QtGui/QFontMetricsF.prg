$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
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

#include <QFontMetricsF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontMetricsF ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW1 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW2 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFontMetrics & fontMetrics )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW3 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICS(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFontMetricsF & fm )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW4 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICSF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QFontMetricsF ( const QFont & font )
//[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
//[4]QFontMetricsF ( const QFontMetricsF & fm )

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal ascent () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_ASCENT )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}

/*
qreal averageCharWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_AVERAGECHARWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->averageCharWidth () );
  }
}

/*
QRectF boundingRect ( const QString & text ) const
*/
$method=|QRectF|boundingRect,boundingRect1|const QString &

/*
QRectF boundingRect ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT2 )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->boundingRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT3 )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    int par5;
    QRectF * ptr = new QRectF( obj->boundingRect ( *PQRECTF(1), par2, PQSTRING(3), OPINT(4,0), &par5 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
    hb_storni( par5, 5 );
  }
}

//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT2 );
  }
  else if( ISBETWEEN(3,5) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT3 );
  }
}

/*
qreal descent () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_DESCENT )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
*/
$method=|QString|elidedText|const QString &,Qt::TextElideMode,qreal,int=0

/*
qreal height () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_HEIGHT )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->height () );
  }
}

/*
bool inFont ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_INFONT )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->inFont ( *par1 ) );
  }
}

/*
bool inFontUcs4 ( uint ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_INFONTUCS4 )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->inFontUcs4 ( PUINT(1) ) );
  }
}

/*
qreal leading () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LEADING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->leading () );
  }
}

/*
qreal leftBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LEFTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQREAL( obj->leftBearing ( *par1 ) );
  }
}

/*
qreal lineSpacing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINESPACING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lineSpacing () );
  }
}

/*
qreal lineWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_LINEWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lineWidth () );
  }
}

/*
qreal maxWidth () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MAXWIDTH )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->maxWidth () );
  }
}

/*
qreal minLeftBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINLEFTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->minLeftBearing () );
  }
}

/*
qreal minRightBearing () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_MINRIGHTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->minRightBearing () );
  }
}

/*
qreal overlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_OVERLINEPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->overlinePos () );
  }
}

/*
qreal rightBearing ( QChar ch ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_RIGHTBEARING )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQREAL( obj->rightBearing ( *par1 ) );
  }
}

/*
QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
HB_FUNC_STATIC( QFONTMETRICSF_SIZE )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par4;
    QSizeF * ptr = new QSizeF( obj->size ( PINT(1), PQSTRING(2), OPINT(3,0), &par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
    hb_storni( par4, 4 );
  }
}

/*
qreal strikeOutPos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_STRIKEOUTPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->strikeOutPos () );
  }
}

/*
QRectF tightBoundingRect ( const QString & text ) const
*/
$method=|QRectF|tightBoundingRect|const QString &

/*
qreal underlinePos () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_UNDERLINEPOS )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->underlinePos () );
  }
}

/*
qreal width ( const QString & text ) const
*/
$method=|qreal|width,width1|const QString &

/*
qreal width ( QChar ch ) const
*/
$method=|qreal|width,width2|QChar

//[1]qreal width ( const QString & text ) const
//[2]qreal width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_WIDTH1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_WIDTH2 );
  }
}

/*
qreal xHeight () const
*/
HB_FUNC_STATIC( QFONTMETRICSF_XHEIGHT )
{
  QFontMetricsF * obj = (QFontMetricsF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->xHeight () );
  }
}

$extraMethods

#pragma ENDDUMP
