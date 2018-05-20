%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAOBJECT
#endif

$beginClass

   METHOD new
   METHOD delete
   METHOD name
   METHOD value
   METHOD enclosingMetaObject

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMetaClassInfo()
$constructor=|new|

$deleteMethod

$prototype=const char *name() const
$method=|const char *|name|

$prototype=const char *value() const
$method=|const char *|value|

$prototype=const QMetaObject *enclosingMetaObject() const
$method=|const QMetaObject *|enclosingMetaObject|

$extraMethods

#pragma ENDDUMP
