$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMimeSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD encodedData
   METHOD format
   METHOD provides

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMimeSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMimeSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QMIMESOURCE_DELETE )
{
  QMimeSource * obj = (QMimeSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QByteArray encodedData ( const char * format ) const = 0
*/
HB_FUNC_STATIC( QMIMESOURCE_ENCODEDDATA )
{
  QMimeSource * obj = (QMimeSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedData ( (const char *) hb_parc(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
virtual const char * format ( int i = 0 ) const = 0
*/
HB_FUNC_STATIC( QMIMESOURCE_FORMAT )
{
  QMimeSource * obj = (QMimeSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->format ( OPINT(1,0) );
    hb_retc( str1 );
  }
}

/*
virtual bool provides ( const char * mimeType ) const
*/
HB_FUNC_STATIC( QMIMESOURCE_PROVIDES )
{
  QMimeSource * obj = (QMimeSource *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->provides ( (const char *) hb_parc(1) ) );
  }
}

HB_FUNC_STATIC( QMIMESOURCE_NEWFROM )
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

HB_FUNC_STATIC( QMIMESOURCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QMIMESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMIMESOURCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QMIMESOURCE_NEWFROM );
}

HB_FUNC_STATIC( QMIMESOURCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QMIMESOURCE_SETSELFDESTRUCTION )
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
