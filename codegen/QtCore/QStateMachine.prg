%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QStateMachine INHERIT QState

   METHOD new
   METHOD delete
   METHOD addDefaultAnimation
   METHOD addState
   METHOD cancelDelayedEvent
   METHOD clearError
   METHOD defaultAnimations
   METHOD error
   METHOD errorString
   METHOD globalRestorePolicy
   METHOD isAnimated
   METHOD isRunning
   METHOD postDelayedEvent
   METHOD postEvent
   METHOD removeDefaultAnimation
   METHOD removeState
   METHOD setAnimated
   METHOD setGlobalRestorePolicy
   METHOD eventFilter
   METHOD start
   METHOD stop

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStateMachine ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|addDefaultAnimation|QAbstractAnimation *

$prototype=void addState ( QAbstractState * state )
$method=|void|addState|QAbstractState *

$prototype=bool cancelDelayedEvent ( int id )
$method=|bool|cancelDelayedEvent|int

$prototype=void clearError ()
$method=|void|clearError|

$prototype=QList<QAbstractAnimation *> defaultAnimations () const
$method=|QList<QAbstractAnimation *>|defaultAnimations|

$prototype=Error error () const
$method=|QStateMachine::Error|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QStateMachine::RestorePolicy globalRestorePolicy () const
$method=|QStateMachine::RestorePolicy|globalRestorePolicy|

$prototype=bool isAnimated () const
$method=|bool|isAnimated|

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=int postDelayedEvent ( QEvent * event, int delay )
$method=|int|postDelayedEvent|QEvent *,int

$prototype=void postEvent ( QEvent * event, EventPriority priority = NormalPriority )
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

$prototype=void removeDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|removeDefaultAnimation|QAbstractAnimation *

$prototype=void removeState ( QAbstractState * state )
$method=|void|removeState|QAbstractState *

$prototype=void setAnimated ( bool enabled )
$method=|void|setAnimated|bool

$prototype=void setGlobalRestorePolicy ( QStateMachine::RestorePolicy restorePolicy )
$method=|void|setGlobalRestorePolicy|QStateMachine::RestorePolicy

$prototype=virtual bool eventFilter ( QObject * watched, QEvent * event )
$virtualMethod=|bool|eventFilter|QObject *,QEvent *

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

$connectSignalFunction

$signalMethod=|started()
$signalMethod=|stopped()

#pragma ENDDUMP
