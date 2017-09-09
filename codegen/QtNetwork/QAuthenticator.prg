$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVARIANTHASH
#endif

CLASS QAuthenticator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD option
   METHOD options
   METHOD password
   METHOD realm
   METHOD setOption
   METHOD setPassword
   METHOD setUser
   METHOD user
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAuthenticator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAuthenticator ()
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW1 )
{
  QAuthenticator * o = new QAuthenticator ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QAuthenticator ( const QAuthenticator & other )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_NEW2 )
{
  QAuthenticator * o = new QAuthenticator ( *PQAUTHENTICATOR(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QAuthenticator ()
//[2]QAuthenticator ( const QAuthenticator & other )

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    HB_FUNC_EXEC( QAUTHENTICATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_ISNULL )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
QVariant option ( const QString & opt ) const
*/
$method=|QVariant|option|const QString &

/*
QVariantHash options () const
*/
HB_FUNC_STATIC( QAUTHENTICATOR_OPTIONS )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariantHash * ptr = new QVariantHash( obj->options () );
    _qt4xhb_createReturnClass ( ptr, "QVARIANTHASH" );
  }
}

/*
QString password () const
*/
$method=|QString|password|

/*
QString realm () const
*/
$method=|QString|realm|

/*
void setOption ( const QString & opt, const QVariant & value )
*/
HB_FUNC_STATIC( QAUTHENTICATOR_SETOPTION )
{
  QAuthenticator * obj = (QAuthenticator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOption ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPassword ( const QString & password )
*/
$method=|void|setPassword|const QString &

/*
void setUser ( const QString & user )
*/
$method=|void|setUser|const QString &

/*
QString user () const
*/
$method=|QString|user|

$extraMethods

#pragma ENDDUMP
