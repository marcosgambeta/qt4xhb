%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

/*
enum QUuid::Variant
*/
#define QUuid_VarUnknown                                             -1
#define QUuid_NCS                                                    0
#define QUuid_DCE                                                    2
#define QUuid_Microsoft                                              6
#define QUuid_Reserved                                               7

/*
enum QUuid::Version
*/
#define QUuid_VerUnknown                                             -1
#define QUuid_Time                                                   1
#define QUuid_EmbeddedPOSIX                                          2
#define QUuid_Name                                                   3
#define QUuid_Random                                                 4
