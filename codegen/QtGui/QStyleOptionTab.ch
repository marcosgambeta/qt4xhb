%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QStyleOptionTab::StyleOptionType
*/
#define QStyleOptionTab_Type                                         QStyleOption_SO_Tab

/*
enum QStyleOptionTab::StyleOptionVersion
*/
#define QStyleOptionTab_Version                                      1

/*
enum QStyleOptionTab::TabPosition
*/
#define QStyleOptionTab_Beginning                                    0
#define QStyleOptionTab_Middle                                       1
#define QStyleOptionTab_End                                          2
#define QStyleOptionTab_OnlyOneTab                                   3

/*
enum QStyleOptionTab::SelectedPosition
*/
#define QStyleOptionTab_NotAdjacent                                  0
#define QStyleOptionTab_NextIsSelected                               1
#define QStyleOptionTab_PreviousIsSelected                           2

/*
enum QStyleOptionTab::CornerWidget
flags QStyleOptionTab::CornerWidgets
*/
#define QStyleOptionTab_NoCornerWidgets                              0x00
#define QStyleOptionTab_LeftCornerWidget                             0x01
#define QStyleOptionTab_RightCornerWidget                            0x02
