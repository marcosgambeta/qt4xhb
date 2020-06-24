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

$beginClassFrom=QAbstractButton

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QCheckBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QCheckBox ( const QString & text, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

/*
[1]QCheckBox ( QWidget * parent = 0 )
[2]QCheckBox ( const QString & text, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QCheckBox_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QCheckBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=Qt::CheckState checkState() const

$prototypeV2=bool isTristate() const

$prototypeV2=void setCheckState( Qt::CheckState state )

$prototypeV2=void setTristate( bool y = true )

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$beginSignals
$signal=|stateChanged(int)
$endSignals

#pragma ENDDUMP
