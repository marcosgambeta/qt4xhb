/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTextLength

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD rawValue
   METHOD type
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextLength
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextLength>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC( QTEXTLENGTH_NEW )
{
  if( ISNUMPAR(0) )
  {
    /*
    QTextLength()
    */
    QTextLength * obj = new QTextLength();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QTextLength( QTextLength::Type type, qreal value )
    */
    QTextLength * obj = new QTextLength( ( QTextLength::Type ) hb_parni(1), PQREAL(2) );
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTEXTLENGTH_DELETE )
{
  QTextLength * obj = static_cast<QTextLength*>(Qt4xHb::itemGetPtrStackSelfItem());

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
qreal rawValue() const
*/
HB_FUNC_STATIC( QTEXTLENGTH_RAWVALUE )
{
  QTextLength * obj = static_cast<QTextLength*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->rawValue() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QTextLength::Type type() const
*/
HB_FUNC_STATIC( QTEXTLENGTH_TYPE )
{
  QTextLength * obj = static_cast<QTextLength*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal value( qreal maximumLength ) const
*/
HB_FUNC_STATIC( QTEXTLENGTH_VALUE )
{
  QTextLength * obj = static_cast<QTextLength*>(Qt4xHb::itemGetPtrStackSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQREAL( obj->value( PQREAL(1)) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QTEXTLENGTH_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QTEXTLENGTH_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTLENGTH_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLENGTH_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTLENGTH_NEWFROM );
}

HB_FUNC_STATIC( QTEXTLENGTH_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QTEXTLENGTH_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_self_destruction", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
