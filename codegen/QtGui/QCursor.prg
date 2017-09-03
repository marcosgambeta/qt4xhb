$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QPOINT
REQUEST QPIXMAP
#endif

CLASS QCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bitmap
   METHOD hotSpot
   METHOD mask
   METHOD pixmap
   METHOD setShape
   METHOD shape
   METHOD pos
   METHOD setPos1
   METHOD setPos2
   METHOD setPos

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCursor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QCursor>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPixmap>

/*
QCursor ()
*/
HB_FUNC_STATIC( QCURSOR_NEW1 )
{
  QCursor * o = new QCursor ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( Qt::CursorShape shape )
*/
HB_FUNC_STATIC( QCURSOR_NEW2 )
{
  QCursor * o = new QCursor ( (Qt::CursorShape) hb_parni(1));
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
*/
HB_FUNC_STATIC( QCURSOR_NEW3 )
{
  QCursor * o = new QCursor ( *PQBITMAP(1), *PQBITMAP(2), OPINT(3,-1), OPINT(4,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
*/
HB_FUNC_STATIC( QCURSOR_NEW4 )
{
  QCursor * o = new QCursor ( *PQPIXMAP(1), OPINT(2,-1), OPINT(3,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QCursor & c )
*/
HB_FUNC_STATIC( QCURSOR_NEW5 )
{
  QCursor * o = new QCursor ( *PQCURSOR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QCursor ()
//[2]QCursor ( Qt::CursorShape shape )
//[3]QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
//[4]QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
//[5]QCursor ( const QCursor & c )
//[6]QCursor ( HCURSOR cursor )
//[7]QCursor ( Qt::HANDLE handle )

HB_FUNC_STATIC( QCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISQBITMAP(1) && ISQBITMAP(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW3 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCURSOR_DELETE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
const QBitmap * bitmap () const
*/
HB_FUNC_STATIC( QCURSOR_BITMAP )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBitmap * ptr = obj->bitmap ();
    _qt4xhb_createReturnClass ( ptr, "QBITMAP" );
  }
}

/*
QPoint hotSpot () const
*/
HB_FUNC_STATIC( QCURSOR_HOTSPOT )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
const QBitmap * mask () const
*/
HB_FUNC_STATIC( QCURSOR_MASK )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QBitmap * ptr = obj->mask ();
    _qt4xhb_createReturnClass ( ptr, "QBITMAP" );
  }
}

/*
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QCURSOR_PIXMAP )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setShape ( Qt::CursorShape shape )
*/
HB_FUNC_STATIC( QCURSOR_SETSHAPE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setShape ( (Qt::CursorShape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CursorShape shape () const
*/
HB_FUNC_STATIC( QCURSOR_SHAPE )
{
  QCursor * obj = (QCursor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->shape () );
  }
}

/*
QPoint pos ()
*/
HB_FUNC_STATIC( QCURSOR_POS )
{
  QPoint * ptr = new QPoint( QCursor::pos () );
  _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
}

/*
void setPos ( int x, int y )
*/
HB_FUNC_STATIC( QCURSOR_SETPOS1 )
{
  QCursor::setPos ( PINT(1), PINT(2) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPos ( const QPoint & p )
*/
HB_FUNC_STATIC( QCURSOR_SETPOS2 )
{
  QCursor::setPos ( *PQPOINT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setPos ( int x, int y )
//[2]void setPos ( const QPoint & p )

HB_FUNC_STATIC( QCURSOR_SETPOS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS2 );
  }
}

HB_FUNC_STATIC( QCURSOR_NEWFROM )
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

HB_FUNC_STATIC( QCURSOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QCURSOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCURSOR_NEWFROM );
}

HB_FUNC_STATIC( QCURSOR_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCURSOR_SETSELFDESTRUCTION )
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
