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
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QToolBar INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD addAction
   METHOD addSeparator
   METHOD addWidget
   METHOD allowedAreas
   METHOD clear
   METHOD iconSize
   METHOD insertSeparator
   METHOD insertWidget
   METHOD isAreaAllowed
   METHOD isFloatable
   METHOD isFloating
   METHOD isMovable
   METHOD orientation
   METHOD setAllowedAreas
   METHOD setFloatable
   METHOD setMovable
   METHOD setOrientation
   METHOD toggleViewAction
   METHOD toolButtonStyle
   METHOD widgetForAction
   METHOD setIconSize
   METHOD setToolButtonStyle

   METHOD onActionTriggered
   METHOD onAllowedAreasChanged
   METHOD onIconSizeChanged
   METHOD onMovableChanged
   METHOD onOrientationChanged
   METHOD onToolButtonStyleChanged
   METHOD onTopLevelChanged
   METHOD onVisibilityChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QToolBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QIcon>
#include <QtGui/QAction>

HB_FUNC_STATIC( QTOOLBAR_NEW )
{
  if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && ( ISQWIDGET(2) || HB_ISNIL(2) ) )
  {
    /*
    QToolBar( const QString & title, QWidget * parent = 0 )
    */
    QToolBar * obj = new QToolBar( PQSTRING(1), OPQWIDGET( 2, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else if( ISBETWEEN(0, 1) && ( ISQWIDGET(1) || HB_ISNIL(1) ) )
  {
    /*
    QToolBar( QWidget * parent = 0 )
    */
    QToolBar * obj = new QToolBar( OPQWIDGET( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTOOLBAR_DELETE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC( QTOOLBAR_ACTIONAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QAction * actionAt( int x, int y ) const
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->actionAt( PINT(1), PINT(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    /*
    QAction * actionAt( const QPoint & p ) const
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->actionAt( *PQPOINT(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QTOOLBAR_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    void addAction( QAction * action )
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->addAction( PQACTION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else if( ISNUMPAR(3) && HB_ISCHAR(1) && ISQOBJECT(2) && HB_ISCHAR(3) )
  {
    /*
    QAction * addAction( const QString & text, const QObject * receiver, const char * member )
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else if( ISNUMPAR(4) && ( ISQICON(1) || HB_ISCHAR(1) ) && HB_ISCHAR(2) && ISQOBJECT(3) && HB_ISCHAR(4) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text, const QObject * receiver, const char * member )
    */
    QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4) );
      Qt4xHb::createReturnQObjectClass( ptr, "QACTION" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAction * addSeparator()
*/
HB_FUNC_STATIC( QTOOLBAR_ADDSEPARATOR )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator();
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
QAction * addWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_ADDWIDGET )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      QAction * ptr = obj->addWidget( PQWIDGET(1) );
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
Qt::ToolBarAreas allowedAreas() const
*/
HB_FUNC_STATIC( QTOOLBAR_ALLOWEDAREAS )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->allowedAreas() );
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
void clear()
*/
HB_FUNC_STATIC( QTOOLBAR_CLEAR )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QSize iconSize() const
*/
HB_FUNC_STATIC( QTOOLBAR_ICONSIZE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->iconSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
QAction * insertSeparator( QAction * before )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTSEPARATOR )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator( PQACTION(1) );
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
QAction * insertWidget( QAction * before, QWidget * widget )
*/
HB_FUNC_STATIC( QTOOLBAR_INSERTWIDGET )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQWIDGET(2) )
    {
#endif
      QAction * ptr = obj->insertWidget( PQACTION(1), PQWIDGET(2) );
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
bool isAreaAllowed( Qt::ToolBarArea area ) const
*/
HB_FUNC_STATIC( QTOOLBAR_ISAREAALLOWED )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->isAreaAllowed( ( Qt::ToolBarArea ) hb_parni(1) ) );
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
bool isFloatable() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATABLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFloatable() );
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
bool isFloating() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISFLOATING )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFloating() );
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
bool isMovable() const
*/
HB_FUNC_STATIC( QTOOLBAR_ISMOVABLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isMovable() );
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QTOOLBAR_ORIENTATION )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
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
void setAllowedAreas( Qt::ToolBarAreas areas )
*/
HB_FUNC_STATIC( QTOOLBAR_SETALLOWEDAREAS )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setAllowedAreas( ( Qt::ToolBarAreas ) hb_parni(1) );
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
void setFloatable( bool floatable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETFLOATABLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setFloatable( PBOOL(1) );
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
void setMovable( bool movable )
*/
HB_FUNC_STATIC( QTOOLBAR_SETMOVABLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setMovable( PBOOL(1) );
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
void setOrientation( Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QTOOLBAR_SETORIENTATION )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOrientation( ( Qt::Orientation ) hb_parni(1) );
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
QAction * toggleViewAction() const
*/
HB_FUNC_STATIC( QTOOLBAR_TOGGLEVIEWACTION )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->toggleViewAction();
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
Qt::ToolButtonStyle toolButtonStyle() const
*/
HB_FUNC_STATIC( QTOOLBAR_TOOLBUTTONSTYLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->toolButtonStyle() );
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
QWidget * widgetForAction( QAction * action ) const
*/
HB_FUNC_STATIC( QTOOLBAR_WIDGETFORACTION )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QWidget * ptr = obj->widgetForAction( PQACTION(1) );
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
void setIconSize( const QSize & iconSize )
*/
HB_FUNC_STATIC( QTOOLBAR_SETICONSIZE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setIconSize( *PQSIZE(1) );
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
void setToolButtonStyle( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QTOOLBAR_SETTOOLBUTTONSTYLE )
{
  QToolBar * obj = qobject_cast<QToolBar*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setToolButtonStyle( ( Qt::ToolButtonStyle ) hb_parni(1) );
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

void QToolBarSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTOOLBAR_ONACTIONTRIGGERED )
{
  QToolBarSlots_connect_signal( "actionTriggered(QAction*)", "actionTriggered(QAction*)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONALLOWEDAREASCHANGED )
{
  QToolBarSlots_connect_signal( "allowedAreasChanged(Qt::ToolBarAreas)", "allowedAreasChanged(Qt::ToolBarAreas)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONICONSIZECHANGED )
{
  QToolBarSlots_connect_signal( "iconSizeChanged(QSize)", "iconSizeChanged(QSize)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONMOVABLECHANGED )
{
  QToolBarSlots_connect_signal( "movableChanged(bool)", "movableChanged(bool)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONORIENTATIONCHANGED )
{
  QToolBarSlots_connect_signal( "orientationChanged(Qt::Orientation)", "orientationChanged(Qt::Orientation)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONTOOLBUTTONSTYLECHANGED )
{
  QToolBarSlots_connect_signal( "toolButtonStyleChanged(Qt::ToolButtonStyle)", "toolButtonStyleChanged(Qt::ToolButtonStyle)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONTOPLEVELCHANGED )
{
  QToolBarSlots_connect_signal( "topLevelChanged(bool)", "topLevelChanged(bool)" );
}

HB_FUNC_STATIC( QTOOLBAR_ONVISIBILITYCHANGED )
{
  QToolBarSlots_connect_signal( "visibilityChanged(bool)", "visibilityChanged(bool)" );
}

#pragma ENDDUMP
