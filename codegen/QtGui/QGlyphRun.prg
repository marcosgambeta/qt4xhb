%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QRAWFONT
#endif

CLASS QGlyphRun

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD glyphIndexes
   METHOD overline
   METHOD positions
   METHOD rawFont
   METHOD setGlyphIndexes
   METHOD setOverline
   METHOD setPositions
   METHOD setRawFont
   METHOD setStrikeOut
   METHOD setUnderline
   METHOD strikeOut
   METHOD underline

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGlyphRun>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGlyphRun ()
$internalConstructor=|new1|

$prototype=QGlyphRun ( const QGlyphRun & other )
$internalConstructor=|new2|const QGlyphRun &

//[1]QGlyphRun ()
//[2]QGlyphRun ( const QGlyphRun & other )

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGlyphRun_new1();
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    QGlyphRun_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVector<quint32> glyphIndexes () const
HB_FUNC_STATIC( QGLYPHRUN_GLYPHINDEXES )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<quint32> list = obj->glyphIndexes ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=bool overline () const
$method=|bool|overline|

$prototype=QVector<QPointF> positions () const
HB_FUNC_STATIC( QGLYPHRUN_POSITIONS )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPointF> list = obj->positions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPOINTF" );
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
        hb_itemPutPtr( pItem, (QPointF *) new QPointF ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QRawFont rawFont () const
$method=|QRawFont|rawFont|

$prototype=void setGlyphIndexes ( const QVector<quint32> & glyphIndexes )
HB_FUNC_STATIC( QGLYPHRUN_SETGLYPHINDEXES )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<quint32> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetNI(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setGlyphIndexes ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setOverline ( bool overline )
$method=|void|setOverline|bool

$prototype=void setPositions ( const QVector<QPointF> & positions )
HB_FUNC_STATIC( QGLYPHRUN_SETPOSITIONS )
{
  QGlyphRun * obj = (QGlyphRun *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QPointF> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setPositions ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=void setRawFont ( const QRawFont & rawFont )
$method=|void|setRawFont|const QRawFont &

$prototype=void setStrikeOut ( bool strikeOut )
$method=|void|setStrikeOut|bool

$prototype=void setUnderline ( bool underline )
$method=|void|setUnderline|bool

$prototype=bool strikeOut () const
$method=|bool|strikeOut|

$prototype=bool underline () const
$method=|bool|underline|

$extraMethods

#pragma ENDDUMP
