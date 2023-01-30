/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD actions
   METHOD addAction
   METHOD checkedAction
   METHOD isEnabled
   METHOD isExclusive
   METHOD isVisible
   METHOD removeAction
   METHOD setDisabled
   METHOD setEnabled
   METHOD setExclusive
   METHOD setVisible

   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QActionGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QActionGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QActionGroup( QObject * parent )
*/
HB_FUNC_STATIC( QACTIONGROUP_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QActionGroup * obj = new QActionGroup( PQOBJECT(1) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QACTIONGROUP_DELETE )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QList<QAction *> actions() const
*/
HB_FUNC_STATIC( QACTIONGROUP_ACTIONS )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAction *> list = obj->actions();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QACTION" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast<QAction*>( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QACTION", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    QAction * addAction( QAction * action )
    */
    QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQACTION(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else if( ISNUMPAR(2) && ( ISQICON(1) || HB_ISCHAR(1) ) && HB_ISCHAR(2) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text )
    */
    QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAction * checkedAction() const
*/
HB_FUNC_STATIC( QACTIONGROUP_CHECKEDACTION )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->checkedAction();
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
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
bool isEnabled() const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISENABLED )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEnabled() );
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
bool isExclusive() const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISEXCLUSIVE )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isExclusive() );
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
bool isVisible() const
*/
HB_FUNC_STATIC( QACTIONGROUP_ISVISIBLE )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVisible() );
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
void removeAction( QAction * action )
*/
HB_FUNC_STATIC( QACTIONGROUP_REMOVEACTION )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->removeAction( PQACTION(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setDisabled( bool b )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETDISABLED )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDisabled( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setEnabled( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETENABLED )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setEnabled( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setExclusive( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETEXCLUSIVE )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setExclusive( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setVisible( bool )
*/
HB_FUNC_STATIC( QACTIONGROUP_SETVISIBLE )
{
  QActionGroup * obj = qobject_cast<QActionGroup*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QActionGroupSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QACTIONGROUP_ONHOVERED )
{
  QActionGroupSlots_connect_signal( "hovered(QAction*)", "hovered(QAction*)" );
}

HB_FUNC_STATIC( QACTIONGROUP_ONTRIGGERED )
{
  QActionGroupSlots_connect_signal( "triggered(QAction*)", "triggered(QAction*)" );
}

#pragma ENDDUMP
