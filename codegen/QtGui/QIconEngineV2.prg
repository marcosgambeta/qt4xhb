%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QICONENGINEV2
#endif

CLASS QIconEngineV2 INHERIT QIconEngine

   METHOD delete
   METHOD availableSizes
   METHOD clone
   METHOD iconName
   METHOD key
   METHOD read
   METHOD virtual_hook
   METHOD write

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QIconEngineV2>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=QList<QSize> availableSizes ( QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off )
HB_FUNC_STATIC( QICONENGINEV2_AVAILABLESIZES )
{
  QIconEngineV2 * obj = (QIconEngineV2 *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QIcon::Normal : hb_parni(1);
    int par2 = ISNIL(2)? (int) QIcon::Off : hb_parni(2);
    QList<QSize> list = obj->availableSizes ( (QIcon::Mode) par1, (QIcon::State) par2 );
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
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=virtual QIconEngineV2 * clone () const
$virtualMethod=|QIconEngineV2 *|clone|

$prototype=QString iconName ()
$method=|QString|iconName|

$prototype=virtual QString key () const
$virtualMethod=|QString|key|

$prototype=virtual bool read ( QDataStream & in )
$virtualMethod=|bool|read|QDataStream &

$prototype=virtual void virtual_hook ( int id, void * data )
$virtualMethod=|void|virtual_hook|int,void *

$prototype=virtual bool write ( QDataStream & out ) const
$virtualMethod=|bool|write|QDataStream &

#pragma ENDDUMP
