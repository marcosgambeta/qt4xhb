/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QThread INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD yieldCurrentThread

   METHOD onFinished
   METHOD onStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QThread
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QThread>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QThread( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QThread * obj = new QThread( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTHREAD_DELETE )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
void exit( int returnCode = 0 )
*/
HB_FUNC_STATIC( QTHREAD_EXIT )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->exit( OPINT( 1, 0 ) );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QTHREAD_ISFINISHED )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isFinished() );
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
bool isRunning() const
*/
HB_FUNC_STATIC( QTHREAD_ISRUNNING )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isRunning() );
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
QThread::Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->priority() );
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
void setPriority( QThread::Priority priority )
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setPriority( ( QThread::Priority ) hb_parni( 1 ) );
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
void setStackSize( uint stackSize )
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setStackSize( PUINT( 1 ) );
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
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RUINT( obj->stackSize() );
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
virtual bool event( QEvent * event )
*/
HB_FUNC_STATIC( QTHREAD_EVENT )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQEVENT( 1 ) )
    {
#endif
      RBOOL( obj->event( PQEVENT( 1 ) ) );
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
void quit()
*/
HB_FUNC_STATIC( QTHREAD_QUIT )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->quit();
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
void start( QThread::Priority priority = QThread::InheritPriority )
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->start( HB_ISNIL( 1 ) ? ( QThread::Priority ) QThread::InheritPriority : ( QThread::Priority ) hb_parni( 1 ) );
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
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->terminate();
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
static QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    QThread * ptr = QThread::currentThread();
    Qt4xHb::createReturnQObjectClass( ptr, "QTHREAD" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 0 ) )
  {
#endif
    RINT( QThread::idealThreadCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread * obj = qobject_cast< QThread * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->yieldCurrentThread();
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

void QThreadSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTHREAD_ONFINISHED )
{
  QThreadSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QTHREAD_ONSTARTED )
{
  QThreadSlots_connect_signal( "started()", "started()" );
}

#pragma ENDDUMP
