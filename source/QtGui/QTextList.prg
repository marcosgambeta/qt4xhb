/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTLISTFORMAT
#endif

CLASS QTextList INHERIT QTextBlockGroup

   METHOD delete
   METHOD add
   METHOD count
   METHOD format
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD remove
   METHOD removeItem
   METHOD setFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QTEXTLIST_DELETE )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

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
void add( const QTextBlock & block )
*/
HB_FUNC_STATIC( QTEXTLIST_ADD )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTBLOCK( 1 ) )
    {
#endif
      obj->add( *PQTEXTBLOCK( 1 ) );
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
int count() const
*/
HB_FUNC_STATIC( QTEXTLIST_COUNT )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->count() );
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
QTextListFormat format() const
*/
HB_FUNC_STATIC( QTEXTLIST_FORMAT )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QTextListFormat * ptr = new QTextListFormat( obj->format() );
      Qt4xHb::createReturnClass( ptr, "QTEXTLISTFORMAT", true );
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
QTextBlock item( int i ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEM )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      QTextBlock * ptr = new QTextBlock( obj->item( PINT( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QTEXTBLOCK", true );
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
int itemNumber( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMNUMBER )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTBLOCK( 1 ) )
    {
#endif
      RINT( obj->itemNumber( *PQTEXTBLOCK( 1 ) ) );
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
QString itemText( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMTEXT )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTBLOCK( 1 ) )
    {
#endif
      RQSTRING( obj->itemText( *PQTEXTBLOCK( 1 ) ) );
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
void remove( const QTextBlock & block )
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVE )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTBLOCK( 1 ) )
    {
#endif
      obj->remove( *PQTEXTBLOCK( 1 ) );
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
void removeItem( int i )
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVEITEM )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->removeItem( PINT( 1 ) );
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
void setFormat( const QTextListFormat & format )
*/
HB_FUNC_STATIC( QTEXTLIST_SETFORMAT )
{
  QTextList * obj = ( QTextList * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQTEXTLISTFORMAT( 1 ) )
    {
#endif
      obj->setFormat( *PQTEXTLISTFORMAT( 1 ) );
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

#pragma ENDDUMP
