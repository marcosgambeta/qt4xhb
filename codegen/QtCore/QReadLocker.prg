/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QREADWRITELOCK
#endif

CLASS QReadLocker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD readWriteLock
   METHOD relock
   METHOD unlock
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QReadLocker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QReadLocker>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QReadLocker ( QReadWriteLock * lock )
*/
HB_FUNC_STATIC( QREADLOCKER_NEW )
{
  QReadLocker * o = new QReadLocker ( PQREADWRITELOCK(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QREADLOCKER_DELETE )
{
  QReadLocker * obj = (QReadLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QReadWriteLock * readWriteLock () const
*/
HB_FUNC_STATIC( QREADLOCKER_READWRITELOCK )
{
  QReadLocker * obj = (QReadLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QReadWriteLock * ptr = obj->readWriteLock ();
    _qt4xhb_createReturnClass ( ptr, "QREADWRITELOCK" );
  }
}


/*
void relock ()
*/
HB_FUNC_STATIC( QREADLOCKER_RELOCK )
{
  QReadLocker * obj = (QReadLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->relock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void unlock ()
*/
HB_FUNC_STATIC( QREADLOCKER_UNLOCK )
{
  QReadLocker * obj = (QReadLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unlock ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QREADLOCKER_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QREADLOCKER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREADLOCKER_NEWFROM );
}

HB_FUNC_STATIC( QREADLOCKER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREADLOCKER_NEWFROM );
}

HB_FUNC_STATIC( QREADLOCKER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREADLOCKER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP