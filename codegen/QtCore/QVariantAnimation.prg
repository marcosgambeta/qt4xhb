%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QEASINGCURVE
#endif

$beginClassFrom=QAbstractAnimation

   METHOD delete
   METHOD currentValue
   METHOD easingCurve
   METHOD endValue
   METHOD keyValueAt
   METHOD setDuration
   METHOD setEasingCurve
   METHOD setEndValue
   METHOD setKeyValueAt
   METHOD setStartValue
   METHOD startValue

   METHOD onValueChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QVariant currentValue () const
$method=|QVariant|currentValue|

$prototype=QEasingCurve easingCurve () const
$method=|QEasingCurve|easingCurve|

$prototype=QVariant endValue () const
$method=|QVariant|endValue|

$prototype=QVariant keyValueAt ( qreal step ) const
$method=|QVariant|keyValueAt|qreal

$prototype=void setDuration ( int msecs )
$method=|void|setDuration|int

$prototype=void setEasingCurve ( const QEasingCurve & easing )
$method=|void|setEasingCurve|const QEasingCurve &

$prototype=void setEndValue ( const QVariant & value )
$method=|void|setEndValue|const QVariant &

$prototype=void setKeyValueAt ( qreal step, const QVariant & value )
$method=|void|setKeyValueAt|qreal,const QVariant &

$prototype=void setStartValue ( const QVariant & value )
$method=|void|setStartValue|const QVariant &

$prototype=QVariant startValue () const
$method=|QVariant|startValue|

$beginSignals
$signal=|valueChanged(QVariant)
$endSignals

#pragma ENDDUMP
