%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDynamicPropertyChangeEvent ( const QByteArray & name )
$constructor=|new|const QByteArray &

$deleteMethod

$prototype=QByteArray propertyName () const
$method=|QByteArray|propertyName|

#pragma ENDDUMP
