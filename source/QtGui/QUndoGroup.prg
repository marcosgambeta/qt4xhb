/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QUNDOSTACK
#endif

CLASS QUndoGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeStack
   METHOD addStack
   METHOD canRedo
   METHOD canUndo
   METHOD createRedoAction
   METHOD createUndoAction
   METHOD isClean
   METHOD redoText
   METHOD removeStack
   METHOD stacks
   METHOD undoText
   METHOD redo
   METHOD setActiveStack
   METHOD undo

   METHOD onActiveStackChanged
   METHOD onCanRedoChanged
   METHOD onCanUndoChanged
   METHOD onCleanChanged
   METHOD onIndexChanged
   METHOD onRedoTextChanged
   METHOD onUndoTextChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUndoGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QUndoGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QUndoStack>
#include <QtGui/QAction>

/*
QUndoGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUNDOGROUP_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QUndoGroup * o = new QUndoGroup( OPQOBJECT(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUNDOGROUP_DELETE )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
QUndoStack * activeStack () const
*/
HB_FUNC_STATIC( QUNDOGROUP_ACTIVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QUndoStack * ptr = obj->activeStack();
      _qt4xhb_createReturnQObjectClass( ptr, "QUNDOSTACK" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void addStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOGROUP_ADDSTACK )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOSTACK(1) )
    {
#endif
      obj->addStack( PQUNDOSTACK(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool canRedo () const
*/
HB_FUNC_STATIC( QUNDOGROUP_CANREDO )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canRedo() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool canUndo () const
*/
HB_FUNC_STATIC( QUNDOGROUP_CANUNDO )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canUndo() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAction * createRedoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOGROUP_CREATEREDOACTION )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQOBJECT(1) && ISOPTCHAR(2) )
    {
#endif
      QAction * ptr = obj->createRedoAction( PQOBJECT(1), OPQSTRING(2,QString()) );
      _qt4xhb_createReturnQObjectClass( ptr, "QACTION" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAction * createUndoAction ( QObject * parent, const QString & prefix = QString() ) const
*/
HB_FUNC_STATIC( QUNDOGROUP_CREATEUNDOACTION )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQOBJECT(1) && ISOPTCHAR(2) )
    {
#endif
      QAction * ptr = obj->createUndoAction( PQOBJECT(1), OPQSTRING(2,QString()) );
      _qt4xhb_createReturnQObjectClass( ptr, "QACTION" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isClean () const
*/
HB_FUNC_STATIC( QUNDOGROUP_ISCLEAN )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isClean() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString redoText () const
*/
HB_FUNC_STATIC( QUNDOGROUP_REDOTEXT )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->redoText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOGROUP_REMOVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOSTACK(1) )
    {
#endif
      obj->removeStack( PQUNDOSTACK(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QUndoStack *> stacks () const
*/
HB_FUNC_STATIC( QUNDOGROUP_STACKS )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QUndoStack *> list = obj->stacks();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QUNDOSTACK" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QUndoStack *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QUNDOSTACK", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString undoText () const
*/
HB_FUNC_STATIC( QUNDOGROUP_UNDOTEXT )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->undoText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void redo ()
*/
HB_FUNC_STATIC( QUNDOGROUP_REDO )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->redo();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setActiveStack ( QUndoStack * stack )
*/
HB_FUNC_STATIC( QUNDOGROUP_SETACTIVESTACK )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQUNDOSTACK(1) )
    {
#endif
      obj->setActiveStack( PQUNDOSTACK(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void undo ()
*/
HB_FUNC_STATIC( QUNDOGROUP_UNDO )
{
  QUndoGroup * obj = (QUndoGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->undo();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QUndoGroupSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QUNDOGROUP_ONACTIVESTACKCHANGED )
{
  QUndoGroupSlots_connect_signal( "activeStackChanged(QUndoStack*)", "activeStackChanged(QUndoStack*)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONCANREDOCHANGED )
{
  QUndoGroupSlots_connect_signal( "canRedoChanged(bool)", "canRedoChanged(bool)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONCANUNDOCHANGED )
{
  QUndoGroupSlots_connect_signal( "canUndoChanged(bool)", "canUndoChanged(bool)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONCLEANCHANGED )
{
  QUndoGroupSlots_connect_signal( "cleanChanged(bool)", "cleanChanged(bool)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONINDEXCHANGED )
{
  QUndoGroupSlots_connect_signal( "indexChanged(int)", "indexChanged(int)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONREDOTEXTCHANGED )
{
  QUndoGroupSlots_connect_signal( "redoTextChanged(QString)", "redoTextChanged(QString)" );
}

HB_FUNC_STATIC( QUNDOGROUP_ONUNDOTEXTCHANGED )
{
  QUndoGroupSlots_connect_signal( "undoTextChanged(QString)", "undoTextChanged(QString)" );
}

#pragma ENDDUMP
