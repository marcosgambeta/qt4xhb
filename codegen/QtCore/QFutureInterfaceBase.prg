%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QFutureInterfaceBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reportStarted
   METHOD reportFinished
   METHOD reportCanceled
   METHOD reportResultsReady
   METHOD setRunnable
   METHOD setFilterMode
   METHOD setProgressRange
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD isProgressUpdateNeeded
   METHOD setProgressValue
   METHOD progressValue
   METHOD setProgressValueAndText
   METHOD progressText
   METHOD setExpectedResultCount
   METHOD expectedResultCount
   METHOD resultCount
   METHOD queryState
   METHOD isRunning
   METHOD isStarted
   METHOD isCanceled
   METHOD isFinished
   METHOD isPaused
   METHOD isThrottled
   METHOD isResultReadyAt
   METHOD cancel
   METHOD setPaused
   METHOD togglePaused
   METHOD setThrottled
   METHOD waitForFinished
   METHOD waitForNextResult
   METHOD waitForResult
   METHOD waitForResume
   METHOD mutex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFutureInterfaceBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QFutureInterfaceBase(State initialState = NoState)
$internalConstructor=|new1|QFutureInterfaceBase::State=QFutureInterfaceBase::NoState

$prototype=QFutureInterfaceBase(const QFutureInterfaceBase &other)
$internalConstructor=|new2|const QFutureInterfaceBase &

//[1]QFutureInterfaceBase(State initialState = NoState)
//[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QFutureInterfaceBase_new1();
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    QFutureInterfaceBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void reportStarted()
$method=|void|reportStarted|

$prototype=void reportFinished()
$method=|void|reportFinished|

$prototype=void reportCanceled()
$method=|void|reportCanceled|

$prototype=void reportResultsReady(int beginIndex, int endIndex)
$method=|void|reportResultsReady|int,int

$prototype=void setRunnable(QRunnable *runnable)
$method=|void|setRunnable|QRunnable *

$prototype=void setFilterMode(bool enable)
$method=|void|setFilterMode|bool

$prototype=void setProgressRange(int minimum, int maximum)
$method=|void|setProgressRange|int,int

$prototype=int progressMinimum() const
$method=|int|progressMinimum|

$prototype=int progressMaximum() const
$method=|int|progressMaximum|

$prototype=bool isProgressUpdateNeeded() const
$method=|bool|isProgressUpdateNeeded|

$prototype=void setProgressValue(int progressValue)
$method=|void|setProgressValue|int

$prototype=int progressValue() const
$method=|int|progressValue|

$prototype=void setProgressValueAndText(int progressValue, const QString &progressText)
$method=|void|setProgressValueAndText|int,const QString &

$prototype=QString progressText() const
$method=|QString|progressText|

$prototype=void setExpectedResultCount(int resultCount)
$method=|void|setExpectedResultCount|int

$prototype=int expectedResultCount()
$method=|int|expectedResultCount|

$prototype=int resultCount() const
$method=|int|resultCount|

$prototype=bool queryState(State state) const
$method=|bool|queryState|QFutureInterfaceBase::State

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=bool isStarted() const
$method=|bool|isStarted|

$prototype=bool isCanceled() const
$method=|bool|isCanceled|

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=bool isPaused() const
$method=|bool|isPaused|

$prototype=bool isThrottled() const
$method=|bool|isThrottled|

$prototype=bool isResultReadyAt(int index) const
$method=|bool|isResultReadyAt|int

$prototype=void cancel()
$method=|void|cancel|

$prototype=void setPaused(bool paused)
$method=|void|setPaused|bool

$prototype=void togglePaused()
$method=|void|togglePaused|

$prototype=void setThrottled(bool enable)
$method=|void|setThrottled|bool

$prototype=void waitForFinished()
$method=|void|waitForFinished|

$prototype=bool waitForNextResult()
$method=|bool|waitForNextResult|

$prototype=void waitForResult(int resultIndex)
$method=|void|waitForResult|int

$prototype=void waitForResume()
$method=|void|waitForResume|

$prototype=QMutex *mutex() const
$method=|QMutex *|mutex|

$extraMethods

#pragma ENDDUMP
