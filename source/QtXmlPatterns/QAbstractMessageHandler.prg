/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractMessageHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXmlPatterns/QAbstractMessageHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_DELETE )
{
  QAbstractMessageHandler * obj = static_cast< QAbstractMessageHandler * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
void message( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
*/
HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_MESSAGE )
{
  QAbstractMessageHandler * obj = static_cast< QAbstractMessageHandler * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 4 ) && HB_ISNUM( 1 ) && HB_ISCHAR( 2 ) && ( ISQURL( 3 ) || HB_ISNIL( 3 ) ) && ( ISQSOURCELOCATION( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->message( ( QtMsgType ) hb_parni( 1 ), PQSTRING( 2 ), HB_ISNIL( 3 ) ? QUrl() : *static_cast< QUrl * >( Qt4xHb::itemGetPtr( 3 ) ), HB_ISNIL( 4 ) ? QSourceLocation() : *static_cast< QSourceLocation * >( Qt4xHb::itemGetPtr( 4 ) ) );
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
