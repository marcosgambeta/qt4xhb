$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bearerName
   METHOD bearerType
   METHOD bearerTypeName
   METHOD children
   METHOD identifier
   METHOD isRoamingAvailable
   METHOD isValid
   METHOD name
   METHOD purpose
   METHOD state
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkConfiguration>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkConfiguration ()
*/
$constructor=|new1|

/*
QNetworkConfiguration ( const QNetworkConfiguration & other )
*/
$constructor=|new2|const QNetworkConfiguration &

//[1]QNetworkConfiguration ()
//[2]QNetworkConfiguration ( const QNetworkConfiguration & other )

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    HB_FUNC_EXEC( QNETWORKCONFIGURATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString bearerName () const (deprecated)
*/
$method=|QString|bearerName|

/*
BearerType bearerType () const
*/
$method=|QNetworkConfiguration::BearerType|bearerType|

/*
QString bearerTypeName () const
*/
$method=|QString|bearerTypeName|

/*
QList<QNetworkConfiguration> children () const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATION_CHILDREN )
{
  QNetworkConfiguration * obj = (QNetworkConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QNetworkConfiguration> list = obj->children ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKCONFIGURATION" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkConfiguration *) new QNetworkConfiguration ( list[i] ) );
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

/*
QString identifier () const
*/
$method=|QString|identifier|

/*
bool isRoamingAvailable () const
*/
$method=|bool|isRoamingAvailable|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString name () const
*/
$method=|QString|name|

/*
Purpose purpose () const
*/
$method=|QNetworkConfiguration::Purpose|purpose|

/*
StateFlags state () const
*/
$method=|QNetworkConfiguration::StateFlags|state|

/*
Type type () const
*/
$method=|QNetworkConfiguration::Type|type|

$extraMethods

#pragma ENDDUMP
