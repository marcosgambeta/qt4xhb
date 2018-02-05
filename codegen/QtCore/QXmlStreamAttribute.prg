%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isDefault
   METHOD name
   METHOD namespaceUri
   METHOD prefix
   METHOD qualifiedName
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamAttribute>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QXmlStreamAttribute()
$internalConstructor=|new1|

$prototype=QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
$internalConstructor=|new2|const QString &,const QString &

$prototype=QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
$internalConstructor=|new3|const QString &,const QString &,const QString &

$prototype=QXmlStreamAttribute(const QXmlStreamAttribute & other)
$internalConstructor=|new4|const QXmlStreamAttribute &

//[1]QXmlStreamAttribute()
//[2]QXmlStreamAttribute(const QString & qualifiedName, const QString & value)
//[3]QXmlStreamAttribute(const QString & namespaceUri, const QString & name, const QString & value)
//[4]QXmlStreamAttribute(const QXmlStreamAttribute & other)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamAttribute_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QXmlStreamAttribute_new2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QXmlStreamAttribute_new3();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    QXmlStreamAttribute_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isDefault() const
$method=|bool|isDefault|

$prototype=QStringRef name() const
$method=|QStringRef|name|

$prototype=QStringRef namespaceUri() const
$method=|QStringRef|namespaceUri|

$prototype=QStringRef prefix() const
$method=|QStringRef|prefix|

$prototype=QStringRef qualifiedName() const
$method=|QStringRef|qualifiedName|

$prototype=QStringRef value() const
$method=|QStringRef|value|

$extraMethods

#pragma ENDDUMP
