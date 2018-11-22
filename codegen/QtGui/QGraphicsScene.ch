%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QGraphicsScene::ItemIndexMethod
*/
#define QGraphicsScene_BspTreeIndex                                  0
#define QGraphicsScene_NoIndex                                       -1

/*
enum QGraphicsScene::SceneLayer
flags QGraphicsScene::SceneLayers
*/
#define QGraphicsScene_ItemLayer                                     0x1
#define QGraphicsScene_BackgroundLayer                               0x2
#define QGraphicsScene_ForegroundLayer                               0x4
#define QGraphicsScene_AllLayers                                     0xffff
