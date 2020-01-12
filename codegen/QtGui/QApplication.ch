%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QApplication::ColorSpec
*/
#define QApplication_NormalColor                                     0
#define QApplication_CustomColor                                     1
#define QApplication_ManyColor                                       2

/*
enum QApplication::Type
*/
#define QApplication_Tty                                             0
#define QApplication_GuiClient                                       1
#define QApplication_GuiServer                                       2
