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
REQUEST QACTION
REQUEST QICON
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD hideTearOffMenu
   METHOD icon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setActiveAction
   METHOD setDefaultAction
   METHOD setIcon
   METHOD setSeparatorsCollapsible
   METHOD setTearOffEnabled
   METHOD setTitle
   METHOD title
   METHOD sizeHint
   METHOD exec

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMenu
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QMenu>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)) )
  {
    /*
    QMenu( QWidget * parent = 0 )
    */
    QMenu * obj = new QMenu( OPQWIDGET( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else if( ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)) )
  {
    /*
    QMenu( const QString & title, QWidget * parent = 0 )
    */
    QMenu * obj = new QMenu( PQSTRING(1), OPQWIDGET( 2, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENU_DELETE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QAction * actionAt( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QAction * ptr = obj->actionAt( *PQPOINT(1) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
QRect actionGeometry( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QRect * ptr = new QRect( obj->actionGeometry( PQACTION(1)) );
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
QAction * activeAction() const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->activeAction();
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QAction * addAction( const QString & text )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(2) && (ISQICON(1) || HB_ISCHAR(2)) && HB_ISCHAR(2) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISBETWEEN(3, 4) && HB_ISCHAR(1) && ISQOBJECT(2) && HB_ISCHAR(3) && (ISQKEYSEQUENCE(4) || HB_ISNIL(4)) )
  {
    /*
    QAction * addAction( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = *(QKeySequence *) 0 )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3), HB_ISNIL(4) ? *(QKeySequence *) 0 : *static_cast<QKeySequence*>( Qt4xHb::itemGetPtr(4)) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISBETWEEN(4, 5) && (ISQICON(1) || HB_ISCHAR(1)) && HB_ISCHAR(2) && ISQOBJECT(3) && HB_ISCHAR(4) && (ISQKEYSEQUENCE(5) || HB_ISNIL(5)) )
  {
    /*
    QAction * addAction( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = *(QKeySequence *) 0 )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addAction( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4), HB_ISNIL(5) ? *(QKeySequence *) 0 : *static_cast<QKeySequence*>( Qt4xHb::itemGetPtr(5)) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    /*
    void addAction( QAction * action )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->addAction( PQACTION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    /*
    QAction * addMenu( QMenu * menu )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->addMenu( PQMENU(1) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QMenu * addMenu( const QString & title )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QMenu * ptr = obj->addMenu( PQSTRING(1) );
      Qt4xHb::createReturnQObjectClass(ptr, "QMENU");
    }
  }
  else if( ISNUMPAR(2) && (ISQICON(1) || HB_ISCHAR(1)) && HB_ISCHAR(2) )
  {
    /*
    QMenu * addMenu( const QIcon & icon, const QString & title )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QMenu * ptr = obj->addMenu( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1) ), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass(ptr, "QMENU");
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
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator();
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
HB_FUNC_STATIC( QMENU_CLEAR )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QAction * defaultAction() const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->defaultAction();
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
void hideTearOffMenu()
*/
HB_FUNC_STATIC( QMENU_HIDETEAROFFMENU )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hideTearOffMenu();
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
QIcon icon() const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QIcon * ptr = new QIcon( obj->icon() );
      Qt4xHb::createReturnClass(ptr, "QICON", true);
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
QAction * insertMenu( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQMENU(2) )
    {
#endif
      QAction * ptr = obj->insertMenu( PQACTION(1), PQMENU(2) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator( PQACTION(1) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QMENU_ISEMPTY )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
bool isTearOffEnabled() const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFENABLED )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffEnabled() );
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
bool isTearOffMenuVisible() const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFMENUVISIBLE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffMenuVisible() );
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
QAction * menuAction() const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->menuAction();
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
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
void popup( const QPoint & p, QAction * atAction = 0 )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQPOINT(1) && (ISQACTION(2) || HB_ISNIL(2)) )
    {
#endif
      obj->popup( *PQPOINT(1), OPQACTION( 2, 0 ) );
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
bool separatorsCollapsible() const
*/
HB_FUNC_STATIC( QMENU_SEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->separatorsCollapsible() );
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
void setActiveAction( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setActiveAction( PQACTION(1) );
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
void setDefaultAction( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setDefaultAction( PQACTION(1) );
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
void setIcon( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQICON( 1) || HB_ISCHAR(1)) )
    {
#endif
      obj->setIcon( HB_ISOBJECT(1) ? *static_cast<QIcon*>( Qt4xHb::itemGetPtr(1) ) : QIcon( hb_parc(1)) );
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
void setSeparatorsCollapsible( bool collapse )
*/
HB_FUNC_STATIC( QMENU_SETSEPARATORSCOLLAPSIBLE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSeparatorsCollapsible( PBOOL(1) );
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
void setTearOffEnabled( bool )
*/
HB_FUNC_STATIC( QMENU_SETTEAROFFENABLED )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setTearOffEnabled( PBOOL(1) );
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
void setTitle( const QString & title )
*/
HB_FUNC_STATIC( QMENU_SETTITLE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setTitle( PQSTRING(1) );
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
QString title() const
*/
HB_FUNC_STATIC( QMENU_TITLE )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    /*
    QAction * exec()
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->exec();
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISBETWEEN(1, 2) && ISQPOINT(1) && (ISQACTION(2) || HB_ISNIL(2)) )
  {
    /*
    QAction * exec( const QPoint & p, QAction * action = 0 )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAction * ptr = obj->exec( *PQPOINT(1), OPQACTION( 2, 0 ) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISNUMPAR(4) && HB_ISARRAY(1) && ISQPOINT(2) && ISQACTION(3) && ISQWIDGET(4) )
  {
    /*
    QAction * exec( QList<QAction *> actions, const QPoint & pos, QAction * at, QWidget * parent )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QList<QAction *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << static_cast<QAction*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1+1), "POINTER", 0)));
      }
      QAction * ptr = obj->exec( par1, *PQPOINT(2), PQACTION(3), PQWIDGET(4) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else if( ISBETWEEN(2, 3) && HB_ISARRAY(1) && ISQPOINT(2) && (ISQACTION(3) || HB_ISNIL(3)) )
  {
    /*
    QAction * exec( QList<QAction *> actions, const QPoint & pos, QAction * at = 0 )
    */
    QMenu * obj = qobject_cast<QMenu*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QList<QAction *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      const int nLen1 = hb_arrayLen(aList1);
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << static_cast<QAction*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1+1), "POINTER", 0)));
      }
      QAction * ptr = obj->exec( par1, *PQPOINT(2), OPQACTION( 3, 0 ) );
      Qt4xHb::createReturnQObjectClass(ptr, "QACTION");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QMenuSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QMENU_ONABOUTTOHIDE )
{
  QMenuSlots_connect_signal("aboutToHide()", "aboutToHide()");
}

HB_FUNC_STATIC( QMENU_ONABOUTTOSHOW )
{
  QMenuSlots_connect_signal("aboutToShow()", "aboutToShow()");
}

HB_FUNC_STATIC( QMENU_ONHOVERED )
{
  QMenuSlots_connect_signal("hovered(QAction*)", "hovered(QAction*)");
}

HB_FUNC_STATIC( QMENU_ONTRIGGERED )
{
  QMenuSlots_connect_signal("triggered(QAction*)", "triggered(QAction*)");
}

#pragma ENDDUMP
