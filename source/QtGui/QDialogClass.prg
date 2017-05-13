/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QDialog INHERIT QWidget

   DATA class_id INIT Class_Id_QDialog
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isSizeGripEnabled
   METHOD result
   METHOD setModal
   METHOD setResult
   METHOD setSizeGripEnabled
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD accept
   METHOD done
   METHOD exec
   METHOD open
   METHOD reject
   METHOD onAccepted
   METHOD onFinished
   METHOD onRejected
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDialog ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QDIALOG_NEW )
{
  QDialog * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  o = new QDialog ( par1,  (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QDIALOG_DELETE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QDIALOG_ISSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSizeGripEnabled () );
  }
}


/*
int result () const
*/
HB_FUNC_STATIC( QDIALOG_RESULT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->result () );
  }
}


/*
void setModal ( bool modal )
*/
HB_FUNC_STATIC( QDIALOG_SETMODAL )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setModal ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResult ( int i )
*/
HB_FUNC_STATIC( QDIALOG_SETRESULT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResult ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QDIALOG_SETSIZEGRIPENABLED )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSizeGripEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_MINIMUMSIZEHINT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QDIALOG_SETVISIBLE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QDIALOG_SIZEHINT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void accept ()
*/
HB_FUNC_STATIC( QDIALOG_ACCEPT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void done ( int r )
*/
HB_FUNC_STATIC( QDIALOG_DONE )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->done ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int exec ()
*/
HB_FUNC_STATIC( QDIALOG_EXEC )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->exec () );
  }
}


/*
void open ()
*/
HB_FUNC_STATIC( QDIALOG_OPEN )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->open ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reject ()
*/
HB_FUNC_STATIC( QDIALOG_REJECT )
{
  QDialog * obj = (QDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reject ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
