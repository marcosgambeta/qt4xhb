/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONTENGINE
#endif

CLASS QPlatformFontDatabase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addApplicationFont
   METHOD fontDir
   METHOD fontEngine
   METHOD populateFontDatabase
   METHOD releaseHandle
   METHOD registerFont
   METHOD registerQPF2Font

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPlatformFontDatabase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPlatformFontDatabase>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_DELETE )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

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
virtual QStringList addApplicationFont( const QByteArray & fontData, const QString & fileName )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_ADDAPPLICATIONFONT )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && HB_ISCHAR(2) )
    {
#endif
      RQSTRINGLIST( obj->addApplicationFont( *PQBYTEARRAY(1), PQSTRING(2)) );
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
virtual QString fontDir() const
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_FONTDIR )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fontDir() );
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
virtual QFontEngine * fontEngine( const QByteArray & fontData, qreal pixelSize, QFont::HintingPreference hintingPreference )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_FONTENGINE )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQBYTEARRAY(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      QFontEngine * ptr = obj->fontEngine( *PQBYTEARRAY(1), PQREAL(2), ( QFont::HintingPreference ) hb_parni(3) );
      Qt4xHb::createReturnClass(ptr, "QFONTENGINE", false);
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
virtual void populateFontDatabase()
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_POPULATEFONTDATABASE )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->populateFontDatabase();
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
virtual void releaseHandle( void * handle )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_RELEASEHANDLE )
{
  QPlatformFontDatabase * obj = static_cast<QPlatformFontDatabase*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISPOINTER(1) )
    {
#endif
      obj->releaseHandle( static_cast<void*>( hb_parptr(1)) );
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
static void registerFont( const QString & familyName, const QString & foundryName, QFont::Weight weight, QFont::Style style, QFont::Stretch stretch, bool antialiased, bool scalable, int pixelSize, const QSupportedWritingSystems & writingSystems, void * usrPtr )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_REGISTERFONT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(10) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISLOG(6) && HB_ISLOG(7) && HB_ISNUM(8) && ISQSUPPORTEDWRITINGSYSTEMS(9) && HB_ISPOINTER(10) )
  {
#endif
    QPlatformFontDatabase::registerFont( PQSTRING(1), PQSTRING(2), ( QFont::Weight ) hb_parni(3), ( QFont::Style ) hb_parni(4), ( QFont::Stretch ) hb_parni(5), PBOOL(6), PBOOL(7), PINT(8), *PQSUPPORTEDWRITINGSYSTEMS(9), static_cast<void*>( hb_parptr(10)) );
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
static void registerQPF2Font( const QByteArray & dataArray, void * handle )
*/
HB_FUNC_STATIC( QPLATFORMFONTDATABASE_REGISTERQPF2FONT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISQBYTEARRAY(1) && HB_ISPOINTER(2) )
  {
#endif
    QPlatformFontDatabase::registerQPF2Font( *PQBYTEARRAY(1), static_cast<void*>( hb_parptr(2)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROM )
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

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPLATFORMFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPLATFORMFONTDATABASE_NEWFROM );
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QPLATFORMFONTDATABASE_SETSELFDESTRUCTION )
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
