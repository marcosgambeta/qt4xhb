%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

$header

$includes

$beginSlotsClass
$signal=|beforeDelete( int row )
$signal=|beforeInsert( QSqlRecord & record )
$signal=|beforeUpdate( int row, QSqlRecord & record )
$signal=|primeInsert( int row, QSqlRecord & record )
$endSlotsClass
