/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
#endif

CLASS QGraphicsBlurEffect INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD blurHints
   METHOD blurRadius
   METHOD boundingRectFor
   METHOD setBlurHints
   METHOD setBlurRadius

   METHOD onBlurHintsChanged
   METHOD onBlurRadiusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsBlurEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QGraphicsBlurEffect( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || ISNIL( 1 ) ) )
  {
    QGraphicsBlurEffect * obj = new QGraphicsBlurEffect( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_DELETE )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
QGraphicsBlurEffect::BlurHints blurHints() const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURHINTS )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->blurHints() );
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
qreal blurRadius() const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BLURRADIUS )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->blurRadius() );
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
virtual QRectF boundingRectFor( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_BOUNDINGRECTFOR )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRectFor( *PQRECTF( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
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
void setBlurHints( QGraphicsBlurEffect::BlurHints hints )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURHINTS )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setBlurHints( ( QGraphicsBlurEffect::BlurHints ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBlurRadius( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_SETBLURRADIUS )
{
  QGraphicsBlurEffect * obj = ( QGraphicsBlurEffect * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setBlurRadius( PQREAL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QGraphicsBlurEffectSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_ONBLURHINTSCHANGED )
{
  QGraphicsBlurEffectSlots_connect_signal( "blurHintsChanged(QGraphicsBlurEffect::BlurHints)", "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" );
}

HB_FUNC_STATIC( QGRAPHICSBLUREFFECT_ONBLURRADIUSCHANGED )
{
  QGraphicsBlurEffectSlots_connect_signal( "blurRadiusChanged(qreal)", "blurRadiusChanged(qreal)" );
}

#pragma ENDDUMP
