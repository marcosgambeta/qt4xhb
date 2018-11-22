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
$signal=|currentItemChanged( QListWidgetItem * current, QListWidgetItem * previous )
$signal=|currentRowChanged( int currentRow )
$signal=|currentTextChanged( const QString & currentText )
$signal=|itemActivated( QListWidgetItem * item )
$signal=|itemChanged( QListWidgetItem * item )
$signal=|itemClicked( QListWidgetItem * item )
$signal=|itemDoubleClicked( QListWidgetItem * item )
$signal=|itemEntered( QListWidgetItem * item )
$signal=|itemPressed( QListWidgetItem * item )
$signal=|itemSelectionChanged()
$endSlotsClass
