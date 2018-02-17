%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QHoverEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

$prototype=const QPoint & pos () const
$method=|const QPoint &|pos|

$prototype=const QPoint & oldPos () const
$method=|const QPoint &|oldPos|

#pragma ENDDUMP
