/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTOOLBAR
REQUEST QWIDGET
REQUEST QMENU
REQUEST QSIZE
REQUEST QMENUBAR
REQUEST QBYTEARRAY
REQUEST QSTATUSBAR
REQUEST QDOCKWIDGET
#endif

CLASS QMainWindow INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addDockWidget
   METHOD addToolBar
   METHOD addToolBarBreak
   METHOD centralWidget
   METHOD corner
   METHOD createPopupMenu
   METHOD dockOptions
   METHOD dockWidgetArea
   METHOD documentMode
   METHOD iconSize
   METHOD insertToolBar
   METHOD insertToolBarBreak
   METHOD isAnimated
   METHOD isDockNestingEnabled
   METHOD menuBar
   METHOD menuWidget
   METHOD removeDockWidget
   METHOD removeToolBar
   METHOD removeToolBarBreak
   METHOD restoreDockWidget
   METHOD restoreState
   METHOD saveState
   METHOD setCentralWidget
   METHOD setCorner
   METHOD setDockOptions
   METHOD setDocumentMode
   METHOD setIconSize
   METHOD setMenuBar
   METHOD setMenuWidget
   METHOD setStatusBar
   METHOD setTabPosition
   METHOD setTabShape
   METHOD setToolButtonStyle
   METHOD splitDockWidget
   METHOD statusBar
   METHOD tabPosition
   METHOD tabShape
   METHOD tabifiedDockWidgets
   METHOD tabifyDockWidget
   METHOD toolBarArea
   METHOD toolBarBreak
   METHOD toolButtonStyle
   METHOD setAnimated
   METHOD setDockNestingEnabled

   METHOD onIconSizeChanged
   METHOD onToolButtonStyleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMainWindow
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QMainWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QToolBar>
#include <QMenu>
#include <QMenuBar>
#include <QStatusBar>

