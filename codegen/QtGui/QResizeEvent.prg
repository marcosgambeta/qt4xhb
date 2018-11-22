%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QResizeEvent(const QSize &size, const QSize &oldSize)
$constructor=|new|const QSize &,const QSize &

$deleteMethod

$prototype=const QSize &size() const
$method=|const QSize &|size|

$prototype=const QSize &oldSize()const
$method=|const QSize &|oldSize|

#pragma ENDDUMP
