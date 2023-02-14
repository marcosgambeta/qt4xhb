/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QKeyEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD count
   METHOD isAutoRepeat
   METHOD key
   METHOD matches
   METHOD modifiers
   METHOD nativeModifiers
   METHOD nativeScanCode
   METHOD nativeVirtualKey
   METHOD text
   METHOD createExtendedKeyEvent

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QKeyEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QKeyEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

/*
QKeyEvent( QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_NEW )
{
  if( ISBETWEEN(3, 6) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && (HB_ISCHAR(4) || HB_ISNIL(4)) && (HB_ISLOG(5) || HB_ISNIL(5)) && (HB_ISNUM(6) || HB_ISNIL(6)) )
  {
    QKeyEvent * obj = new QKeyEvent( ( QEvent::Type ) hb_parni(1), PINT(2), ( Qt::KeyboardModifiers ) hb_parni(3), OPQSTRING( 4, QString() ), OPBOOL( 5, false ), OPUSHORT( 6, 1 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QKEYEVENT_DELETE )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

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
int count() const
*/
HB_FUNC_STATIC( QKEYEVENT_COUNT )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
bool isAutoRepeat() const
*/
HB_FUNC_STATIC( QKEYEVENT_ISAUTOREPEAT )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isAutoRepeat() );
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
int key() const
*/
HB_FUNC_STATIC( QKEYEVENT_KEY )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->key() );
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
bool matches( QKeySequence::StandardKey key ) const
*/
HB_FUNC_STATIC( QKEYEVENT_MATCHES )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->matches( ( QKeySequence::StandardKey ) hb_parni(1)) );
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
Qt::KeyboardModifiers modifiers() const
*/
HB_FUNC_STATIC( QKEYEVENT_MODIFIERS )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->modifiers() );
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
quint32 nativeModifiers() const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEMODIFIERS )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->nativeModifiers() );
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
quint32 nativeScanCode() const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVESCANCODE )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->nativeScanCode() );
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
quint32 nativeVirtualKey() const
*/
HB_FUNC_STATIC( QKEYEVENT_NATIVEVIRTUALKEY )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->nativeVirtualKey() );
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
QString text() const
*/
HB_FUNC_STATIC( QKEYEVENT_TEXT )
{
  QKeyEvent * obj = static_cast<QKeyEvent*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->text() );
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
static QKeyEvent * createExtendedKeyEvent( QEvent::Type type, int key, Qt::KeyboardModifiers modifiers, quint32 nativeScanCode, quint32 nativeVirtualKey, quint32 nativeModifiers, const QString & text = QString(), bool autorep = false, ushort count = 1 )
*/
HB_FUNC_STATIC( QKEYEVENT_CREATEEXTENDEDKEYEVENT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(6, 9) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5) && HB_ISNUM(6) && (HB_ISCHAR(7) || HB_ISNIL(7)) && (HB_ISLOG(8) || HB_ISNIL(8)) && (HB_ISNUM(9) || HB_ISNIL(9)) )
  {
#endif
    QKeyEvent * ptr = QKeyEvent::createExtendedKeyEvent( ( QEvent::Type ) hb_parni(1), PINT(2), ( Qt::KeyboardModifiers ) hb_parni(3), PQUINT32(4), PQUINT32(5), PQUINT32(6), OPQSTRING( 7, QString() ), OPBOOL( 8, false ), OPUSHORT( 9, 1 ) );
    Qt4xHb::createReturnClass(ptr, "QKEYEVENT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

#pragma ENDDUMP
