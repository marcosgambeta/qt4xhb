%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QUrl linkAt ( const QPoint & point )
$method=|QUrl|linkAt|const QPoint &

$beginSignals
$signal=|requestShowLink(QUrl)
$endSignals

#pragma ENDDUMP
