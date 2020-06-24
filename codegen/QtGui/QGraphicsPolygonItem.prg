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

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QPolygonF &,QGraphicsItem *=0

/*
[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::FillRule fillRule() const

$prototypeV2=QPolygonF polygon() const

$prototypeV2=void setFillRule( Qt::FillRule rule )

$prototypeV2=void setPolygon( const QPolygonF & polygon )

$prototypeV2=virtual QRectF boundingRect() const

$prototypeV2=virtual bool contains( const QPointF & point ) const

$prototypeV2=virtual bool isObscuredBy( const QGraphicsItem * item ) const

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP
