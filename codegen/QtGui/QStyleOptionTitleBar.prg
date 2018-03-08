%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QStyleOptionTitleBar INHERIT QStyleOptionComplex

   METHOD new
%%   METHOD delete

   METHOD text
   METHOD icon
   METHOD titleBarState
   METHOD titleBarFlags

   METHOD setText
   METHOD setIcon
   METHOD setTitleBarState
   METHOD setTitleBarFlags

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionTitleBar()
$internalConstructor=|new1|

$prototype=QStyleOptionTitleBar(const QStyleOptionTitleBar &other)
$internalConstructor=|new2|const QStyleOptionTitleBar &

$prototype=QStyleOptionTitleBar(int version) (protected)

//[1]QStyleOptionTitleBar()
//[2]QStyleOptionTitleBar(const QStyleOptionTitleBar &other)
//[3]QStyleOptionTitleBar(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTITLEBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTitleBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTITLEBAR(1) )
  {
    QStyleOptionTitleBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=int titleBarState
$variableMethod=|int|titleBarState|
$variableMethod=|void|titleBarState,setTitleBarState|int

$prototype=Qt::WindowFlags titleBarFlags
$variableMethod=|Qt::WindowFlags|titleBarFlags|
$variableMethod=|void|titleBarFlags,setTitleBarFlags|Qt::WindowFlags

#pragma ENDDUMP