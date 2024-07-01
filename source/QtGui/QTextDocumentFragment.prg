/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toHtml
   METHOD toPlainText
   METHOD fromHtml
   METHOD fromPlainText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTextDocumentFragment>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTextDocumentFragment()
    */
    QTextDocumentFragment * obj = new QTextDocumentFragment();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    /*
    QTextDocumentFragment( const QTextDocument * document )
    */
    QTextDocumentFragment * obj = new QTextDocumentFragment( PQTEXTDOCUMENT(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    /*
    QTextDocumentFragment( const QTextCursor & cursor )
    */
    QTextDocumentFragment * obj = new QTextDocumentFragment( *PQTEXTCURSOR(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    /*
    QTextDocumentFragment( const QTextDocumentFragment & other )
    */
    QTextDocumentFragment * obj = new QTextDocumentFragment( *PQTEXTDOCUMENTFRAGMENT(1) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
  QTextDocumentFragment * obj = static_cast<QTextDocumentFragment*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = static_cast<QTextDocumentFragment*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    /*
    QString toHtml( const QByteArray & encoding ) const
    */
    QTextDocumentFragment * obj = static_cast<QTextDocumentFragment*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->toHtml( *PQBYTEARRAY(1)) );
    }
  }
  else if( ISNUMPAR(0) )
  {
    /*
    QString toHtml() const
    */
    QTextDocumentFragment * obj = static_cast<QTextDocumentFragment*>(Qt4xHb::itemGetPtrStackSelfItem());

    if( obj != NULL )
    {
      RQSTRING( obj->toHtml() );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = static_cast<QTextDocumentFragment*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toPlainText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    static QTextDocumentFragment fromHtml( const QString & text )
    */

    QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1)) );
    Qt4xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    /*
    static QTextDocumentFragment fromHtml( const QString & text, const QTextDocument * resourceProvider )
    */

    QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1), PQTEXTDOCUMENT(2)) );
    Qt4xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
static QTextDocumentFragment fromPlainText( const QString & plainText )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
#endif
    QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText( PQSTRING(1)) );
    Qt4xHb::createReturnClass(ptr, "QTEXTDOCUMENTFRAGMENT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
