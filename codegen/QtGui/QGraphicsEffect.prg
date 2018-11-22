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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=virtual QRectF boundingRectFor ( const QRectF & rect ) const
$virtualMethod=|QRectF|boundingRectFor|const QRectF &

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=void setEnabled ( bool enable )
$method=|void|setEnabled|bool

$prototype=void update ()
$method=|void|update|

$beginSignals
$signal=|enabledChanged(bool)
$endSignals

#pragma ENDDUMP
