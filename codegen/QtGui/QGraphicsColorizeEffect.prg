$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsColorizeEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsColorizeEffect ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSCOLORIZEEFFECT_NEW )
{
  QGraphicsColorizeEffect * o = new QGraphicsColorizeEffect ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QColor color () const
*/
$method=|QColor|color|

/*
qreal strength () const
*/
$method=|qreal|strength|

/*
void setColor ( const QColor & c )
*/
$method=|void|setColor|const QColor &

/*
void setStrength ( qreal strength )
*/
$method=|void|setStrength|qreal

#pragma ENDDUMP
