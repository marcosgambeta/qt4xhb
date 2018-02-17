%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   METHOD delete
   METHOD position
   METHOD setPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF position () const
$method=|QPointF|position|

$prototype=void setPosition ( const QPointF & pos )
$method=|void|setPosition|const QPointF &

#pragma ENDDUMP
