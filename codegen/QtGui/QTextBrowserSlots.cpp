%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|anchorClicked( const QUrl & link )
$slot=|backwardAvailable( bool available )
$slot=|forwardAvailable( bool available )
$slot=|highlighted( const QUrl & link )
$slot=|highlighted( const QString & link )
$slot=|historyChanged()
$slot=|sourceChanged( const QUrl & src )
$endSlotsClass
