/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

CLASS QTextTableFormat INHERIT QTextFrameFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD cellPadding
   METHOD cellSpacing
   METHOD clearColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD columns
   METHOD headerRowCount
   METHOD isValid
   METHOD setAlignment
   METHOD setCellPadding
   METHOD setCellSpacing
   METHOD setColumnWidthConstraints
   METHOD setHeaderRowCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTableFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextTableFormat>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextTableFormat ()
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_NEW )
{
  QTextTableFormat * o = new QTextTableFormat ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTEXTTABLEFORMAT_DELETE )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_ALIGNMENT )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
qreal cellPadding () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CELLPADDING )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->cellPadding () );
  }
}

/*
qreal cellSpacing () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CELLSPACING )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->cellSpacing () );
  }
}

/*
void clearColumnWidthConstraints ()
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CLEARCOLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearColumnWidthConstraints ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVector<QTextLength> columnWidthConstraints () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_COLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QTextLength> list = obj->columnWidthConstraints ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTLENGTH" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
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
        hb_itemPutPtr( pItem, (QTextLength *) new QTextLength ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
int columns () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_COLUMNS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columns () );
  }
}

/*
int headerRowCount () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_HEADERROWCOUNT )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->headerRowCount () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_ISVALID )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
void setAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETALIGNMENT )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCellPadding ( qreal padding )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCELLPADDING )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCellPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCellSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCELLSPACING )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCellSpacing ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnWidthConstraints ( const QVector<QTextLength> & constraints )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCOLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QVector<QTextLength> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setColumnWidthConstraints ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeaderRowCount ( int count )
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETHEADERROWCOUNT )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeaderRowCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP