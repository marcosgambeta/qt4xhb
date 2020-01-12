%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|blockCountChanged( int newBlockCount )
$slot=|copyAvailable( bool yes )
$slot=|cursorPositionChanged()
$slot=|modificationChanged( bool changed )
$slot=|redoAvailable( bool available )
$slot=|selectionChanged()
$slot=|textChanged()
$slot=|undoAvailable( bool available )
$slot=|updateRequest( const QRect & rect, int dy )
$endSlotsClass
