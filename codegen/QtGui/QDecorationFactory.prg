%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD create
   METHOD keys

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static QDecoration * create ( const QString & key )
$staticMethod=|QDecoration *|create|const QString &

$prototype=static QStringList keys ()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
