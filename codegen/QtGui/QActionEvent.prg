%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
#endif

CLASS QActionEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD action
   METHOD before

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = 0 )
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

$prototype=QAction * action () const
$method=|QAction *|action|

$prototype=QAction * before () const
$method=|QAction *|before|

#pragma ENDDUMP
