%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QValidator

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QRegExpValidator ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QRegExpValidator ( const QRegExp & rx, QObject * parent )
$internalConstructor=|new2|const QRegExp &,QObject *

//[1]QRegExpValidator ( QObject * parent = 0 )
//[2]QRegExpValidator ( const QRegExp & rx, QObject * parent )

HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QRegExpValidator_new1();
  }
  else if( ISNUMPAR(2) && ISQREGEXP(1) && ISQOBJECT(2) )
  {
    QRegExpValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=const QRegExp & regExp () const
$method=|const QRegExp &|regExp|

$prototype=void setRegExp ( const QRegExp & rx )
$method=|void|setRegExp|const QRegExp &

$prototype=virtual QValidator::State validate ( QString & input, int & pos ) const
HB_FUNC_STATIC( QREGEXPVALIDATOR_VALIDATE ) // TODO: revisar implementacao e corrigir
{
  QRegExpValidator * obj = (QRegExpValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}
$addMethod=validate

#pragma ENDDUMP
