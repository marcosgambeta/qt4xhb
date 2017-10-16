$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QGroupBox INHERIT QWidget

   METHOD new1
   METHOD new2
   METHOD new
   METHOD alignment
   METHOD isCheckable
   METHOD isChecked
   METHOD isFlat
   METHOD setAlignment
   METHOD setCheckable
   METHOD setFlat
   METHOD setTitle
   METHOD title
   METHOD minimumSizeHint
   METHOD setChecked

   METHOD onClicked
   METHOD onToggled

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGroupBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGroupBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW1 )
{
  QGroupBox * o = new QGroupBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGroupBox ( const QString & title, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QGROUPBOX_NEW2 )
{
  QGroupBox * o = new QGroupBox ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGroupBox ( QWidget * parent = 0 )
//[2]QGroupBox ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QGROUPBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGROUPBOX_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment alignment () const
*/
$method=|Qt::Alignment|alignment|

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isFlat () const
*/
$method=|bool|isFlat|

/*
void setAlignment ( int alignment )
*/
$method=|void|setAlignment|int

/*
void setCheckable ( bool checkable )
*/
$method=|void|setCheckable|bool

/*
void setFlat ( bool flat )
*/
$method=|void|setFlat|bool

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
QString title () const
*/
$method=|QString|title|

/*
virtual QSize minimumSizeHint () const
*/
$virtualMethod=|QSize|minimumSizeHint|

/*
void setChecked ( bool checked )
*/
$method=|void|setChecked|bool

#pragma ENDDUMP
