$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QWheelEvent INHERIT QInputEvent

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD delta
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD buttons
   METHOD orientation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW1 )
{
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::Vertical : hb_parni(5);
  QWheelEvent * o = new QWheelEvent ( *PQPOINT(1), PINT(2), (Qt::MouseButtons) par3, (Qt::KeyboardModifiers) par4, (Qt::Orientation) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW2 )
{
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) Qt::Vertical : hb_parni(6);
  QWheelEvent * o = new QWheelEvent ( *PQPOINT(1), *PQPOINT(2), PINT(3), (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5, (Qt::Orientation) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
//[2]QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4,5) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QWHEELEVENT_NEW1 );
  }
  else if( ISBETWEEN(5,6) && ISQPOINT(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QWHEELEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int delta() const
*/
$method=|int|delta|

/*
const QPoint &pos() const
*/
$method=|const QPoint &|pos|

/*
const QPoint &globalPos() const
*/
$method=|const QPoint &|globalPos|

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

/*
int globalX() const
*/
$method=|int|globalX|

/*
int globalY() const
*/
$method=|int|globalY|

/*
Qt::MouseButtons buttons() const
*/
$method=|Qt::MouseButtons|buttons|

/*
Qt::Orientation orientation() const
*/
$method=|Qt::Orientation|orientation|

#pragma ENDDUMP
