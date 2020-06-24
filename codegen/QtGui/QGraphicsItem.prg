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

#include <QtGui/QCursor>
#include <QtGui/QGraphicsEffect>
#include <QtGui/QGraphicsWidget>
#include <QtGui/QGraphicsScene>

$deleteMethod

$prototypeV2=bool acceptDrops() const

$prototypeV2=bool acceptHoverEvents() const

$prototypeV2=bool acceptTouchEvents() const

$prototypeV2=Qt::MouseButtons acceptedMouseButtons() const

$prototypeV2=virtual void advance( int phase )

$prototypeV2=virtual QRectF boundingRect() const = 0

$prototypeV2=QRegion boundingRegion( const QTransform & itemToDeviceTransform ) const

$prototypeV2=qreal boundingRegionGranularity() const

$prototypeV2=QGraphicsItem::CacheMode cacheMode() const

$prototypeV2=QList<QGraphicsItem *> childItems() const

$prototypeV2=QRectF childrenBoundingRect() const

$prototypeV2=void clearFocus()

$prototypeV2=QPainterPath clipPath() const

$prototypeV2=virtual bool collidesWithItem( const QGraphicsItem * other, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

$prototypeV2=virtual bool collidesWithPath( const QPainterPath & path, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

$prototypeV2=QList<QGraphicsItem *> collidingItems( Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

$prototypeV2=QGraphicsItem * commonAncestorItem( const QGraphicsItem * other ) const

$prototypeV2=virtual bool contains( const QPointF & point ) const

$prototypeV2=QCursor cursor() const

$prototypeV2=QVariant data( int key ) const

$prototypeV2=QTransform deviceTransform( const QTransform & viewportTransform ) const

$prototypeV2=qreal effectiveOpacity() const

$prototype=void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible1|const QRectF &=QRectF(),int=50,int=50

$prototype=void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
$internalMethod=|void|ensureVisible,ensureVisible2|qreal,qreal,qreal,qreal,int=50,int=50

/*
[1]void ensureVisible ( const QRectF & rect = QRectF(), int xmargin = 50, int ymargin = 50 )
[2]void ensureVisible ( qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50 )
*/

HB_FUNC_STATIC( QGRAPHICSITEM_ENSUREVISIBLE )
{
  if( ISBETWEEN(0,3) && (ISQRECTF(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsItem_ensureVisible1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QGraphicsItem_ensureVisible2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=ensureVisible

$prototypeV2=bool filtersChildEvents() const

$prototypeV2=QGraphicsItem::GraphicsItemFlags flags() const

$prototypeV2=QGraphicsItem * focusItem() const

$prototypeV2=QGraphicsItem * focusProxy() const

$prototypeV2=void grabKeyboard()

$prototypeV2=void grabMouse()

$prototypeV2=QGraphicsEffect * graphicsEffect() const

$prototypeV2=QGraphicsItemGroup * group() const

$prototypeV2=bool hasCursor() const

$prototypeV2=bool hasFocus() const

$prototypeV2=void hide()

$prototypeV2=Qt::InputMethodHints inputMethodHints() const

$prototypeV2=void installSceneEventFilter( QGraphicsItem * filterItem )

$prototypeV2=bool isActive() const

$prototypeV2=bool isAncestorOf( const QGraphicsItem * child ) const

$prototypeV2=bool isClipped() const

$prototypeV2=bool isEnabled() const

$prototype=bool isObscured () const
$internalMethod=|bool|isObscured,isObscured1|

$prototype=bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|bool|isObscured,isObscured2|qreal,qreal,qreal,qreal

$prototype=bool isObscured ( const QRectF & rect ) const
$internalMethod=|bool|isObscured,isObscured3|const QRectF &

/*
[1]bool isObscured () const
[2]bool isObscured ( qreal x, qreal y, qreal w, qreal h ) const
[3]bool isObscured ( const QRectF & rect ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_ISOBSCURED )
{
  if( ISNUMPAR(0) )
  {
    QGraphicsItem_isObscured1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_isObscured2();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_isObscured3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isObscured

$prototypeV2=virtual bool isObscuredBy( const QGraphicsItem * item ) const

$prototypeV2=bool isPanel() const

$prototypeV2=bool isSelected() const

$prototypeV2=bool isUnderMouse() const

$prototypeV2=bool isVisible() const

$prototypeV2=bool isVisibleTo( const QGraphicsItem * parent ) const

$prototypeV2=bool isWidget() const

$prototypeV2=bool isWindow() const

$prototypeV2=QTransform itemTransform( const QGraphicsItem * other, bool * ok = 0 ) const

$prototype=QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
$internalMethod=|QPointF|mapFromItem,mapFromItem1|const QGraphicsItem *,const QPointF &

$prototype=QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
$internalMethod=|QPolygonF|mapFromItem,mapFromItem2|const QGraphicsItem *,const QRectF &

$prototype=QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapFromItem,mapFromItem3|const QGraphicsItem *,const QPolygonF &

$prototype=QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapFromItem,mapFromItem4|const QGraphicsItem *,const QPainterPath &

$prototype=QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapFromItem,mapFromItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

$prototype=QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
$internalMethod=|QPointF|mapFromItem,mapFromItem6|const QGraphicsItem *,qreal,qreal

/*
[1]QPointF mapFromItem ( const QGraphicsItem * item, const QPointF & point ) const
[2]QPolygonF mapFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
[3]QPolygonF mapFromItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
[4]QPainterPath mapFromItem ( const QGraphicsItem * item, const QPainterPath & path ) const
[5]QPolygonF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapFromItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    QGraphicsItem_mapFromItem1();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapFromItem2();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    QGraphicsItem_mapFromItem3();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    QGraphicsItem_mapFromItem4();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapFromItem5();
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsItem_mapFromItem6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapFromItem

$prototype=QPointF mapFromParent ( const QPointF & point ) const
$internalMethod=|QPointF|mapFromParent,mapFromParent1|const QPointF &

$prototype=QPolygonF mapFromParent ( const QRectF & rect ) const
$internalMethod=|QPolygonF|mapFromParent,mapFromParent2|const QRectF &

$prototype=QPolygonF mapFromParent ( const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapFromParent,mapFromParent3|const QPolygonF &

$prototype=QPainterPath mapFromParent ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapFromParent,mapFromParent4|const QPainterPath &

$prototype=QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapFromParent,mapFromParent5|qreal,qreal,qreal,qreal

$prototype=QPointF mapFromParent ( qreal x, qreal y ) const
$internalMethod=|QPointF|mapFromParent,mapFromParent6|qreal,qreal

/*
[1]QPointF mapFromParent ( const QPointF & point ) const
[2]QPolygonF mapFromParent ( const QRectF & rect ) const
[3]QPolygonF mapFromParent ( const QPolygonF & polygon ) const
[4]QPainterPath mapFromParent ( const QPainterPath & path ) const
[5]QPolygonF mapFromParent ( qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapFromParent ( qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapFromParent1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapFromParent2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapFromParent3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapFromParent4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapFromParent5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapFromParent6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapFromParent

$prototype=QPointF mapFromScene ( const QPointF & point ) const
$internalMethod=|QPointF|mapFromScene,mapFromScene1|const QPointF &

$prototype=QPolygonF mapFromScene ( const QRectF & rect ) const
$internalMethod=|QPolygonF|mapFromScene,mapFromScene2|const QRectF &

$prototype=QPolygonF mapFromScene ( const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapFromScene,mapFromScene3|const QPolygonF &

$prototype=QPainterPath mapFromScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapFromScene,mapFromScene4|const QPainterPath &

$prototype=QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapFromScene,mapFromScene5|qreal,qreal,qreal,qreal

$prototype=QPointF mapFromScene ( qreal x, qreal y ) const
$internalMethod=|QPointF|mapFromScene,mapFromScene6|qreal,qreal

/*
[1]QPointF mapFromScene ( const QPointF & point ) const
[2]QPolygonF mapFromScene ( const QRectF & rect ) const
[3]QPolygonF mapFromScene ( const QPolygonF & polygon ) const
[4]QPainterPath mapFromScene ( const QPainterPath & path ) const
[5]QPolygonF mapFromScene ( qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapFromScene ( qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPFROMSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapFromScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapFromScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapFromScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapFromScene4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapFromScene5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapFromScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapFromScene

$prototype=QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
$internalMethod=|QRectF|mapRectFromItem,mapRectFromItem1|const QGraphicsItem *,const QRectF &

$prototype=QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectFromItem,mapRectFromItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectFromItem ( const QGraphicsItem * item, const QRectF & rect ) const
[2]QRectF mapRectFromItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapRectFromItem1();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapRectFromItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectFromItem

$prototype=QRectF mapRectFromParent ( const QRectF & rect ) const
$internalMethod=|QRectF|mapRectFromParent,mapRectFromParent1|const QRectF &

$prototype=QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectFromParent,mapRectFromParent2|qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectFromParent ( const QRectF & rect ) const
[2]QRectF mapRectFromParent ( qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectFromParent1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectFromParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectFromParent

$prototype=QRectF mapRectFromScene ( const QRectF & rect ) const
$internalMethod=|QRectF|mapRectFromScene,mapRectFromScene1|const QRectF &

$prototype=QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectFromScene,mapRectFromScene2|qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectFromScene ( const QRectF & rect ) const
[2]QRectF mapRectFromScene ( qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTFROMSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectFromScene1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectFromScene2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectFromScene

$prototype=QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
$internalMethod=|QRectF|mapRectToItem,mapRectToItem1|const QGraphicsItem *,const QRectF &

$prototype=QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectToItem,mapRectToItem2|const QGraphicsItem *,qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectToItem ( const QGraphicsItem * item, const QRectF & rect ) const
[2]QRectF mapRectToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapRectToItem1();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapRectToItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectToItem

$prototype=QRectF mapRectToParent ( const QRectF & rect ) const
$internalMethod=|QRectF|mapRectToParent,mapRectToParent1|const QRectF &

$prototype=QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectToParent,mapRectToParent2|qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectToParent ( const QRectF & rect ) const
[2]QRectF mapRectToParent ( qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOPARENT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectToParent1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectToParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectToParent

$prototype=QRectF mapRectToScene ( const QRectF & rect ) const
$internalMethod=|QRectF|mapRectToScene,mapRectToScene1|const QRectF &

$prototype=QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QRectF|mapRectToScene,mapRectToScene2|qreal,qreal,qreal,qreal

/*
[1]QRectF mapRectToScene ( const QRectF & rect ) const
[2]QRectF mapRectToScene ( qreal x, qreal y, qreal w, qreal h ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPRECTTOSCENE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapRectToScene1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapRectToScene2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapRectToScene

$prototype=QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
$internalMethod=|QPointF|mapToItem,mapToItem1|const QGraphicsItem *,const QPointF &

$prototype=QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
$internalMethod=|QPolygonF|mapToItem,mapToItem2|const QGraphicsItem *,const QRectF &

$prototype=QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapToItem,mapToItem3|const QGraphicsItem *,const QPolygonF &

$prototype=QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapToItem,mapToItem4|const QGraphicsItem *,const QPainterPath &

$prototype=QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapToItem,mapToItem5|const QGraphicsItem *,qreal,qreal,qreal,qreal

$prototype=QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
$internalMethod=|QPointF|mapToItem,mapToItem6|const QGraphicsItem *,qreal,qreal

/*
[1]QPointF mapToItem ( const QGraphicsItem * item, const QPointF & point ) const
[2]QPolygonF mapToItem ( const QGraphicsItem * item, const QRectF & rect ) const
[3]QPolygonF mapToItem ( const QGraphicsItem * item, const QPolygonF & polygon ) const
[4]QPainterPath mapToItem ( const QGraphicsItem * item, const QPainterPath & path ) const
[5]QPolygonF mapToItem ( const QGraphicsItem * item, qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapToItem ( const QGraphicsItem * item, qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOITEM )
{
  if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOINTF(2) )
  {
    QGraphicsItem_mapToItem1();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQRECTF(2) )
  {
    QGraphicsItem_mapToItem2();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPOLYGONF(2) )
  {
    QGraphicsItem_mapToItem3();
  }
  else if( ISNUMPAR(2) && ISQGRAPHICSITEM(1) && ISQPAINTERPATH(2) )
  {
    QGraphicsItem_mapToItem4();
  }
  else if( ISNUMPAR(5) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QGraphicsItem_mapToItem5();
  }
  else if( ISNUMPAR(3) && ISQGRAPHICSITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QGraphicsItem_mapToItem6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapToItem

$prototype=QPointF mapToParent ( const QPointF & point ) const
$internalMethod=|QPointF|mapToParent,mapToParent1|const QPointF &

$prototype=QPolygonF mapToParent ( const QRectF & rect ) const
$internalMethod=|QPolygonF|mapToParent,mapToParent2|const QRectF &

$prototype=QPolygonF mapToParent ( const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapToParent,mapToParent3|const QPolygonF &

$prototype=QPainterPath mapToParent ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapToParent,mapToParent4|const QPainterPath &

$prototype=QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapToParent,mapToParent5|qreal,qreal,qreal,qreal

$prototype=QPointF mapToParent ( qreal x, qreal y ) const
$internalMethod=|QPointF|mapToParent,mapToParent6|qreal,qreal

/*
[1]QPointF mapToParent ( const QPointF & point ) const
[2]QPolygonF mapToParent ( const QRectF & rect ) const
[3]QPolygonF mapToParent ( const QPolygonF & polygon ) const
[4]QPainterPath mapToParent ( const QPainterPath & path ) const
[5]QPolygonF mapToParent ( qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapToParent ( qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOPARENT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapToParent1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapToParent2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapToParent3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapToParent4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapToParent5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapToParent6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapToParent

$prototype=QPointF mapToScene ( const QPointF & point ) const
$internalMethod=|QPointF|mapToScene,mapToScene1|const QPointF &

$prototype=QPolygonF mapToScene ( const QRectF & rect ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene2|const QRectF &

$prototype=QPolygonF mapToScene ( const QPolygonF & polygon ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene3|const QPolygonF &

$prototype=QPainterPath mapToScene ( const QPainterPath & path ) const
$internalMethod=|QPainterPath|mapToScene,mapToScene4|const QPainterPath &

$prototype=QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
$internalMethod=|QPolygonF|mapToScene,mapToScene5|qreal,qreal,qreal,qreal

$prototype=QPointF mapToScene ( qreal x, qreal y ) const
$internalMethod=|QPointF|mapToScene,mapToScene6|qreal,qreal

/*
[1]QPointF mapToScene ( const QPointF & point ) const
[2]QPolygonF mapToScene ( const QRectF & rect ) const
[3]QPolygonF mapToScene ( const QPolygonF & polygon ) const
[4]QPainterPath mapToScene ( const QPainterPath & path ) const
[5]QPolygonF mapToScene ( qreal x, qreal y, qreal w, qreal h ) const
[6]QPointF mapToScene ( qreal x, qreal y ) const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_MAPTOSCENE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_mapToScene1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsItem_mapToScene2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QGraphicsItem_mapToScene3();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QGraphicsItem_mapToScene4();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_mapToScene5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_mapToScene6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mapToScene

$prototype=void moveBy ( qreal dx, qreal dy )
$method=|void|moveBy|qreal,qreal

$prototypeV2=qreal opacity() const

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 ) = 0

$prototypeV2=QGraphicsItem * panel() const

$prototypeV2=QGraphicsItem::PanelModality panelModality() const

$prototypeV2=QGraphicsItem * parentItem() const

$prototypeV2=QGraphicsObject * parentObject() const

$prototypeV2=QGraphicsWidget * parentWidget() const

$prototypeV2=QPointF pos() const

$prototypeV2=void removeSceneEventFilter( QGraphicsItem * filterItem )

$prototypeV2=void resetTransform()

$prototypeV2=qreal rotation() const

$prototypeV2=qreal scale() const

$prototypeV2=QGraphicsScene * scene() const

$prototypeV2=QRectF sceneBoundingRect() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QTransform sceneTransform() const

$prototypeV2=void scroll( qreal dx, qreal dy, const QRectF & rect = QRectF() )

$prototypeV2=void setAcceptDrops( bool on )

$prototypeV2=void setAcceptHoverEvents( bool enabled )

$prototypeV2=void setAcceptTouchEvents( bool enabled )

$prototypeV2=void setAcceptedMouseButtons( Qt::MouseButtons buttons )

$prototypeV2=void setActive( bool active )

$prototypeV2=void setBoundingRegionGranularity( qreal granularity )

$prototypeV2=void setCacheMode( QGraphicsItem::CacheMode mode, const QSize & logicalCacheSize = QSize() )

$prototypeV2=void setCursor( const QCursor & cursor )

$prototypeV2=void setData( int key, const QVariant & value )

$prototypeV2=void setEnabled( bool enabled )

$prototypeV2=void setFiltersChildEvents( bool enabled )

$prototypeV2=void setFlag( QGraphicsItem::GraphicsItemFlag flag, bool enabled = true )

$prototypeV2=void setFlags( QGraphicsItem::GraphicsItemFlags flags )

$prototypeV2=void setFocus( Qt::FocusReason focusReason = Qt::OtherFocusReason )

$prototypeV2=void setFocusProxy( QGraphicsItem * item )

$prototypeV2=void setGraphicsEffect( QGraphicsEffect * effect )

$prototypeV2=void setGroup( QGraphicsItemGroup * group )

$prototypeV2=void setInputMethodHints( Qt::InputMethodHints hints )

$prototypeV2=void setOpacity( qreal opacity )

$prototypeV2=void setPanelModality( QGraphicsItem::PanelModality panelModality )

$prototypeV2=void setParentItem( QGraphicsItem * newParent )

$prototype=void setPos ( const QPointF & pos )
$internalMethod=|void|setPos,setPos1|const QPointF &

$prototype=void setPos ( qreal x, qreal y )
$internalMethod=|void|setPos,setPos2|qreal,qreal

/*
[1]void setPos ( const QPointF & pos )
[2]void setPos ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QGRAPHICSITEM_SETPOS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_setPos1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_setPos2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPos

$prototypeV2=void setRotation( qreal angle )

$prototypeV2=void setScale( qreal factor )

$prototypeV2=void setSelected( bool selected )

$prototypeV2=void setToolTip( const QString & toolTip )

$prototypeV2=void setTransform( const QTransform & matrix, bool combine = false )

$prototype=void setTransformOriginPoint ( const QPointF & origin )
$internalMethod=|void|setTransformOriginPoint,setTransformOriginPoint1|const QPointF &

$prototype=void setTransformOriginPoint ( qreal x, qreal y )
$internalMethod=|void|setTransformOriginPoint,setTransformOriginPoint2|qreal,qreal

/*
[1]void setTransformOriginPoint ( const QPointF & origin )
[2]void setTransformOriginPoint ( qreal x, qreal y )
*/

HB_FUNC_STATIC( QGRAPHICSITEM_SETTRANSFORMORIGINPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsItem_setTransformOriginPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsItem_setTransformOriginPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setTransformOriginPoint

$prototypeV2=void setTransformations( const QList<QGraphicsTransform *> & transformations )

$prototypeV2=void setVisible( bool visible )

$prototypeV2=void setX( qreal x )

$prototypeV2=void setY( qreal y )

$prototypeV2=void setZValue( qreal z )

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=void show()

$prototypeV2=void stackBefore( const QGraphicsItem * sibling )

$prototype=QGraphicsObject * toGraphicsObject ()
$method=|QGraphicsObject *|toGraphicsObject,toGraphicsObject1|

$prototype=const QGraphicsObject * toGraphicsObject () const
$method=|const QGraphicsObject *|toGraphicsObject,toGraphicsObject2|

%% TOCHECK:
/*
[1]QGraphicsObject * toGraphicsObject ()
[2]const QGraphicsObject * toGraphicsObject () const
*/

HB_FUNC_STATIC( QGRAPHICSITEM_TOGRAPHICSOBJECT )
{
  HB_FUNC_EXEC( QGRAPHICSITEM_TOGRAPHICSOBJECT1 );
}
$addMethod=toGraphicsObject

$prototypeV2=QString toolTip() const

$prototypeV2=QGraphicsItem * topLevelItem() const

$prototypeV2=QGraphicsWidget * topLevelWidget() const

$prototypeV2=QTransform transform() const

$prototypeV2=QPointF transformOriginPoint() const

$prototypeV2=QList<QGraphicsTransform *> transformations() const

$prototypeV2=virtual int type() const

$prototypeV2=void ungrabKeyboard()

$prototypeV2=void ungrabMouse()

$prototypeV2=void unsetCursor()

$prototype=void update ( const QRectF & rect = QRectF() )
$internalMethod=|void|update,update1|const QRectF &=QRectF()

$prototype=void update ( qreal x, qreal y, qreal width, qreal height )
$internalMethod=|void|update,update2|qreal,qreal,qreal,qreal

/*
[1]void update ( const QRectF & rect = QRectF() )
[2]void update ( qreal x, qreal y, qreal width, qreal height )
*/

HB_FUNC_STATIC( QGRAPHICSITEM_UPDATE )
{
  if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    QGraphicsItem_update1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsItem_update2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototypeV2=QGraphicsWidget * window() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$prototypeV2=qreal zValue() const

$extraMethods

#pragma ENDDUMP
