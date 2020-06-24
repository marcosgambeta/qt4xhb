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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QKeySequence ()
$internalConstructor=|new1|

$prototype=QKeySequence ( const QString & key )
$internalConstructor=|new2|const QString &

$prototype=QKeySequence ( const QString & key, SequenceFormat format )
$internalConstructor=|new3|const QString &,QKeySequence::SequenceFormat

$prototype=QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
$internalConstructor=|new4|int,int=0,int=0,int=0

$prototype=QKeySequence ( const QKeySequence & keysequence )
$internalConstructor=|new5|const QKeySequence &

$prototype=QKeySequence ( StandardKey key )
$internalConstructor=|new6|QKeySequence::StandardKey

/*
[1]QKeySequence ()
[2]QKeySequence ( const QString & key )
[3]QKeySequence ( const QString & key, SequenceFormat format )
[4]QKeySequence ( int k1, int k2 = 0, int k3 = 0, int k4 = 0 )
[5]QKeySequence ( const QKeySequence & keysequence )
[6]QKeySequence ( StandardKey key )
*/

/*
  Para resolver o conflito entre [4] e [6], [6] � analisado em
  primeiro lugar, seguido por [4]. Desta forma, se for 1 par�metro
  num�rico, ser� considerado [6]. Se forem de 2 a 4 par�metros
  num�ricos, ser� considerado [4].
*/

HB_FUNC_STATIC( QKEYSEQUENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QKeySequence_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QKeySequence_new2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QKeySequence_new3();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QKeySequence_new6();
  }
  else if( ISBETWEEN(1,4) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QKeySequence_new4();
  }
  else if( ISNUMPAR(1) && ISQKEYSEQUENCE(1) )
  {
    QKeySequence_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=uint count() const

$prototypeV2=bool isEmpty() const

$prototypeV2=QKeySequence::SequenceMatch matches( const QKeySequence & seq ) const

$prototypeV2=QString toString( QKeySequence::SequenceFormat format = QKeySequence::PortableText ) const

$prototypeV2=static QKeySequence fromString( const QString & str, QKeySequence::SequenceFormat format = QKeySequence::PortableText )

$prototypeV2=static QList<QKeySequence> keyBindings( QKeySequence::StandardKey key )

$prototypeV2=static QKeySequence mnemonic( const QString & text )

$extraMethods

#pragma ENDDUMP
