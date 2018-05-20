%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGESTURE
#endif

$beginClass

   METHOD delete
   METHOD create
   METHOD recognize
   METHOD reset
   METHOD registerRecognizer
   METHOD unregisterRecognizer

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QGesture>

$deleteMethod

$prototype=virtual QGesture * create ( QObject * target )
$virtualMethod=|QGesture *|create|QObject *

$prototype=virtual Result recognize ( QGesture * gesture, QObject * watched, QEvent * event ) = 0
$virtualMethod=|QGestureRecognizer::Result|recognize|QGesture *,QObject *,QEvent *

$prototype=virtual void reset ( QGesture * gesture )
$virtualMethod=|void|reset|QGesture *

$prototype=static Qt::GestureType registerRecognizer ( QGestureRecognizer * recognizer )
$staticMethod=|Qt::GestureType|registerRecognizer|QGestureRecognizer *

$prototype=static void unregisterRecognizer ( Qt::GestureType type )
$staticMethod=|void|unregisterRecognizer|Qt::GestureType

$extraMethods

#pragma ENDDUMP
