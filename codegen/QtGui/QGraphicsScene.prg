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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>
#include <QtGui/QPalette>
#include <QtGui/QGraphicsWidget>
#include <QtGui/QGraphicsTextItem>
#include <QtGui/QGraphicsProxyWidget>
#include <QtGui/QStyle>

$prototype=QGraphicsScene ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
$internalConstructor=|new2|const QRectF &,QObject *=0

$prototype=QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
$internalConstructor=|new3|qreal,qreal,qreal,qreal,QObject *=0

/*
[1]QGraphicsScene ( QObject * parent = 0 )
[2]QGraphicsScene ( const QRectF & sceneRect, QObject * parent = 0 )
[3]QGraphicsScene ( qreal x, qreal y, qreal width, qreal height, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QGraphicsScene_new1();
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QGraphicsScene_new2();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QGraphicsScene_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QGraphicsItem * activePanel() const

$prototypeV2=QGraphicsWidget * activeWindow() const

$prototype=QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsEllipseItem *|addEllipse,addEllipse2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

/*
[1]QGraphicsEllipseItem * addEllipse ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
[2]QGraphicsEllipseItem * addEllipse ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDELLIPSE )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addEllipse1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addEllipse

$prototypeV2=void addItem( QGraphicsItem * item )

$prototype=QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
$internalMethod=|QGraphicsLineItem *|addLine,addLine1|const QLineF &,const QPen &=QPen()

$prototype=QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
$internalMethod=|QGraphicsLineItem *|addLine,addLine2|qreal,qreal,qreal,qreal,const QPen &=QPen()

/*
[1]QGraphicsLineItem * addLine ( const QLineF & line, const QPen & pen = QPen() )
[2]QGraphicsLineItem * addLine ( qreal x1, qreal y1, qreal x2, qreal y2, const QPen & pen = QPen() )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDLINE )
{
  if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQPEN(2)||ISNIL(2)) )
  {
    QGraphicsScene_addLine1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) )
  {
    QGraphicsScene_addLine2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addLine

$prototypeV2=QGraphicsPathItem * addPath( const QPainterPath & path, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

$prototypeV2=QGraphicsPixmapItem * addPixmap( const QPixmap & pixmap )

$prototypeV2=QGraphicsPolygonItem * addPolygon( const QPolygonF & polygon, const QPen & pen = QPen(), const QBrush & brush = QBrush() )

$prototype=QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsRectItem *|addRect,addRect1|const QRectF &,const QPen &=QPen(),const QBrush &=QBrush()

$prototype=QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
$internalMethod=|QGraphicsRectItem *|addRect,addRect2|qreal,qreal,qreal,qreal,const QPen &=QPen(),const QBrush &=QBrush()

/*
[1]QGraphicsRectItem * addRect ( const QRectF & rect, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
[2]QGraphicsRectItem * addRect ( qreal x, qreal y, qreal w, qreal h, const QPen & pen = QPen(), const QBrush & brush = QBrush() )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_ADDRECT )
{
  if( ISBETWEEN(1,3) && ISQRECTF(1) && (ISQPEN(2)||ISNIL(2)) && (ISQBRUSH(3)||ISNIL(3)) )
  {
    QGraphicsScene_addRect1();
  }
  else if( ISBETWEEN(4,6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQPEN(5)||ISNIL(5)) && (ISQBRUSH(6)||ISNIL(6)) )
  {
    QGraphicsScene_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addRect

$prototypeV2=QGraphicsSimpleTextItem * addSimpleText( const QString & text, const QFont & font = QFont() )

$prototypeV2=QGraphicsTextItem * addText( const QString & text, const QFont & font = QFont() )

$prototypeV2=QGraphicsProxyWidget * addWidget( QWidget * widget, Qt::WindowFlags wFlags = 0 )

$prototypeV2=QBrush backgroundBrush() const

$prototypeV2=int bspTreeDepth() const

$prototypeV2=void clearFocus()

$prototypeV2=QList<QGraphicsItem *> collidingItems( const QGraphicsItem * item, Qt::ItemSelectionMode mode = Qt::IntersectsItemShape ) const

$prototypeV2=QGraphicsItemGroup * createItemGroup( const QList<QGraphicsItem *> & items )

$prototypeV2=void destroyItemGroup( QGraphicsItemGroup * group )

$prototypeV2=QGraphicsItem * focusItem() const

$prototypeV2=QFont font() const

$prototypeV2=QBrush foregroundBrush() const

$prototypeV2=bool hasFocus() const

$prototypeV2=qreal height() const

$prototypeV2=virtual QVariant inputMethodQuery( Qt::InputMethodQuery query ) const

$prototype=void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
$internalMethod=|void|invalidate,invalidate1|qreal,qreal,qreal,qreal,QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

$prototype=void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
$internalMethod=|void|invalidate,invalidate2|const QRectF &=QRectF(),QGraphicsScene::SceneLayers=QGraphicsScene::AllLayers

/*
[1]void invalidate ( qreal x, qreal y, qreal w, qreal h, SceneLayers layers = AllLayers )
[2]void invalidate ( const QRectF & rect = QRectF(), SceneLayers layers = AllLayers )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_INVALIDATE )
{
  if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QGraphicsScene_invalidate1();
  }
  else if( ISBETWEEN(0,2) && (ISQRECTF(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QGraphicsScene_invalidate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=invalidate

$prototypeV2=bool isActive() const

$prototypeV2=bool isSortCacheEnabled() const

$prototype=QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt1|const QPointF &,const QTransform &

$prototype=QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
$internalMethod=|QGraphicsItem *|itemAt,itemAt2|qreal,qreal,const QTransform &

/*
[1]QGraphicsItem * itemAt ( const QPointF & position, const QTransform & deviceTransform ) const
[2]QGraphicsItem * itemAt ( qreal x, qreal y, const QTransform & deviceTransform ) const
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMAT )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_itemAt1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=QGraphicsScene::ItemIndexMethod itemIndexMethod() const

$prototype=QList<QGraphicsItem *> items () const
$internalMethod=|QList<QGraphicsItem *>|items,items1|

$prototype=QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
$internalMethod=|QList<QGraphicsItem *>|items,items2|Qt::SortOrder

$prototype=QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
$internalMethod=|QList<QGraphicsItem *>|items,items3|const QPointF &,Qt::ItemSelectionMode,Qt::SortOrder,const QTransform &=QTransform()

$prototype=QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
$internalMethod=|QList<QGraphicsItem *>|items,items4|qreal,qreal,qreal,qreal,Qt::ItemSelectionMode,Qt::SortOrder,const QTransform &=QTransform()

$prototype=QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
$internalMethod=|QList<QGraphicsItem *>|items,items5|const QRectF &,Qt::ItemSelectionMode,Qt::SortOrder,const QTransform &=QTransform()

$prototype=QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
$internalMethod=|QList<QGraphicsItem *>|items,items6|const QPolygonF &,Qt::ItemSelectionMode,Qt::SortOrder,const QTransform &=QTransform()

$prototype=QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
$internalMethod=|QList<QGraphicsItem *>|items,items7|const QPainterPath &,Qt::ItemSelectionMode,Qt::SortOrder,const QTransform &=QTransform()

/*
[1]QList<QGraphicsItem *> items () const
[2]QList<QGraphicsItem *> items ( Qt::SortOrder order ) const
[3]QList<QGraphicsItem *> items ( const QPointF & pos, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
[4]QList<QGraphicsItem *> items ( qreal x, qreal y, qreal w, qreal h, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
[5]QList<QGraphicsItem *> items ( const QRectF & rect, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
[6]QList<QGraphicsItem *> items ( const QPolygonF & polygon, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
[7]QList<QGraphicsItem *> items ( const QPainterPath & path, Qt::ItemSelectionMode mode, Qt::SortOrder order, const QTransform & deviceTransform = QTransform() ) const
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_ITEMS )
{
  if( ISNUMPAR(0) )
  {
    QGraphicsScene_items1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsScene_items2();
  }
  else if( ISBETWEEN(3,4) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    QGraphicsScene_items3();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQTRANSFORM(7)||ISNIL(7)) )
  {
    QGraphicsScene_items4();
  }
  else if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    QGraphicsScene_items5();
  }
  else if( ISBETWEEN(3,4) && ISQPOLYGONF(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    QGraphicsScene_items6();
  }
  else if( ISBETWEEN(3,4) && ISQPAINTERPATH(1) && ISNUM(2) && ISNUM(3) && (ISQTRANSFORM(4)||ISNIL(4)) )
  {
    QGraphicsScene_items7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=items

$prototypeV2=QRectF itemsBoundingRect() const

$prototypeV2=QGraphicsItem * mouseGrabberItem() const

$prototypeV2=QPalette palette() const

$prototypeV2=void removeItem( QGraphicsItem * item )

$prototypeV2=void render( QPainter * painter, const QRectF & target = QRectF(), const QRectF & source = QRectF(), Qt::AspectRatioMode aspectRatioMode = Qt::KeepAspectRatio )

$prototypeV2=QRectF sceneRect() const

$prototypeV2=QList<QGraphicsItem *> selectedItems() const

$prototypeV2=QPainterPath selectionArea() const

$prototypeV2=bool sendEvent( QGraphicsItem * item, QEvent * event )

$prototypeV2=void setActivePanel( QGraphicsItem * item )

$prototypeV2=void setActiveWindow( QGraphicsWidget * widget )

$prototypeV2=void setBackgroundBrush( const QBrush & brush )

$prototypeV2=void setBspTreeDepth( int depth )

$prototypeV2=void setFocus( Qt::FocusReason focusReason = Qt::OtherFocusReason )

$prototypeV2=void setFocusItem( QGraphicsItem * item, Qt::FocusReason focusReason = Qt::OtherFocusReason )

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setForegroundBrush( const QBrush & brush )

$prototypeV2=void setItemIndexMethod( QGraphicsScene::ItemIndexMethod method )

$prototypeV2=void setPalette( const QPalette & palette )

$prototype=void setSceneRect ( const QRectF & rect )
$internalMethod=|void|setSceneRect,setSceneRect1|const QRectF &

$prototype=void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|setSceneRect,setSceneRect2|qreal,qreal,qreal,qreal

/*
[1]void setSceneRect ( const QRectF & rect )
[2]void setSceneRect ( qreal x, qreal y, qreal w, qreal h )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSCENERECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QGraphicsScene_setSceneRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_setSceneRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSceneRect

$prototype=void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
$internalMethod=|void|setSelectionArea,setSelectionArea1|const QPainterPath &,const QTransform &

$prototype=void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
$internalMethod=|void|setSelectionArea,setSelectionArea2|const QPainterPath &,Qt::ItemSelectionMode,const QTransform &

/*
[1]void setSelectionArea ( const QPainterPath & path, const QTransform & deviceTransform )
[2]void setSelectionArea ( const QPainterPath & path, Qt::ItemSelectionMode mode, const QTransform & deviceTransform )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_SETSELECTIONAREA )
{
  if( ISNUMPAR(2) && ISQPAINTERPATH(1) && ISQTRANSFORM(2) )
  {
    QGraphicsScene_setSelectionArea1();
  }
  else if( ISNUMPAR(3) && ISQPAINTERPATH(1) && ISNUM(2) && ISQTRANSFORM(3) )
  {
    QGraphicsScene_setSelectionArea2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSelectionArea

$prototypeV2=void setSortCacheEnabled( bool enabled )

$prototypeV2=void setStickyFocus( bool enabled )

$prototypeV2=void setStyle( QStyle * style )

$prototypeV2=bool stickyFocus() const

$prototypeV2=QStyle * style() const

$prototype=void update ( qreal x, qreal y, qreal w, qreal h )
$internalMethod=|void|update,update1|qreal,qreal,qreal,qreal

$prototype=void update ( const QRectF & rect = QRectF() )
$internalMethod=|void|update,update2|const QRectF &=QRectF()

/*
[1]void update ( qreal x, qreal y, qreal w, qreal h )
[2]void update ( const QRectF & rect = QRectF() )
*/

HB_FUNC_STATIC( QGRAPHICSSCENE_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QGraphicsScene_update1();
  }
  else if( ISBETWEEN(0,1) && (ISQRECTF(1)||ISNIL(1)) )
  {
    QGraphicsScene_update2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=update

$prototypeV2=QList<QGraphicsView *> views() const

$prototypeV2=qreal width() const

$prototypeV2=void advance()

$prototypeV2=void clear()

$prototypeV2=void clearSelection()

$beginSignals
$signal=|changed(QList<QRectF>)
$signal=|sceneRectChanged(QRectF)
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
