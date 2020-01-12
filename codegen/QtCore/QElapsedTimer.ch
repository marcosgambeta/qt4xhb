%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

/*
enum QElapsedTimer::ClockType
*/
#define QElapsedTimer_SystemTime                                     0
#define QElapsedTimer_MonotonicClock                                 1
#define QElapsedTimer_TickCounter                                    2
#define QElapsedTimer_MachAbsoluteTime                               3
#define QElapsedTimer_PerformanceCounter                             4
