%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QProcess::ExitStatus
*/
#define QProcess_NormalExit                                          0
#define QProcess_CrashExit                                           1

/*
enum QProcess::ProcessChannel
*/
#define QProcess_StandardOutput                                      0
#define QProcess_StandardError                                       1

/*
enum QProcess::ProcessChannelMode
*/
#define QProcess_SeparateChannels                                    0
#define QProcess_MergedChannels                                      1
#define QProcess_ForwardedChannels                                   2

/*
enum QProcess::ProcessError
*/
#define QProcess_FailedToStart                                       0
#define QProcess_Crashed                                             1
#define QProcess_Timedout                                            2
#define QProcess_WriteError                                          4
#define QProcess_ReadError                                           3
#define QProcess_UnknownError                                        5

/*
enum QProcess::ProcessState
*/
#define QProcess_NotRunning                                          0
#define QProcess_Starting                                            1
#define QProcess_Running                                             2
