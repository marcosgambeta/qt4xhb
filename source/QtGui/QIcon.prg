/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QSIZE
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

PROCEDURE destroyObject() CLASS QIcon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QIcon>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QVariant>

HB_FUNC_STATIC( QICON_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QIcon()
    */
    QIcon * obj = new QIcon();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    /*
    QIcon( const QPixmap & pixmap )
    */
    QIcon * obj = new QIcon( *PQPIXMAP(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQICON(1) )
  {
    /*
    QIcon( const QIcon & other )
    */
    QIcon * obj = new QIcon( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1)) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QIcon( const QString & fileName )
    */
    QIcon * obj = new QIcon( PQSTRING(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQICONENGINE(1) )
  {
    /*
    QIcon( QIconEngine * engine )
    */
    QIcon * obj = new QIcon( PQICONENGINE(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQICONENGINEV2(1) )
  {
    /*
    QIcon( QIconEngineV2 * engine )
    */
    QIcon * obj = new QIcon( PQICONENGINEV2(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_DELETE )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize actualSize( const QSize & size, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
*/
HB_FUNC_STATIC( QICON_ACTUALSIZE )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && ISQSIZE(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) )
    {
#endif
      QSize * ptr = new QSize( obj->actualSize( *PQSIZE(1), HB_ISNIL(2) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(2), HB_ISNIL(3) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(3)) );
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
void addFile( const QString & fileName, const QSize & size = QSize(), QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
*/
HB_FUNC_STATIC( QICON_ADDFILE )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 4) && HB_ISCHAR(1) && (ISQSIZE(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)) )
    {
#endif
      obj->addFile( PQSTRING(1), HB_ISNIL(2) ? QSize() : *static_cast<QSize*>( Qt4xHb::itemGetPtr(2) ), HB_ISNIL(3) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(3), HB_ISNIL(4) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(4) );
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
void addPixmap( const QPixmap & pixmap, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
*/
HB_FUNC_STATIC( QICON_ADDPIXMAP )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 3) && ISQPIXMAP(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) )
    {
#endif
      obj->addPixmap( *PQPIXMAP(1), HB_ISNIL(2) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(2), HB_ISNIL(3) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(3) );
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
QList<QSize> availableSizes( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
*/
HB_FUNC_STATIC( QICON_AVAILABLESIZES )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)) )
    {
#endif
      QList<QSize> list = obj->availableSizes( HB_ISNIL(1) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(1), HB_ISNIL(2) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(2) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QSIZE");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        const int count = list.count();
        for( int i = 0; i < count; i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QSize(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
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
HB_FUNC_STATIC( QICON_CACHEKEY )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

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

/*
bool isNull() const
*/
HB_FUNC_STATIC( QICON_ISNULL )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
QString name() const
*/
HB_FUNC_STATIC( QICON_NAME )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QICON_PAINT )
{
  if( ISBETWEEN(2, 5) && ISQPAINTER(1) && ISQRECT(2) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)) )
  {
    /*
    void paint( QPainter * painter, const QRect & rect, Qt::Alignment alignment = Qt::AlignCenter, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->paint( PQPAINTER(1), *PQRECT(2), HB_ISNIL(3) ? ( Qt::Alignment ) Qt::AlignCenter : ( Qt::Alignment ) hb_parni(3), HB_ISNIL(4) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(4), HB_ISNIL(5) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(5) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISBETWEEN(5, 8) && ISQPAINTER(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && (HB_ISNUM(6) || HB_ISNIL(6)) && (HB_ISNUM(7) || HB_ISNIL(7)) && (HB_ISNUM(8) || HB_ISNIL(8)) )
  {
    /*
    void paint( QPainter * painter, int x, int y, int w, int h, Qt::Alignment alignment = Qt::AlignCenter, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      obj->paint( PQPAINTER(1), PINT(2), PINT(3), PINT(4), PINT(5), HB_ISNIL(6) ? ( Qt::Alignment ) Qt::AlignCenter : ( Qt::Alignment ) hb_parni(6), HB_ISNIL(7) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(7), HB_ISNIL(8) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(8) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_PIXMAP )
{
  if( ISBETWEEN(1, 3) && ISQSIZE(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) )
  {
    /*
    QPixmap pixmap( const QSize & size, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap( *PQSIZE(1), HB_ISNIL(2) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(2), HB_ISNIL(3) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(3)) );
      Qt4xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else if( ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISNUM(2) && (HB_ISNUM(3) || HB_ISNIL(3)) && (HB_ISNUM(4) || HB_ISNIL(4)) )
  {
    /*
    QPixmap pixmap( int w, int h, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap( PINT(1), PINT(2), HB_ISNIL(3) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(3), HB_ISNIL(4) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(4)) );
      Qt4xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else if( ISBETWEEN(1, 3) && HB_ISNUM(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)) )
  {
    /*
    QPixmap pixmap( int extent, QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off ) const
    */
    QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      QPixmap * ptr = new QPixmap( obj->pixmap( PINT(1), HB_ISNIL(2) ? ( QIcon::Mode ) QIcon::Normal : ( QIcon::Mode ) hb_parni(2), HB_ISNIL(3) ? ( QIcon::State ) QIcon::Off : ( QIcon::State ) hb_parni(3)) );
      Qt4xHb::createReturnClass(ptr, "QPIXMAP", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QIcon fromTheme( const QString & name, const QIcon & fallback = QIcon() )
*/
HB_FUNC_STATIC( QICON_FROMTHEME )
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQICON(2) || HB_ISNIL(2)) )
    {
#endif
      QIcon * ptr = new QIcon( obj->fromTheme( PQSTRING(1), HB_ISNIL(2) ? QIcon() : *static_cast<QIcon*>( Qt4xHb::itemGetPtr(2)) ) );
      Qt4xHb::createReturnClass(ptr, "QICON", true);
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
static bool hasThemeIcon( const QString & name )
*/
HB_FUNC_STATIC( QICON_HASTHEMEICON )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    RBOOL( QIcon::hasThemeIcon( PQSTRING(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setThemeName( const QString & name )
*/
HB_FUNC_STATIC( QICON_SETTHEMENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QIcon::setThemeName( PQSTRING(1) );
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
static void setThemeSearchPaths( const QStringList & paths )
*/
HB_FUNC_STATIC( QICON_SETTHEMESEARCHPATHS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
#endif
    QIcon::setThemeSearchPaths( PQSTRINGLIST(1) );
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
static QString themeName()
*/
HB_FUNC_STATIC( QICON_THEMENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QIcon::themeName() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QStringList themeSearchPaths()
*/
HB_FUNC_STATIC( QICON_THEMESEARCHPATHS )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRINGLIST( QIcon::themeSearchPaths() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
QVariant toVariant()
*/
void QIcon_toVariant1()
{
  QIcon * obj = static_cast<QIcon*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    QVariant * variant = new QVariant();
    variant->setValue<QIcon>( *obj );
    Qt4xHb::createReturnClass( variant, "QVARIANT", true);
  }
}

/*
static QVariant toVariant( const QIcon & )
*/
void QIcon_toVariant2()
{
  QIcon * icon = static_cast<QIcon*>( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 )) );
  QVariant * variant = new QVariant();
  variant->setValue<QIcon>( *icon );
  Qt4xHb::createReturnClass( variant, "QVARIANT", true);
}

//[1]QVariant toVariant()
//[2]static QVariant toVariant( const QIcon & )

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
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QIcon fromVariant( const QVariant & )
*/
HB_FUNC_STATIC( QICON_FROMVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QVariant * variant = static_cast<QVariant*>( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 )) );
    QIcon * icon = new QIcon( variant->value<QIcon>() );
    Qt4xHb::createReturnClass( icon, "QICON", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QICON_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
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
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QICON_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
