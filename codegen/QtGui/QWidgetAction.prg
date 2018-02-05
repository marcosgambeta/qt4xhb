%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWidgetAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QWidgetAction ( QObject * parent )
$constructor=|new|QObject *

$deleteMethod

$prototype=QWidget * defaultWidget () const
$method=|QWidget *|defaultWidget|

$prototype=void releaseWidget ( QWidget * widget )
$method=|void|releaseWidget|QWidget *

$prototype=QWidget * requestWidget ( QWidget * parent )
$method=|QWidget *|requestWidget|QWidget *

$prototype=void setDefaultWidget ( QWidget * widget )
$method=|void|setDefaultWidget|QWidget *

#pragma ENDDUMP
