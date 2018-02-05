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

CLASS QTouchEvent INHERIT QInputEvent

   METHOD delete
   METHOD widget
   METHOD deviceType
   METHOD touchPointStates

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTouchEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=QWidget *widget() const
$method=|QWidget *|widget|

$prototype=QTouchEvent::DeviceType deviceType() const
$method=|QTouchEvent::DeviceType|deviceType|

$prototype=Qt::TouchPointStates touchPointStates() const
$method=|Qt::TouchPointStates|touchPointStates|

#pragma ENDDUMP
