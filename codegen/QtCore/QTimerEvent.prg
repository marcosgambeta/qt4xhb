%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD timerId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimerEvent(int timerId)
$constructor=|new|int

$deleteMethod

$prototype=int timerId() const
$method=|int|timerId|

#pragma ENDDUMP
