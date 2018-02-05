%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QNetworkSession::SessionError
*/
#define QNetworkSession_UnknownSessionError                          0
#define QNetworkSession_SessionAbortedError                          1
#define QNetworkSession_RoamingError                                 2
#define QNetworkSession_OperationNotSupportedError                   3
#define QNetworkSession_InvalidConfigurationError                    4

/*
enum QNetworkSession::State
*/
#define QNetworkSession_Invalid                                      0
#define QNetworkSession_NotAvailable                                 1
#define QNetworkSession_Connecting                                   2
#define QNetworkSession_Connected                                    3
#define QNetworkSession_Closing                                      4
#define QNetworkSession_Disconnected                                 5
#define QNetworkSession_Roaming                                      6
