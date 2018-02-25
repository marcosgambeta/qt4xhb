/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QPIXMAP
REQUEST QICON
#endif

CLASS QIcon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actualSize
   METHOD addFile
   METHOD addPixmap
   METHOD availableSizes
   METHOD cacheKey
   METHOD isNull
   METHOD name
   METHOD paint
   METHOD pixmap
   METHOD fromTheme
   METHOD hasThemeIcon
   METHOD setThemeName
   METHOD setThemeSearchPaths
   METHOD themeName
   METHOD themeSearchPaths
   METHOD toVariant
   METHOD fromVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIcon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QIcon ()
*/
void QIcon_new1 ()
{
  QIcon * o = new QIcon ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QIcon ( const QPixmap & pixmap )
*/
void QIcon_new2 ()
{
  QIcon * o = new QIcon ( *PQPIXMAP(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QIcon ( const QIcon & other )
*/
void QIcon_new3 ()
{
  QIcon * o = new QIcon ( ISOBJECT(1)? *(QIcon *) _qt4xhb_itemGetPtr(1) : QIcon(hb_parc(1)) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QIcon ( const QString & fileName )
*/
void QIcon_new4 ()
{
  QIcon * o = new QIcon ( PQSTRING(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QIcon ( QIconEngine * engine )
*/
void QIcon_new5 ()
{
  QIcon * o = new QIcon ( PQICONENGINE(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QIcon ( QIconEngineV2 * engine )
*/
void QIcon_new6 ()
{
  QIcon * o = new QIcon ( PQICONENGINEV2(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QIcon ()
//[2]QIcon ( const QPixmap & pixmap )
//[3]QIcon ( const QIcon & other )
//[4]QIcon ( const QString & fileName )
//[5]QIcon ( QIconEngine * engine )
//[6]QIcon ( QIconEngineV2 * engine )

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QIcon_new1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QIcon_new2();
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    QIcon_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QIcon_new4();
  }
  else if( ISNUMPAR(1) && ISQICONENGINE(1) )
  {
    QIcon_new5();
  }
  else if( ISNUMPAR(1) && ISQICONENGINEV2(1) )
  {
    QIcon_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QICON_DELETE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QSize actualSize ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_ACTUALSIZE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISQSIZE(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      QSize * ptr = new QSize( obj->actualSize ( *PQSIZE(1), ISNIL(2)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(2), ISNIL(3)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void addFile ( const QString & fileName, const QSize & size = QSize(), Mode mode = Normal, State state = Off )
*/
HB_FUNC_STATIC( QICON_ADDFILE )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,4) && ISCHAR(1) && (ISQSIZE(2)||ISNIL(2)) && ISOPTNUM(3) && ISOPTNUM(4) )
    {
      obj->addFile ( PQSTRING(1), ISNIL(2)? QSize() : *(QSize *) _qt4xhb_itemGetPtr(2), ISNIL(3)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(3), ISNIL(4)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(4) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPixmap ( const QPixmap & pixmap, Mode mode = Normal, State state = Off )
*/
HB_FUNC_STATIC( QICON_ADDPIXMAP )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,3) && ISQPIXMAP(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      obj->addPixmap ( *PQPIXMAP(1), ISNIL(2)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(2), ISNIL(3)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QSize> availableSizes ( Mode mode = Normal, State state = Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,2) && ISOPTNUM(1) && ISOPTNUM(2) )
    {
      QList<QSize> list = obj->availableSizes ( ISNIL(1)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(1), ISNIL(2)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(2) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QICON_CACHEKEY )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->cacheKey () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QICON_ISNULL )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isNull () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString name () const
*/
HB_FUNC_STATIC( QICON_NAME )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->name () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
void QIcon_paint1 ()
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->paint ( PQPAINTER(1), *PQRECT(2), ISNIL(3)? (Qt::Alignment) Qt::AlignCenter : (Qt::Alignment) hb_parni(3), ISNIL(4)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(4), ISNIL(5)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(5) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
*/
void QIcon_paint2 ()
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->paint ( PQPAINTER(1), PINT(2), PINT(3), PINT(4), PINT(5), ISNIL(6)? (Qt::Alignment) Qt::AlignCenter : (Qt::Alignment) hb_parni(6), ISNIL(7)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(7), ISNIL(8)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(8) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void paint ( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const
//[2]void paint ( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2,5) && ISQPAINTER(1) && ISQRECT(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    QIcon_paint1();
  }
  else if( ISBETWEEN(5,8) && ISQPAINTER(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) && (ISNUM(7)||ISNIL(7)) && (ISNUM(8)||ISNIL(8)) )
  {
    QIcon_paint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
*/
void QIcon_pixmap1 ()
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QPixmap * ptr = new QPixmap( obj->pixmap ( *PQSIZE(1), ISNIL(2)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(2), ISNIL(3)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
*/
void QIcon_pixmap2 ()
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QPixmap * ptr = new QPixmap( obj->pixmap ( PINT(1), PINT(2), ISNIL(3)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(3), ISNIL(4)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(4) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const
*/
void QIcon_pixmap3 ()
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QPixmap * ptr = new QPixmap( obj->pixmap ( PINT(1), ISNIL(2)? (QIcon::Mode) QIcon::Normal : (QIcon::Mode) hb_parni(2), ISNIL(3)? (QIcon::State) QIcon::Off : (QIcon::State) hb_parni(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

//[1]QPixmap pixmap ( const QSize & size, Mode mode = Normal, State state = Off ) const
//[2]QPixmap pixmap ( int w, int h, Mode mode = Normal, State state = Off ) const
//[3]QPixmap pixmap ( int extent, Mode mode = Normal, State state = Off ) const

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QIcon_pixmap1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QIcon_pixmap2();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QIcon_pixmap3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QIcon fromTheme ( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC_STATIC( QICON_FROMTHEME )
{
  QIcon * obj = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQICON(2)||ISNIL(2)) )
    {
      QIcon * ptr = new QIcon( obj->fromTheme ( PQSTRING(1), ISNIL(2)? QIcon() : *(QIcon *) _qt4xhb_itemGetPtr(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static bool hasThemeIcon ( const QString & name )
*/
HB_FUNC_STATIC( QICON_HASTHEMEICON )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      RBOOL( QIcon::hasThemeIcon ( PQSTRING(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setThemeName ( const QString & name )
*/
HB_FUNC_STATIC( QICON_SETTHEMENAME )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      QIcon::setThemeName ( PQSTRING(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setThemeSearchPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QICON_SETTHEMESEARCHPATHS )
{
    if( ISNUMPAR(1) && ISARRAY(1) )
  {
      QIcon::setThemeSearchPaths ( PQSTRINGLIST(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString themeName ()
*/
HB_FUNC_STATIC( QICON_THEMENAME )
{
    if( ISNUMPAR(0) )
  {
      RQSTRING( QIcon::themeName () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QStringList themeSearchPaths ()
*/
HB_FUNC_STATIC( QICON_THEMESEARCHPATHS )
{
    if( ISNUMPAR(0) )
  {
      RQSTRINGLIST( QIcon::themeSearchPaths () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant toVariant ()
*/
void QIcon_toVariant1 ()
{
  QIcon * obj = (QIcon *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QIcon>( *obj );
    _qt4xhb_createReturnClass ( variant, "QVARIANT", true );
  }
}

/*
static QVariant toVariant ( const QIcon & )
*/
void QIcon_toVariant2 ()
{
  QIcon * icon = (QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * variant = new QVariant();
  variant->setValue<QIcon>( *icon );
  _qt4xhb_createReturnClass ( variant, "QVARIANT", true );
}

//[1]QVariant toVariant ()
//[2]static QVariant toVariant ( const QIcon & )

HB_FUNC_STATIC( QICON_TOVARIANT )
{
  if( ISNUMPAR(0) )
  {
    QIcon_toVariant1();
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    QIcon_toVariant2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QIcon fromVariant ( const QVariant & )
*/
HB_FUNC_STATIC( QICON_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QIcon * icon = new QIcon( variant->value<QIcon>() );
    _qt4xhb_createReturnClass ( icon, "QICON", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QICON_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QICON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QICON_NEWFROM );
}

HB_FUNC_STATIC( QICON_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QICON_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
