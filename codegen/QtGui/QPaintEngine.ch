%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QPaintEngine::DirtyFlag
flags QPaintEngine::DirtyFlags
*/
#define QPaintEngine_DirtyPen                                        0x0001
#define QPaintEngine_DirtyBrush                                      0x0002
#define QPaintEngine_DirtyBrushOrigin                                0x0004
#define QPaintEngine_DirtyFont                                       0x0008
#define QPaintEngine_DirtyBackground                                 0x0010
#define QPaintEngine_DirtyBackgroundMode                             0x0020
#define QPaintEngine_DirtyTransform                                  0x0040
#define QPaintEngine_DirtyClipRegion                                 0x0080
#define QPaintEngine_DirtyClipPath                                   0x0100
#define QPaintEngine_DirtyHints                                      0x0200
#define QPaintEngine_DirtyCompositionMode                            0x0400
#define QPaintEngine_DirtyClipEnabled                                0x0800
#define QPaintEngine_DirtyOpacity                                    0x1000
#define QPaintEngine_AllDirty                                        0xffff

/*
enum QPaintEngine::PaintEngineFeature
flags QPaintEngine::PaintEngineFeatures
*/
#define QPaintEngine_AlphaBlend                                      0x00000080
#define QPaintEngine_Antialiasing                                    0x00000400
#define QPaintEngine_BlendModes                                      0x00008000
#define QPaintEngine_BrushStroke                                     0x00000800
#define QPaintEngine_ConicalGradientFill                             0x00000040
#define QPaintEngine_ConstantOpacity                                 0x00001000
#define QPaintEngine_LinearGradientFill                              0x00000010
#define QPaintEngine_MaskedBrush                                     0x00002000
#define QPaintEngine_ObjectBoundingModeGradients                     0x00010000
#define QPaintEngine_PainterPaths                                    0x00000200
#define QPaintEngine_PaintOutsidePaintEvent                          0x20000000
#define QPaintEngine_PatternBrush                                    0x00000008
#define QPaintEngine_PatternTransform                                0x00000002
#define QPaintEngine_PerspectiveTransform                            0x00004000
#define QPaintEngine_PixmapTransform                                 0x00000004
#define QPaintEngine_PorterDuff                                      0x00000100
#define QPaintEngine_PrimitiveTransform                              0x00000001
#define QPaintEngine_RadialGradientFill                              0x00000020
#define QPaintEngine_RasterOpModes                                   0x00020000
#define QPaintEngine_AllFeatures                                     0xffffffff

/*
enum QPaintEngine::PolygonDrawMode
*/
#define QPaintEngine_OddEvenMode                                     0
#define QPaintEngine_WindingMode                                     1
#define QPaintEngine_ConvexMode                                      2
#define QPaintEngine_PolylineMode                                    3

/*
enum QPaintEngine::Type
*/
#define QPaintEngine_X11                                             0
#define QPaintEngine_Windows                                         1
#define QPaintEngine_MacPrinter                                      4
#define QPaintEngine_CoreGraphics                                    3
#define QPaintEngine_QuickDraw                                       2
#define QPaintEngine_QWindowSystem                                   5
#define QPaintEngine_PostScript                                      6
#define QPaintEngine_OpenGL                                          7
#define QPaintEngine_Picture                                         8
#define QPaintEngine_SVG                                             9
#define QPaintEngine_Raster                                          10
#define QPaintEngine_Direct3D                                        11
#define QPaintEngine_Pdf                                             12
#define QPaintEngine_OpenVG                                          13
#define QPaintEngine_User                                            50
#define QPaintEngine_MaxUser                                         100
#define QPaintEngine_OpenGL2                                         14
#define QPaintEngine_PaintBuffer                                     15
#define QPaintEngine_Blitter                                         16