/*
QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_NEW )
{
  if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QMainWindow * o = new QMainWindow ( OPQWIDGET(1,0), ISNIL(2)? (Qt::WindowFlags) 0 : (Qt::WindowFlags) hb_parni(2) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMAINWINDOW_DELETE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
*/
void QMainWindow_addDockWidget1 ()
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addDockWidget ( (Qt::DockWidgetArea) hb_parni(1), PQDOCKWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/
void QMainWindow_addDockWidget2 ()
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addDockWidget ( (Qt::DockWidgetArea) hb_parni(1), PQDOCKWIDGET(2), (Qt::Orientation) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
//[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    QMainWindow_addDockWidget1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    QMainWindow_addDockWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
*/
void QMainWindow_addToolBar1 ()
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addToolBar ( (Qt::ToolBarArea) hb_parni(1), PQTOOLBAR(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addToolBar ( QToolBar * toolbar )
*/
void QMainWindow_addToolBar2 ()
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addToolBar ( PQTOOLBAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QToolBar * addToolBar ( const QString & title )
*/
void QMainWindow_addToolBar3 ()
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QToolBar * ptr = obj->addToolBar ( PQSTRING(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QTOOLBAR" );
  }
}

//[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
//[2]void addToolBar ( QToolBar * toolbar )
//[3]QToolBar * addToolBar ( const QString & title )

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    QMainWindow_addToolBar1();
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    QMainWindow_addToolBar2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMainWindow_addToolBar3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addToolBarBreak ( Qt::ToolBarArea area = Qt::TopToolBarArea )
*/
HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      obj->addToolBarBreak ( ISNIL(1)? (Qt::ToolBarArea) Qt::TopToolBarArea : (Qt::ToolBarArea) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * centralWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_CENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->centralWidget ();
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DockWidgetArea corner ( Qt::Corner corner ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_CORNER )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RENUM( obj->corner ( (Qt::Corner) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QMenu * createPopupMenu ()
*/
HB_FUNC_STATIC( QMAINWINDOW_CREATEPOPUPMENU )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenu * ptr = obj->createPopupMenu ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QMENU" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
DockOptions dockOptions () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->dockOptions () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::DockWidgetArea dockWidgetArea ( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCKWIDGETAREA )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
      RENUM( obj->dockWidgetArea ( PQDOCKWIDGET(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool documentMode () const
*/
HB_FUNC_STATIC( QMAINWINDOW_DOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->documentMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->iconSize () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertToolBar ( QToolBar * before, QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQTOOLBAR(1) && ISQTOOLBAR(2) )
    {
      obj->insertToolBar ( PQTOOLBAR(1), PQTOOLBAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_INSERTTOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
      obj->insertToolBarBreak ( PQTOOLBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISANIMATED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAnimated () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isDockNestingEnabled () const
*/
HB_FUNC_STATIC( QMAINWINDOW_ISDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isDockNestingEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMenuBar * menuBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QMenuBar * ptr = obj->menuBar ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QMENUBAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QWidget * menuWidget () const
*/
HB_FUNC_STATIC( QMAINWINDOW_MENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QWidget * ptr = obj->menuWidget ();
      _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void removeDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVEDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
      obj->removeDockWidget ( PQDOCKWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeToolBar ( QToolBar * toolbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
      obj->removeToolBar ( PQTOOLBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeToolBarBreak ( QToolBar * before )
*/
HB_FUNC_STATIC( QMAINWINDOW_REMOVETOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
      obj->removeToolBarBreak ( PQTOOLBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool restoreDockWidget ( QDockWidget * dockwidget )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTOREDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
      RBOOL( obj->restoreDockWidget ( PQDOCKWIDGET(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool restoreState ( const QByteArray & state, int version = 0 )
*/
HB_FUNC_STATIC( QMAINWINDOW_RESTORESTATE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTNUM(2) )
    {
      RBOOL( obj->restoreState ( *PQBYTEARRAY(1), OPINT(2,0) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QByteArray saveState ( int version = 0 ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SAVESTATE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      QByteArray * ptr = new QByteArray( obj->saveState ( OPINT(1,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCentralWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCENTRALWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setCentralWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCorner ( Qt::Corner corner, Qt::DockWidgetArea area )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETCORNER )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setCorner ( (Qt::Corner) hb_parni(1), (Qt::DockWidgetArea) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDockOptions ( DockOptions options )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKOPTIONS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDockOptions ( (QMainWindow::DockOptions) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDocumentMode ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCUMENTMODE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDocumentMode ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize ( const QSize & iconSize )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETICONSIZE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuBar ( QMenuBar * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMENUBAR(1) )
    {
      obj->setMenuBar ( PQMENUBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuWidget ( QWidget * menuBar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETMENUWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->setMenuWidget ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStatusBar ( QStatusBar * statusbar )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETSTATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSTATUSBAR(1) )
    {
      obj->setStatusBar ( PQSTATUSBAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabPosition ( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->setTabPosition ( (Qt::DockWidgetAreas) hb_parni(1), (QTabWidget::TabPosition) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTabShape ( QTabWidget::TabShape tabShape )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTabShape ( (QTabWidget::TabShape) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setToolButtonStyle ( Qt::ToolButtonStyle toolButtonStyle )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETTOOLBUTTONSTYLE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setToolButtonStyle ( (Qt::ToolButtonStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void splitDockWidget ( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )
*/
HB_FUNC_STATIC( QMAINWINDOW_SPLITDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(3) && ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
    {
      obj->splitDockWidget ( PQDOCKWIDGET(1), PQDOCKWIDGET(2), (Qt::Orientation) hb_parni(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStatusBar * statusBar () const
*/
HB_FUNC_STATIC( QMAINWINDOW_STATUSBAR )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QStatusBar * ptr = obj->statusBar ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QSTATUSBAR" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTabWidget::TabPosition tabPosition ( Qt::DockWidgetArea area ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABPOSITION )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RENUM( obj->tabPosition ( (Qt::DockWidgetArea) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTabWidget::TabShape tabShape () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABSHAPE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->tabShape () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QDockWidget *> tabifiedDockWidgets ( QDockWidget * dockwidget ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFIEDDOCKWIDGETS )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDOCKWIDGET(1) )
    {
      QList<QDockWidget *> list = obj->tabifiedDockWidgets ( PQDOCKWIDGET(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QDOCKWIDGET" );
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
          hb_itemPutPtr( pItem, (QDockWidget *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QDOCKWIDGET", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void tabifyDockWidget ( QDockWidget * first, QDockWidget * second )
*/
HB_FUNC_STATIC( QMAINWINDOW_TABIFYDOCKWIDGET )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQDOCKWIDGET(1) && ISQDOCKWIDGET(2) )
    {
      obj->tabifyDockWidget ( PQDOCKWIDGET(1), PQDOCKWIDGET(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolBarArea toolBarArea ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARAREA )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
      RENUM( obj->toolBarArea ( PQTOOLBAR(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool toolBarBreak ( QToolBar * toolbar ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBARBREAK )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQTOOLBAR(1) )
    {
      RBOOL( obj->toolBarBreak ( PQTOOLBAR(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::ToolButtonStyle toolButtonStyle () const
*/
HB_FUNC_STATIC( QMAINWINDOW_TOOLBUTTONSTYLE )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->toolButtonStyle () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setAnimated ( bool enabled )
*/
HB_FUNC_STATIC( QMAINWINDOW_SETANIMATED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAnimated ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDockNestingEnabled ( bool enabled ) const
*/
HB_FUNC_STATIC( QMAINWINDOW_SETDOCKNESTINGENABLED )
{
  QMainWindow * obj = (QMainWindow *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setDockNestingEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QMainWindowSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMAINWINDOW_ONICONSIZECHANGED )
{
  QMainWindowSlots_connect_signal( "iconSizeChanged(QSize)", "iconSizeChanged(QSize)" );
}

HB_FUNC_STATIC( QMAINWINDOW_ONTOOLBUTTONSTYLECHANGED )
{
  QMainWindowSlots_connect_signal( "toolButtonStyleChanged(Qt::ToolButtonStyle)", "toolButtonStyleChanged(Qt::ToolButtonStyle)" );
}

#pragma ENDDUMP
