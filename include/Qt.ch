/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT_CH
#define QT_CH

/*
enum Qt::AlignmentFlag
flags Qt::Alignment
*/
#define Qt_AlignLeft                                       0x0001
#define Qt_AlignRight                                      0x0002
#define Qt_AlignHCenter                                    0x0004
#define Qt_AlignJustify                                    0x0008
#define Qt_AlignTop                                        0x0020
#define Qt_AlignBottom                                     0x0040
#define Qt_AlignVCenter                                    0x0080
#define Qt_AlignCenter                                     hb_bitor(Qt_AlignVCenter,Qt_AlignHCenter)
#define Qt_AlignAbsolute                                   0x0010
#define Qt_AlignLeading                                    Qt_AlignLeft
#define Qt_AlignTrailing                                   Qt_AlignRight
#define Qt_AlignHorizontal_Mask                            hb_bitor(hb_bitor(hb_bitor(hb_bitor(Qt_AlignLeft,Qt_AlignRight),Qt_AlignHCenter),Qt_AlignJustify),Qt_AlignAbsolute)
#define Qt_AlignVertical_Mask                              hb_bitor(hb_bitor(Qt_AlignTop,Qt_AlignBottom),Qt_AlignVCenter)

/*
enum Qt::AnchorAttribute
*/
#define Qt_AnchorName                                      0
#define Qt_AnchorHref                                      1

/*
enum Qt::AnchorPoint
*/
#define Qt_AnchorLeft                                      0
#define Qt_AnchorHorizontalCenter                          1
#define Qt_AnchorRight                                     2
#define Qt_AnchorTop                                       3
#define Qt_AnchorVerticalCenter                            4
#define Qt_AnchorBottom                                    5

/*
enum Qt::ApplicationAttribute
*/
#define Qt_AA_ImmediateWidgetCreation                      0
#define Qt_AA_MSWindowsUseDirect3DByDefault                1
#define Qt_AA_DontShowIconsInMenus                         2
#define Qt_AA_NativeWindows                                3
#define Qt_AA_DontCreateNativeWidgetSiblings               4
#define Qt_AA_MacPluginApplication                         5
#define Qt_AA_DontUseNativeMenuBar                         6
#define Qt_AA_MacDontSwapCtrlAndMeta                       7
#define Qt_AA_S60DontConstructApplicationPanes             8

/*
enum Qt::ArrowType
*/
#define Qt_NoArrow                                         0
#define Qt_UpArrow                                         1
#define Qt_DownArrow                                       2
#define Qt_LeftArrow                                       3
#define Qt_RightArrow                                      4

/*
enum Qt::AspectRatioMode
*/
#define Qt_IgnoreAspectRatio                               0
#define Qt_KeepAspectRatio                                 1
#define Qt_KeepAspectRatioByExpanding                      2

/*
enum Qt::Axis
*/
#define Qt_XAxis                                           0
#define Qt_YAxis                                           1
#define Qt_ZAxis                                           2

/*
enum Qt::BGMode
*/
#define Qt_TransparentMode                                 0
#define Qt_OpaqueMode                                      1

/*
enum Qt::BrushStyle
*/
#define Qt_NoBrush                                         0
#define Qt_SolidPattern                                    1
#define Qt_Dense1Pattern                                   2
#define Qt_Dense2Pattern                                   3
#define Qt_Dense3Pattern                                   4
#define Qt_Dense4Pattern                                   5
#define Qt_Dense5Pattern                                   6
#define Qt_Dense6Pattern                                   7
#define Qt_Dense7Pattern                                   8
#define Qt_HorPattern                                      9
#define Qt_VerPattern                                      10
#define Qt_CrossPattern                                    11
#define Qt_BDiagPattern                                    12
#define Qt_FDiagPattern                                    13
#define Qt_DiagCrossPattern                                14
#define Qt_LinearGradientPattern                           15
#define Qt_ConicalGradientPattern                          17
#define Qt_RadialGradientPattern                           16
#define Qt_TexturePattern                                  24

/*
enum Qt::CaseSensitivity
*/
#define Qt_CaseInsensitive                                 0
#define Qt_CaseSensitive                                   1

/*
enum Qt::CheckState
*/
#define Qt_Unchecked                                       0
#define Qt_PartiallyChecked                                1
#define Qt_Checked                                         2

/*
enum Qt::ClipOperation
*/
#define Qt_NoClip                                          0
#define Qt_ReplaceClip                                     1
#define Qt_IntersectClip                                   2
#define Qt_UniteClip                                       3

/*
enum Qt::ConnectionType
*/
#define Qt_AutoConnection                                  0
#define Qt_DirectConnection                                1
#define Qt_QueuedConnection                                2
#define Qt_BlockingQueuedConnection                        4
#define Qt_UniqueConnection                                0x80
#define Qt_AutoCompatConnection                            3

/*
enum Qt::ContextMenuPolicy
*/
#define Qt_NoContextMenu                                   0
#define Qt_PreventContextMenu                              4
#define Qt_DefaultContextMenu                              1
#define Qt_ActionsContextMenu                              2
#define Qt_CustomContextMenu                               3

/*
enum Qt::CoordinateSystem
*/
#define Qt_DeviceCoordinates                               0
#define Qt_LogicalCoordinates                              1

/*
enum Qt::Corner
*/
#define Qt_TopLeftCorner                                   0x00000
#define Qt_TopRightCorner                                  0x00001
#define Qt_BottomLeftCorner                                0x00002
#define Qt_BottomRightCorner                               0x00003

/*
enum Qt::CursorShape
*/
#define Qt_ArrowCursor                                     0
#define Qt_UpArrowCursor                                   1
#define Qt_CrossCursor                                     2
#define Qt_WaitCursor                                      3
#define Qt_IBeamCursor                                     4
#define Qt_SizeVerCursor                                   5
#define Qt_SizeHorCursor                                   6
#define Qt_SizeBDiagCursor                                 7
#define Qt_SizeFDiagCursor                                 8
#define Qt_SizeAllCursor                                   9
#define Qt_BlankCursor                                     10
#define Qt_SplitVCursor                                    11
#define Qt_SplitHCursor                                    12
#define Qt_PointingHandCursor                              13
#define Qt_ForbiddenCursor                                 14
#define Qt_OpenHandCursor                                  17
#define Qt_ClosedHandCursor                                18
#define Qt_WhatsThisCursor                                 15
#define Qt_BusyCursor                                      16
#define Qt_DragMoveCursor                                  20
#define Qt_DragCopyCursor                                  19
#define Qt_DragLinkCursor                                  21
#define Qt_BitmapCursor                                    24

/*
enum Qt::DateFormat
*/
#define Qt_TextDate                                        0
#define Qt_ISODate                                         1
#define Qt_SystemLocaleShortDate                           ?
#define Qt_SystemLocaleLongDate                            ?
#define Qt_DefaultLocaleShortDate                          ?
#define Qt_DefaultLocaleLongDate                           ?
#define Qt_SystemLocaleDate                                2
#define Qt_LocaleDate                                      ?
#define Qt_LocalDate                                       Qt_SystemLocaleDate

/*
enum Qt::DayOfWeek
*/
#define Qt_Monday                                          1
#define Qt_Tuesday                                         2
#define Qt_Wednesday                                       3
#define Qt_Thursday                                        4
#define Qt_Friday                                          5
#define Qt_Saturday                                        6
#define Qt_Sunday                                          7

/*
enum Qt::DockWidgetArea
flags Qt::DockWidgetAreas
*/
#define Qt_LeftDockWidgetArea                              0x1
#define Qt_RightDockWidgetArea                             0x2
#define Qt_TopDockWidgetArea                               0x4
#define Qt_BottomDockWidgetArea                            0x8
#define Qt_AllDockWidgetAreas                              Qt_DockWidgetArea_Mask
#define Qt_NoDockWidgetArea                                0

/*
enum Qt::DropAction
flags Qt::DropActions
*/
#define Qt_CopyAction                                      0x1
#define Qt_MoveAction                                      0x2
#define Qt_LinkAction                                      0x4
#define Qt_ActionMask                                      0xff
#define Qt_IgnoreAction                                    0x0
#define Qt_TargetMoveAction                                0x8002

/*
enum Qt::EventPriority
*/
#define Qt_HighEventPriority                               1
#define Qt_NormalEventPriority                             0
#define Qt_LowEventPriority                                -1

/*
enum Qt::FillRule
*/
#define Qt_OddEvenFill                                     0
#define Qt_WindingFill                                     1

/*
enum Qt::FocusPolicy
*/
#define Qt_TabFocus                                        0x1
#define Qt_ClickFocus                                      0x2
#define Qt_StrongFocus                                     hb_bitor(hb_bitor(Qt_TabFocus,Qt_ClickFocus),0x8)
#define Qt_WheelFocus                                      hb_bitor(Qt_StrongFocus,0x4)
#define Qt_NoFocus                                         0

/*
enum Qt::FocusReason
*/
#define Qt_MouseFocusReason                                0
#define Qt_TabFocusReason                                  1
#define Qt_BacktabFocusReason                              2
#define Qt_ActiveWindowFocusReason                         3
#define Qt_PopupFocusReason                                4
#define Qt_ShortcutFocusReason                             5
#define Qt_MenuBarFocusReason                              6
#define Qt_OtherFocusReason                                7

/*
enum Qt::GestureFlag
flags Qt::GestureFlags
*/
#define Qt_DontStartGestureOnChildren                      0x01
#define Qt_ReceivePartialGestures                          0x02
#define Qt_IgnoredGesturesPropagateToParent                0x04

/*
enum Qt::GestureState
*/
#define Qt_GestureStarted                                  1
#define Qt_GestureUpdated                                  2
#define Qt_GestureFinished                                 3
#define Qt_GestureCanceled                                 4

/*
enum Qt::GestureType
*/
#define Qt_TapGesture                                      1
#define Qt_TapAndHoldGesture                               2
#define Qt_PanGesture                                      3
#define Qt_PinchGesture                                    4
#define Qt_SwipeGesture                                    5
#define Qt_CustomGesture                                   0x0100

/*
enum Qt::GlobalColor
*/
#define Qt_white                                           3
#define Qt_black                                           2
#define Qt_red                                             7
#define Qt_darkRed                                         13
#define Qt_green                                           8
#define Qt_darkGreen                                       14
#define Qt_blue                                            9
#define Qt_darkBlue                                        15
#define Qt_cyan                                            10
#define Qt_darkCyan                                        16
#define Qt_magenta                                         11
#define Qt_darkMagenta                                     17
#define Qt_yellow                                          12
#define Qt_darkYellow                                      18
#define Qt_gray                                            5
#define Qt_darkGray                                        4
#define Qt_lightGray                                       6
#define Qt_transparent                                     19
#define Qt_color0                                          0
#define Qt_color1                                          1

/*
enum Qt::HitTestAccuracy
*/
#define Qt_ExactHit                                        0
#define Qt_FuzzyHit                                        1

/*
enum Qt::ImageConversionFlag
flags Qt::ImageConversionFlags
*/
#define Qt_AutoColor                                       0x00000000
#define Qt_ColorOnly                                       0x00000003
#define Qt_MonoOnly                                        0x00000002
#define Qt_DiffuseDither                                   0x00000000
#define Qt_OrderedDither                                   0x00000010
#define Qt_ThresholdDither                                 0x00000020
#define Qt_ThresholdAlphaDither                            0x00000000
#define Qt_OrderedAlphaDither                              0x00000004
#define Qt_DiffuseAlphaDither                              0x00000008
#define Qt_PreferDither                                    0x00000040
#define Qt_AvoidDither                                     0x00000080
#define Qt_NoOpaqueDetection                               0x00000100

/*
enum Qt::InputMethodHint
flags Qt::InputMethodHints
*/
#define Qt_ImhNone                                         0x0
#define Qt_ImhHiddenText                                   0x1
#define Qt_ImhNoAutoUppercase                              0x2
#define Qt_ImhPreferNumbers                                0x4
#define Qt_ImhPreferUppercase                              0x8
#define Qt_ImhPreferLowercase                              0x10
#define Qt_ImhNoPredictiveText                             0x20
#define Qt_ImhDigitsOnly                                   0x10000
#define Qt_ImhFormattedNumbersOnly                         0x20000
#define Qt_ImhUppercaseOnly                                0x40000
#define Qt_ImhLowercaseOnly                                0x80000
#define Qt_ImhDialableCharactersOnly                       0x100000
#define Qt_ImhEmailCharactersOnly                          0x200000
#define Qt_ImhUrlCharactersOnly                            0x400000
#define Qt_ImhExclusiveInputMask                           0xffff0000

/*
enum Qt::InputMethodQuery
*/
#define Qt_ImMicroFocus                                    0
#define Qt_ImFont                                          1
#define Qt_ImCursorPosition                                2
#define Qt_ImSurroundingText                               3
#define Qt_ImCurrentSelection                              4
#define Qt_ImMaximumTextLength                             5
#define Qt_ImAnchorPosition                                6

/*
enum Qt::ItemDataRole
*/
#define Qt_DisplayRole                                     0
#define Qt_DecorationRole                                  1
#define Qt_EditRole                                        2
#define Qt_ToolTipRole                                     3
#define Qt_StatusTipRole                                   4
#define Qt_WhatsThisRole                                   5
#define Qt_SizeHintRole                                    13
#define Qt_FontRole                                        6
#define Qt_TextAlignmentRole                               7
#define Qt_BackgroundRole                                  8
#define Qt_BackgroundColorRole                             8
#define Qt_ForegroundRole                                  9
#define Qt_TextColorRole                                   9
#define Qt_CheckStateRole                                  10
#define Qt_AccessibleTextRole                              11
#define Qt_AccessibleDescriptionRole                       12
#define Qt_UserRole                                        32

/*
enum Qt::ItemFlag
flags Qt::ItemFlags
*/
#define Qt_NoItemFlags                                     0
#define Qt_ItemIsSelectable                                1
#define Qt_ItemIsEditable                                  2
#define Qt_ItemIsDragEnabled                               4
#define Qt_ItemIsDropEnabled                               8
#define Qt_ItemIsUserCheckable                             16
#define Qt_ItemIsEnabled                                   32
#define Qt_ItemIsTristate                                  64

/*
enum Qt::ItemSelectionMode
*/
#define Qt_ContainsItemShape                               0x0
#define Qt_IntersectsItemShape                             0x1
#define Qt_ContainsItemBoundingRect                        0x2
#define Qt_IntersectsItemBoundingRect                      0x3

/*
enum Qt::Key
*/
#define Qt_Key_Escape                                      0x01000000
#define Qt_Key_Tab                                         0x01000001
#define Qt_Key_Backtab                                     0x01000002
#define Qt_Key_Backspace                                   0x01000003
#define Qt_Key_Return                                      0x01000004
#define Qt_Key_Enter                                       0x01000005
#define Qt_Key_Insert                                      0x01000006
#define Qt_Key_Delete                                      0x01000007
#define Qt_Key_Pause                                       0x01000008
#define Qt_Key_Print                                       0x01000009
#define Qt_Key_SysReq                                      0x0100000a
#define Qt_Key_Clear                                       0x0100000b
#define Qt_Key_Home                                        0x01000010
#define Qt_Key_End                                         0x01000011
#define Qt_Key_Left                                        0x01000012
#define Qt_Key_Up                                          0x01000013
#define Qt_Key_Right                                       0x01000014
#define Qt_Key_Down                                        0x01000015
#define Qt_Key_PageUp                                      0x01000016
#define Qt_Key_PageDown                                    0x01000017
#define Qt_Key_Shift                                       0x01000020
#define Qt_Key_Control                                     0x01000021
#define Qt_Key_Meta                                        0x01000022
#define Qt_Key_Alt                                         0x01000023
#define Qt_Key_AltGr                                       0x01001103
#define Qt_Key_CapsLock                                    0x01000024
#define Qt_Key_NumLock                                     0x01000025
#define Qt_Key_ScrollLock                                  0x01000026
#define Qt_Key_F1                                          0x01000030
#define Qt_Key_F2                                          0x01000031
#define Qt_Key_F3                                          0x01000032
#define Qt_Key_F4                                          0x01000033
#define Qt_Key_F5                                          0x01000034
#define Qt_Key_F6                                          0x01000035
#define Qt_Key_F7                                          0x01000036
#define Qt_Key_F8                                          0x01000037
#define Qt_Key_F9                                          0x01000038
#define Qt_Key_F10                                         0x01000039
#define Qt_Key_F11                                         0x0100003a
#define Qt_Key_F12                                         0x0100003b
#define Qt_Key_F13                                         0x0100003c
#define Qt_Key_F14                                         0x0100003d
#define Qt_Key_F15                                         0x0100003e
#define Qt_Key_F16                                         0x0100003f
#define Qt_Key_F17                                         0x01000040
#define Qt_Key_F18                                         0x01000041
#define Qt_Key_F19                                         0x01000042
#define Qt_Key_F20                                         0x01000043
#define Qt_Key_F21                                         0x01000044
#define Qt_Key_F22                                         0x01000045
#define Qt_Key_F23                                         0x01000046
#define Qt_Key_F24                                         0x01000047
#define Qt_Key_F25                                         0x01000048
#define Qt_Key_F26                                         0x01000049
#define Qt_Key_F27                                         0x0100004a
#define Qt_Key_F28                                         0x0100004b
#define Qt_Key_F29                                         0x0100004c
#define Qt_Key_F30                                         0x0100004d
#define Qt_Key_F31                                         0x0100004e
#define Qt_Key_F32                                         0x0100004f
#define Qt_Key_F33                                         0x01000050
#define Qt_Key_F34                                         0x01000051
#define Qt_Key_F35                                         0x01000052
#define Qt_Key_Super_L                                     0x01000053
#define Qt_Key_Super_R                                     0x01000054
#define Qt_Key_Menu                                        0x01000055
#define Qt_Key_Hyper_L                                     0x01000056
#define Qt_Key_Hyper_R                                     0x01000057
#define Qt_Key_Help                                        0x01000058
#define Qt_Key_Direction_L                                 0x01000059
#define Qt_Key_Direction_R                                 0x01000060
#define Qt_Key_Space                                       0x20
#define Qt_Key_Any                                         Qt_Key_Space
#define Qt_Key_Exclam                                      0x21
#define Qt_Key_QuoteDbl                                    0x22
#define Qt_Key_NumberSign                                  0x23
#define Qt_Key_Dollar                                      0x24
#define Qt_Key_Percent                                     0x25
#define Qt_Key_Ampersand                                   0x26
#define Qt_Key_Apostrophe                                  0x27
#define Qt_Key_ParenLeft                                   0x28
#define Qt_Key_ParenRight                                  0x29
#define Qt_Key_Asterisk                                    0x2a
#define Qt_Key_Plus                                        0x2b
#define Qt_Key_Comma                                       0x2c
#define Qt_Key_Minus                                       0x2d
#define Qt_Key_Period                                      0x2e
#define Qt_Key_Slash                                       0x2f
#define Qt_Key_0                                           0x30
#define Qt_Key_1                                           0x31
#define Qt_Key_2                                           0x32
#define Qt_Key_3                                           0x33
#define Qt_Key_4                                           0x34
#define Qt_Key_5                                           0x35
#define Qt_Key_6                                           0x36
#define Qt_Key_7                                           0x37
#define Qt_Key_8                                           0x38
#define Qt_Key_9                                           0x39
#define Qt_Key_Colon                                       0x3a
#define Qt_Key_Semicolon                                   0x3b
#define Qt_Key_Less                                        0x3c
#define Qt_Key_Equal                                       0x3d
#define Qt_Key_Greater                                     0x3e
#define Qt_Key_Question                                    0x3f
#define Qt_Key_At                                          0x40
#define Qt_Key_A                                           0x41
#define Qt_Key_B                                           0x42
#define Qt_Key_C                                           0x43
#define Qt_Key_D                                           0x44
#define Qt_Key_E                                           0x45
#define Qt_Key_F                                           0x46
#define Qt_Key_G                                           0x47
#define Qt_Key_H                                           0x48
#define Qt_Key_I                                           0x49
#define Qt_Key_J                                           0x4a
#define Qt_Key_K                                           0x4b
#define Qt_Key_L                                           0x4c
#define Qt_Key_M                                           0x4d
#define Qt_Key_N                                           0x4e
#define Qt_Key_O                                           0x4f
#define Qt_Key_P                                           0x50
#define Qt_Key_Q                                           0x51
#define Qt_Key_R                                           0x52
#define Qt_Key_S                                           0x53
#define Qt_Key_T                                           0x54
#define Qt_Key_U                                           0x55
#define Qt_Key_V                                           0x56
#define Qt_Key_W                                           0x57
#define Qt_Key_X                                           0x58
#define Qt_Key_Y                                           0x59
#define Qt_Key_Z                                           0x5a
#define Qt_Key_BracketLeft                                 0x5b
#define Qt_Key_Backslash                                   0x5c
#define Qt_Key_BracketRight                                0x5d
#define Qt_Key_AsciiCircum                                 0x5e
#define Qt_Key_Underscore                                  0x5f
#define Qt_Key_QuoteLeft                                   0x60
#define Qt_Key_BraceLeft                                   0x7b
#define Qt_Key_Bar                                         0x7c
#define Qt_Key_BraceRight                                  0x7d
#define Qt_Key_AsciiTilde                                  0x7e
#define Qt_Key_nobreakspace                                0x0a0
#define Qt_Key_exclamdown                                  0x0a1
#define Qt_Key_cent                                        0x0a2
#define Qt_Key_sterling                                    0x0a3
#define Qt_Key_currency                                    0x0a4
#define Qt_Key_yen                                         0x0a5
#define Qt_Key_brokenbar                                   0x0a6
#define Qt_Key_section                                     0x0a7
#define Qt_Key_diaeresis                                   0x0a8
#define Qt_Key_copyright                                   0x0a9
#define Qt_Key_ordfeminine                                 0x0aa
#define Qt_Key_guillemotleft                               0x0ab
#define Qt_Key_notsign                                     0x0ac
#define Qt_Key_hyphen                                      0x0ad
#define Qt_Key_registered                                  0x0ae
#define Qt_Key_macron                                      0x0af
#define Qt_Key_degree                                      0x0b0
#define Qt_Key_plusminus                                   0x0b1
#define Qt_Key_twosuperior                                 0x0b2
#define Qt_Key_threesuperior                               0x0b3
#define Qt_Key_acute                                       0x0b4
#define Qt_Key_mu                                          0x0b5
#define Qt_Key_paragraph                                   0x0b6
#define Qt_Key_periodcentered                              0x0b7
#define Qt_Key_cedilla                                     0x0b8
#define Qt_Key_onesuperior                                 0x0b9
#define Qt_Key_masculine                                   0x0ba
#define Qt_Key_guillemotright                              0x0bb
#define Qt_Key_onequarter                                  0x0bc
#define Qt_Key_onehalf                                     0x0bd
#define Qt_Key_threequarters                               0x0be
#define Qt_Key_questiondown                                0x0bf
#define Qt_Key_Agrave                                      0x0c0
#define Qt_Key_Aacute                                      0x0c1
#define Qt_Key_Acircumflex                                 0x0c2
#define Qt_Key_Atilde                                      0x0c3
#define Qt_Key_Adiaeresis                                  0x0c4
#define Qt_Key_Aring                                       0x0c5
#define Qt_Key_AE                                          0x0c6
#define Qt_Key_Ccedilla                                    0x0c7
#define Qt_Key_Egrave                                      0x0c8
#define Qt_Key_Eacute                                      0x0c9
#define Qt_Key_Ecircumflex                                 0x0ca
#define Qt_Key_Ediaeresis                                  0x0cb
#define Qt_Key_Igrave                                      0x0cc
#define Qt_Key_Iacute                                      0x0cd
#define Qt_Key_Icircumflex                                 0x0ce
#define Qt_Key_Idiaeresis                                  0x0cf
#define Qt_Key_ETH                                         0x0d0
#define Qt_Key_Ntilde                                      0x0d1
#define Qt_Key_Ograve                                      0x0d2
#define Qt_Key_Oacute                                      0x0d3
#define Qt_Key_Ocircumflex                                 0x0d4
#define Qt_Key_Otilde                                      0x0d5
#define Qt_Key_Odiaeresis                                  0x0d6
#define Qt_Key_multiply                                    0x0d7
#define Qt_Key_Ooblique                                    0x0d8
#define Qt_Key_Ugrave                                      0x0d9
#define Qt_Key_Uacute                                      0x0da
#define Qt_Key_Ucircumflex                                 0x0db
#define Qt_Key_Udiaeresis                                  0x0dc
#define Qt_Key_Yacute                                      0x0dd
#define Qt_Key_THORN                                       0x0de
#define Qt_Key_ssharp                                      0x0df
#define Qt_Key_division                                    0x0f7
#define Qt_Key_ydiaeresis                                  0x0ff
#define Qt_Key_Multi_key                                   0x01001120
#define Qt_Key_Codeinput                                   0x01001137
#define Qt_Key_SingleCandidate                             0x0100113c
#define Qt_Key_MultipleCandidate                           0x0100113d
#define Qt_Key_PreviousCandidate                           0x0100113e
#define Qt_Key_Mode_switch                                 0x0100117e
#define Qt_Key_Kanji                                       0x01001121
#define Qt_Key_Muhenkan                                    0x01001122
#define Qt_Key_Henkan                                      0x01001123
#define Qt_Key_Romaji                                      0x01001124
#define Qt_Key_Hiragana                                    0x01001125
#define Qt_Key_Katakana                                    0x01001126
#define Qt_Key_Hiragana_Katakana                           0x01001127
#define Qt_Key_Zenkaku                                     0x01001128
#define Qt_Key_Hankaku                                     0x01001129
#define Qt_Key_Zenkaku_Hankaku                             0x0100112a
#define Qt_Key_Touroku                                     0x0100112b
#define Qt_Key_Massyo                                      0x0100112c
#define Qt_Key_Kana_Lock                                   0x0100112d
#define Qt_Key_Kana_Shift                                  0x0100112e
#define Qt_Key_Eisu_Shift                                  0x0100112f
#define Qt_Key_Eisu_toggle                                 0x01001130
#define Qt_Key_Hangul                                      0x01001131
#define Qt_Key_Hangul_Start                                0x01001132
#define Qt_Key_Hangul_End                                  0x01001133
#define Qt_Key_Hangul_Hanja                                0x01001134
#define Qt_Key_Hangul_Jamo                                 0x01001135
#define Qt_Key_Hangul_Romaja                               0x01001136
#define Qt_Key_Hangul_Jeonja                               0x01001138
#define Qt_Key_Hangul_Banja                                0x01001139
#define Qt_Key_Hangul_PreHanja                             0x0100113a
#define Qt_Key_Hangul_PostHanja                            0x0100113b
#define Qt_Key_Hangul_Special                              0x0100113f
#define Qt_Key_Dead_Grave                                  0x01001250
#define Qt_Key_Dead_Acute                                  0x01001251
#define Qt_Key_Dead_Circumflex                             0x01001252
#define Qt_Key_Dead_Tilde                                  0x01001253
#define Qt_Key_Dead_Macron                                 0x01001254
#define Qt_Key_Dead_Breve                                  0x01001255
#define Qt_Key_Dead_Abovedot                               0x01001256
#define Qt_Key_Dead_Diaeresis                              0x01001257
#define Qt_Key_Dead_Abovering                              0x01001258
#define Qt_Key_Dead_Doubleacute                            0x01001259
#define Qt_Key_Dead_Caron                                  0x0100125a
#define Qt_Key_Dead_Cedilla                                0x0100125b
#define Qt_Key_Dead_Ogonek                                 0x0100125c
#define Qt_Key_Dead_Iota                                   0x0100125d
#define Qt_Key_Dead_Voiced_Sound                           0x0100125e
#define Qt_Key_Dead_Semivoiced_Sound                       0x0100125f
#define Qt_Key_Dead_Belowdot                               0x01001260
#define Qt_Key_Dead_Hook                                   0x01001261
#define Qt_Key_Dead_Horn                                   0x01001262
#define Qt_Key_Back                                        0x01000061
#define Qt_Key_Forward                                     0x01000062
#define Qt_Key_Stop                                        0x01000063
#define Qt_Key_Refresh                                     0x01000064
#define Qt_Key_VolumeDown                                  0x01000070
#define Qt_Key_VolumeMute                                  0x01000071
#define Qt_Key_VolumeUp                                    0x01000072
#define Qt_Key_BassBoost                                   0x01000073
#define Qt_Key_BassUp                                      0x01000074
#define Qt_Key_BassDown                                    0x01000075
#define Qt_Key_TrebleUp                                    0x01000076
#define Qt_Key_TrebleDown                                  0x01000077
#define Qt_Key_MediaPlay                                   0x01000080
#define Qt_Key_MediaStop                                   0x01000081
#define Qt_Key_MediaPrevious                               0x01000082
#define Qt_Key_MediaNext                                   0x01000083
#define Qt_Key_MediaRecord                                 0x01000084
#define Qt_Key_MediaPause                                  0x1000085
#define Qt_Key_MediaTogglePlayPause                        0x1000086
#define Qt_Key_HomePage                                    0x01000090
#define Qt_Key_Favorites                                   0x01000091
#define Qt_Key_Search                                      0x01000092
#define Qt_Key_Standby                                     0x01000093
#define Qt_Key_OpenUrl                                     0x01000094
#define Qt_Key_LaunchMail                                  0x010000a0
#define Qt_Key_LaunchMedia                                 0x010000a1
#define Qt_Key_Launch0                                     0x010000a2
#define Qt_Key_Launch1                                     0x010000a3
#define Qt_Key_Launch2                                     0x010000a4
#define Qt_Key_Launch3                                     0x010000a5
#define Qt_Key_Launch4                                     0x010000a6
#define Qt_Key_Launch5                                     0x010000a7
#define Qt_Key_Launch6                                     0x010000a8
#define Qt_Key_Launch7                                     0x010000a9
#define Qt_Key_Launch8                                     0x010000aa
#define Qt_Key_Launch9                                     0x010000ab
#define Qt_Key_LaunchA                                     0x010000ac
#define Qt_Key_LaunchB                                     0x010000ad
#define Qt_Key_LaunchC                                     0x010000ae
#define Qt_Key_LaunchD                                     0x010000af
#define Qt_Key_LaunchE                                     0x010000b0
#define Qt_Key_LaunchF                                     0x010000b1
#define Qt_Key_LaunchG                                     0x0100010e
#define Qt_Key_LaunchH                                     0x0100010f
#define Qt_Key_MonBrightnessUp                             0x010000b2
#define Qt_Key_MonBrightnessDown                           0x010000b3
#define Qt_Key_KeyboardLightOnOff                          0x010000b4
#define Qt_Key_KeyboardBrightnessUp                        0x010000b5
#define Qt_Key_KeyboardBrightnessDown                      0x010000b6
#define Qt_Key_PowerOff                                    0x010000b7
#define Qt_Key_WakeUp                                      0x010000b8
#define Qt_Key_Eject                                       0x010000b9
#define Qt_Key_ScreenSaver                                 0x010000ba
#define Qt_Key_WWW                                         0x010000bb
#define Qt_Key_Memo                                        0x010000bc
#define Qt_Key_LightBulb                                   0x010000bd
#define Qt_Key_Shop                                        0x010000be
#define Qt_Key_History                                     0x010000bf
#define Qt_Key_AddFavorite                                 0x010000c0
#define Qt_Key_HotLinks                                    0x010000c1
#define Qt_Key_BrightnessAdjust                            0x010000c2
#define Qt_Key_Finance                                     0x010000c3
#define Qt_Key_Community                                   0x010000c4
#define Qt_Key_AudioRewind                                 0x010000c5
#define Qt_Key_BackForward                                 0x010000c6
#define Qt_Key_ApplicationLeft                             0x010000c7
#define Qt_Key_ApplicationRight                            0x010000c8
#define Qt_Key_Book                                        0x010000c9
#define Qt_Key_CD                                          0x010000ca
#define Qt_Key_Calculator                                  0x010000cb
#define Qt_Key_ToDoList                                    0x010000cc
#define Qt_Key_ClearGrab                                   0x010000cd
#define Qt_Key_Close                                       0x010000ce
#define Qt_Key_Copy                                        0x010000cf
#define Qt_Key_Cut                                         0x010000d0
#define Qt_Key_Display                                     0x010000d1
#define Qt_Key_DOS                                         0x010000d2
#define Qt_Key_Documents                                   0x010000d3
#define Qt_Key_Excel                                       0x010000d4
#define Qt_Key_Explorer                                    0x010000d5
#define Qt_Key_Game                                        0x010000d6
#define Qt_Key_Go                                          0x010000d7
#define Qt_Key_iTouch                                      0x010000d8
#define Qt_Key_LogOff                                      0x010000d9
#define Qt_Key_Market                                      0x010000da
#define Qt_Key_Meeting                                     0x010000db
#define Qt_Key_MenuKB                                      0x010000dc
#define Qt_Key_MenuPB                                      0x010000dd
#define Qt_Key_MySites                                     0x010000de
#define Qt_Key_News                                        0x010000df
#define Qt_Key_OfficeHome                                  0x010000e0
#define Qt_Key_Option                                      0x010000e1
#define Qt_Key_Paste                                       0x010000e2
#define Qt_Key_Phone                                       0x010000e3
#define Qt_Key_Calendar                                    0x010000e4
#define Qt_Key_Reply                                       0x010000e5
#define Qt_Key_Reload                                      0x010000e6
#define Qt_Key_RotateWindows                               0x010000e7
#define Qt_Key_RotationPB                                  0x010000e8
#define Qt_Key_RotationKB                                  0x010000e9
#define Qt_Key_Save                                        0x010000ea
#define Qt_Key_Send                                        0x010000eb
#define Qt_Key_Spell                                       0x010000ec
#define Qt_Key_SplitScreen                                 0x010000ed
#define Qt_Key_Support                                     0x010000ee
#define Qt_Key_TaskPane                                    0x010000ef
#define Qt_Key_Terminal                                    0x010000f0
#define Qt_Key_Tools                                       0x010000f1
#define Qt_Key_Travel                                      0x010000f2
#define Qt_Key_Video                                       0x010000f3
#define Qt_Key_Word                                        0x010000f4
#define Qt_Key_Xfer                                        0x010000f5
#define Qt_Key_ZoomIn                                      0x010000f6
#define Qt_Key_ZoomOut                                     0x010000f7
#define Qt_Key_Away                                        0x010000f8
#define Qt_Key_Messenger                                   0x010000f9
#define Qt_Key_WebCam                                      0x010000fa
#define Qt_Key_MailForward                                 0x010000fb
#define Qt_Key_Pictures                                    0x010000fc
#define Qt_Key_Music                                       0x010000fd
#define Qt_Key_Battery                                     0x010000fe
#define Qt_Key_Bluetooth                                   0x010000ff
#define Qt_Key_WLAN                                        0x01000100
#define Qt_Key_UWB                                         0x01000101
#define Qt_Key_AudioForward                                0x01000102
#define Qt_Key_AudioRepeat                                 0x01000103
#define Qt_Key_AudioRandomPlay                             0x01000104
#define Qt_Key_Subtitle                                    0x01000105
#define Qt_Key_AudioCycleTrack                             0x01000106
#define Qt_Key_Time                                        0x01000107
#define Qt_Key_Hibernate                                   0x01000108
#define Qt_Key_View                                        0x01000109
#define Qt_Key_TopMenu                                     0x0100010a
#define Qt_Key_PowerDown                                   0x0100010b
#define Qt_Key_Suspend                                     0x0100010c
#define Qt_Key_ContrastAdjust                              0x0100010d
#define Qt_Key_MediaLast                                   0x0100ffff
#define Qt_Key_unknown                                     0x01ffffff
#define Qt_Key_Call                                        0x01100004
#define Qt_Key_Camera                                      0x01100020
#define Qt_Key_CameraFocus                                 0x01100021
#define Qt_Key_Context1                                    0x01100000
#define Qt_Key_Context2                                    0x01100001
#define Qt_Key_Context3                                    0x01100002
#define Qt_Key_Context4                                    0x01100003
#define Qt_Key_Flip                                        0x01100006
#define Qt_Key_Hangup                                      0x01100005
#define Qt_Key_No                                          0x01010002
#define Qt_Key_Select                                      0x01010000
#define Qt_Key_Yes                                         0x01010001
#define Qt_Key_ToggleCallHangup                            0x01100007
#define Qt_Key_VoiceDial                                   0x01100008
#define Qt_Key_LastNumberRedial                            0x01100009
#define Qt_Key_Execute                                     0x01020003
#define Qt_Key_Printer                                     0x01020002
#define Qt_Key_Play                                        0x01020005
#define Qt_Key_Sleep                                       0x01020004
#define Qt_Key_Zoom                                        0x01020006
#define Qt_Key_Cancel                                      0x01020001

/*
enum Qt::KeyboardModifier
flags Qt::KeyboardModifiers
*/
#define Qt_NoModifier                                      0x00000000
#define Qt_ShiftModifier                                   0x02000000
#define Qt_ControlModifier                                 0x04000000
#define Qt_AltModifier                                     0x08000000
#define Qt_MetaModifier                                    0x10000000
#define Qt_KeypadModifier                                  0x20000000
#define Qt_GroupSwitchModifier                             0x40000000

/*
enum Qt::LayoutDirection
*/
#define Qt_LeftToRight                                     0
#define Qt_RightToLeft                                     1
#define Qt_LayoutDirectionAuto                             2

/*
enum Qt::MaskMode
*/
#define Qt_MaskInColor                                     0
#define Qt_MaskOutColor                                    1

/*
enum Qt::MatchFlag
flags #define Qt_MatchFlags
*/
#define Qt_MatchExactly                                    0
#define Qt_MatchFixedString                                8
#define Qt_MatchContains                                   1
#define Qt_MatchStartsWith                                 2
#define Qt_MatchEndsWith                                   3
#define Qt_MatchCaseSensitive                              16
#define Qt_MatchRegExp                                     4
#define Qt_MatchWildcard                                   5
#define Qt_MatchWrap                                       32
#define Qt_MatchRecursive                                  64

/*
enum Qt::Modifier
*/
#define Qt_SHIFT                                           Qt_ShiftModifier
#define Qt_META                                            Qt_MetaModifier
#define Qt_CTRL                                            Qt_ControlModifier
#define Qt_ALT                                             Qt_AltModifier
#define Qt_UNICODE_ACCEL                                   0x00000000

/*
enum Qt::MouseButton
flags Qt::MouseButtons
*/
#define Qt_NoButton                                        0x00000000
#define Qt_LeftButton                                      0x00000001
#define Qt_RightButton                                     0x00000002
#define Qt_MidButton                                       0x00000004
#define Qt_MiddleButton                                    Qt_MidButton
#define Qt_XButton1                                        0x00000008
#define Qt_XButton2                                        0x00000010

/*
enum Qt::NavigationMode
*/
#define Qt_NavigationModeNone                              0
#define Qt_NavigationModeKeypadTabOrder                    1
#define Qt_NavigationModeKeypadDirectional                 2
#define Qt_NavigationModeCursorAuto                        3
#define Qt_NavigationModeCursorForceVisible                4

/*
enum Qt::Orientation
flags #define Qt_Orientations
*/
#define Qt_Horizontal                                      0x1
#define Qt_Vertical                                        0x2

/*
enum Qt::PenCapStyle
*/
#define Qt_FlatCap                                         0x00
#define Qt_SquareCap                                       0x10
#define Qt_RoundCap                                        0x20

/*
enum Qt::PenJoinStyle
*/
#define Qt_MiterJoin                                       0x00
#define Qt_BevelJoin                                       0x40
#define Qt_RoundJoin                                       0x80
#define Qt_SvgMiterJoin                                    0x100

/*
enum Qt::PenStyle
*/
#define Qt_NoPen                                           0
#define Qt_SolidLine                                       1
#define Qt_DashLine                                        2
#define Qt_DotLine                                         3
#define Qt_DashDotLine                                     4
#define Qt_DashDotDotLine                                  5
#define Qt_CustomDashLine                                  6

/*
enum Qt::ScrollBarPolicy
*/
#define Qt_ScrollBarAsNeeded                               0
#define Qt_ScrollBarAlwaysOff                              1
#define Qt_ScrollBarAlwaysOn                               2

/*
enum Qt::ShortcutContext
*/
#define Qt_WidgetShortcut                                  0
#define Qt_WidgetWithChildrenShortcut                      3
#define Qt_WindowShortcut                                  1
#define Qt_ApplicationShortcut                             2

/*
enum Qt::SizeHint
*/
#define Qt_MinimumSize                                     0
#define Qt_PreferredSize                                   1
#define Qt_MaximumSize                                     2
#define Qt_MinimumDescent                                  3

/*
enum Qt::SizeMode
*/
#define Qt_AbsoluteSize                                    0
#define Qt_RelativeSize                                    1

/*
enum Qt::SortOrder
*/
#define Qt_AscendingOrder                                  0
#define Qt_DescendingOrder                                 1

/*
enum Qt::TextElideMode
*/
#define Qt_ElideLeft                                       0
#define Qt_ElideRight                                      1
#define Qt_ElideMiddle                                     2
#define Qt_ElideNone                                       3

/*
enum Qt::TextFlag
*/
#define Qt_TextSingleLine                                  0x0100
#define Qt_TextDontClip                                    0x0200
#define Qt_TextExpandTabs                                  0x0400
#define Qt_TextShowMnemonic                                0x0800
#define Qt_TextWordWrap                                    0x1000
#define Qt_TextWrapAnywhere                                0x2000
#define Qt_TextHideMnemonic                                0x8000
#define Qt_TextDontPrint                                   0x4000
#define Qt_IncludeTrailingSpaces                           Qt_TextIncludeTrailingSpaces
#define Qt_TextIncludeTrailingSpaces                       0x08000000
#define Qt_TextJustificationForced                         0x10000

/*
enum Qt::TextFormat
*/
#define Qt_PlainText                                       0
#define Qt_RichText                                        1
#define Qt_AutoText                                        2
#define Qt_LogText                                         3

/*
enum Qt::TextInteractionFlag
flags #define Qt_TextInteractionFlags
*/
#define Qt_NoTextInteraction                               0
#define Qt_TextSelectableByMouse                           1
#define Qt_TextSelectableByKeyboard                        2
#define Qt_LinksAccessibleByMouse                          4
#define Qt_LinksAccessibleByKeyboard                       8
#define Qt_TextEditable                                    16
#define Qt_TextEditorInteraction                           hb_bitor(hb_bitor(Qt_TextSelectableByMouse,Qt_TextSelectableByKeyboard),Qt_TextEditable)
#define Qt_TextBrowserInteraction                          hb_bitor(hb_bitor(Qt_TextSelectableByMouse,Qt_LinksAccessibleByMouse),Qt_LinksAccessibleByKeyboard)

/*
enum Qt::TileRule
*/
#define Qt_StretchTile                                     0
#define Qt_RepeatTile                                      1
#define Qt_RoundTile                                       2

/*
enum Qt::TimeSpec
*/
#define Qt_LocalTime                                       0
#define Qt_UTC                                             1
#define Qt_OffsetFromUTC                                   2

/*
enum Qt::ToolBarArea
flags #define Qt_ToolBarAreas
*/
#define Qt_LeftToolBarArea                                 0x1
#define Qt_RightToolBarArea                                0x2
#define Qt_TopToolBarArea                                  0x4
#define Qt_BottomToolBarArea                               0x8
#define Qt_AllToolBarAreas                                 Qt_ToolBarArea_Mask
#define Qt_NoToolBarArea                                   0

/*
enum Qt::ToolButtonStyle
*/
#define Qt_ToolButtonIconOnly                              0
#define Qt_ToolButtonTextOnly                              1
#define Qt_ToolButtonTextBesideIcon                        2
#define Qt_ToolButtonTextUnderIcon                         3
#define Qt_ToolButtonFollowStyle                           4

/*
enum Qt::TouchPointState
flags #define Qt_TouchPointStates
*/
#define Qt_TouchPointPressed                               0x01
#define Qt_TouchPointMoved                                 0x02
#define Qt_TouchPointStationary                            0x04
#define Qt_TouchPointReleased                              0x08

/*
enum Qt::TransformationMode
*/
#define Qt_FastTransformation                              0
#define Qt_SmoothTransformation                            1

/*
enum Qt::UIEffect
*/
#define Qt_UI_AnimateMenu                                  1
#define Qt_UI_FadeMenu                                     2
#define Qt_UI_AnimateCombo                                 3
#define Qt_UI_AnimateTooltip                               4
#define Qt_UI_FadeTooltip                                  5
#define Qt_UI_AnimateToolBox                               6

/*
enum Qt::WhiteSpaceMode
*/
#define Qt_WhiteSpaceNormal                                0
#define Qt_WhiteSpacePre                                   1
#define Qt_WhiteSpaceNoWrap                                2

/*
enum Qt::WidgetAttribute
*/
#define Qt_WA_AcceptDrops                                  78
#define Qt_WA_AlwaysShowToolTips                           84
#define Qt_WA_ContentsPropagated                           3
#define Qt_WA_CustomWhatsThis                              47
#define Qt_WA_DeleteOnClose                                55
#define Qt_WA_Disabled                                     0
#define Qt_WA_DontShowOnScreen                             103
#define Qt_WA_ForceDisabled                                32
#define Qt_WA_ForceUpdatesDisabled                         59
#define Qt_WA_GroupLeader                                  72
#define Qt_WA_Hover                                        74
#define Qt_WA_InputMethodEnabled                           14
#define Qt_WA_KeyboardFocusChange                          77
#define Qt_WA_KeyCompression                               33
#define Qt_WA_LayoutOnEntireRect                           48
#define Qt_WA_LayoutUsesWidgetRect                         92
#define Qt_WA_MacNoClickThrough                            12
#define Qt_WA_MacOpaqueSizeGrip                            85
#define Qt_WA_MacShowFocusRect                             88
#define Qt_WA_MacNormalSize                                89
#define Qt_WA_MacSmallSize                                 90
#define Qt_WA_MacMiniSize                                  91
#define Qt_WA_MacVariableSize                              102
#define Qt_WA_MacBrushedMetal                              46
#define Qt_WA_Mapped                                       11
#define Qt_WA_MouseNoMask                                  71
#define Qt_WA_MouseTracking                                2
#define Qt_WA_Moved                                        43
#define Qt_WA_MSWindowsUseDirect3D                         94
#define Qt_WA_NoBackground                                 Qt_WA_OpaquePaintEvent
#define Qt_WA_NoChildEventsForParent                       58
#define Qt_WA_NoChildEventsFromChildren                    39
#define Qt_WA_NoMouseReplay                                54
#define Qt_WA_NoMousePropagation                           73
#define Qt_WA_TransparentForMouseEvents                    51
#define Qt_WA_NoSystemBackground                           9
#define Qt_WA_OpaquePaintEvent                             4
#define Qt_WA_OutsideWSRange                               49
#define Qt_WA_PaintOnScreen                                8
#define Qt_WA_PaintOutsidePaintEvent                       13
#define Qt_WA_PaintUnclipped                               52
#define Qt_WA_PendingMoveEvent                             34
#define Qt_WA_PendingResizeEvent                           35
#define Qt_WA_QuitOnClose                                  76
#define Qt_WA_Resized                                      42
#define Qt_WA_RightToLeft                                  56
#define Qt_WA_SetCursor                                    38
#define Qt_WA_SetFont                                      37
#define Qt_WA_SetPalette                                   36
#define Qt_WA_SetStyle                                     86
#define Qt_WA_ShowModal                                    70
#define Qt_WA_StaticContents                               5
#define Qt_WA_StyleSheet                                   97
#define Qt_WA_TranslucentBackground                        120
#define Qt_WA_UnderMouse                                   1
#define Qt_WA_UpdatesDisabled                              10
#define Qt_WA_WindowModified                               41
#define Qt_WA_WindowPropagation                            80
#define Qt_WA_MacAlwaysShowToolWindow                      96
#define Qt_WA_SetLocale                                    87
#define Qt_WA_StyledBackground                             93
#define Qt_WA_ShowWithoutActivating                        98
#define Qt_WA_NativeWindow                                 100
#define Qt_WA_DontCreateNativeAncestors                    101
#define Qt_WA_X11NetWmWindowTypeDesktop                    104
#define Qt_WA_X11NetWmWindowTypeDock                       105
#define Qt_WA_X11NetWmWindowTypeToolBar                    106
#define Qt_WA_X11NetWmWindowTypeMenu                       107
#define Qt_WA_X11NetWmWindowTypeUtility                    108
#define Qt_WA_X11NetWmWindowTypeSplash                     109
#define Qt_WA_X11NetWmWindowTypeDialog                     110
#define Qt_WA_X11NetWmWindowTypeDropDownMenu               111
#define Qt_WA_X11NetWmWindowTypePopupMenu                  112
#define Qt_WA_X11NetWmWindowTypeToolTip                    113
#define Qt_WA_X11NetWmWindowTypeNotification               114
#define Qt_WA_X11NetWmWindowTypeCombo                      115
#define Qt_WA_X11NetWmWindowTypeDND                        116
#define Qt_WA_MacFrameworkScaled                           117
#define Qt_WA_AcceptTouchEvents                            121
#define Qt_WA_TouchPadAcceptSingleTouchEvents              123
#define Qt_WA_MergeSoftkeys                                124
#define Qt_WA_MergeSoftkeysRecursively                     125
#define Qt_WA_X11DoNotAcceptFocus                          132

/*
enum Qt::WindowFrameSection
*/
#define Qt_NoSection                                       0
#define Qt_LeftSection                                     1
#define Qt_TopLeftSection                                  2
#define Qt_TopSection                                      3
#define Qt_TopRightSection                                 4
#define Qt_RightSection                                    5
#define Qt_BottomRightSection                              6
#define Qt_BottomSection                                   7
#define Qt_BottomLeftSection                               8
#define Qt_TitleBarArea                                    9

/*
enum Qt::WindowModality
*/
#define Qt_NonModal                                        0
#define Qt_WindowModal                                     1
#define Qt_ApplicationModal                                2

/*
enum Qt::WindowState
flags #define Qt_WindowStates
*/
#define Qt_WindowNoState                                   0x00000000
#define Qt_WindowMinimized                                 0x00000001
#define Qt_WindowMaximized                                 0x00000002
#define Qt_WindowFullScreen                                0x00000004
#define Qt_WindowActive                                    0x00000008

/*
enum Qt::WindowType
flags #define Qt_WindowFlags
*/
#define Qt_Widget                                          0x00000000
#define Qt_Window                                          0x00000001
#define Qt_Dialog                                          hb_bitor(0x00000002,Qt_Window)
#define Qt_Sheet                                           hb_bitor(0x00000004,Qt_Window)
#define Qt_Drawer                                          hb_bitor(0x00000006,Qt_Window)
#define Qt_Popup                                           hb_bitor(0x00000008,Qt_Window)
#define Qt_Tool                                            hb_bitor(0x0000000a,Qt_Window)
#define Qt_ToolTip                                         hb_bitor(0x0000000c,Qt_Window)
#define Qt_SplashScreen                                    hb_bitor(0x0000000e,Qt_Window)
#define Qt_Desktop                                         hb_bitor(0x00000010,Qt_Window)
#define Qt_SubWindow                                       0x00000012
#define Qt_MSWindowsFixedSizeDialogHint                    0x00000100
#define Qt_MSWindowsOwnDC                                  0x00000200
#define Qt_X11BypassWindowManagerHint                      0x00000400
#define Qt_FramelessWindowHint                             0x00000800
#define Qt_CustomizeWindowHint                             0x02000000
#define Qt_WindowTitleHint                                 0x00001000
#define Qt_WindowSystemMenuHint                            0x00002000
#define Qt_WindowMinimizeButtonHint                        0x00004000
#define Qt_WindowMaximizeButtonHint                        0x00008000
#define Qt_WindowMinMaxButtonsHint                         hb_bitor(Qt_WindowMinimizeButtonHint,Qt_WindowMaximizeButtonHint)
#define Qt_WindowCloseButtonHint                           0x08000000
#define Qt_WindowContextHelpButtonHint                     0x00010000
#define Qt_MacWindowToolBarButtonHint                      0x10000000
#define Qt_BypassGraphicsProxyWidget                       0x20000000
#define Qt_WindowShadeButtonHint                           0x00020000
#define Qt_WindowStaysOnTopHint                            0x00040000
#define Qt_WindowStaysOnBottomHint                         0x04000000
#define Qt_WindowOkButtonHint                              0x00080000
#define Qt_WindowCancelButtonHint                          0x00100000
#define Qt_WindowSoftkeysVisibleHint                       0x40000000
#define Qt_WindowSoftkeysRespondHint                       0x80000000
#define Qt_WindowType_Mask                                 0x000000ff
#define Qt_WMouseNoMask                                    0x00080000
#define Qt_WDestructiveClose                               0x00100000
#define Qt_WStaticContents                                 0x00200000
#define Qt_WGroupLeader                                    0x00400000
#define Qt_WShowModal                                      0x00800000
#define Qt_WNoMousePropagation                             0x01000000
#define Qt_WType_TopLevel                                  Qt_Window
#define Qt_WType_Dialog                                    Qt_Dialog
#define Qt_WType_Popup                                     Qt_Popup
#define Qt_WType_Desktop                                   Qt_Desktop
#define Qt_WType_Mask                                      Qt_WindowType_Mask
#define Qt_WStyle_Customize                                0
#define Qt_WStyle_NormalBorder                             0
#define Qt_WStyle_DialogBorder                             Qt_MSWindowsFixedSizeDialogHint
#define Qt_WStyle_NoBorder                                 Qt_FramelessWindowHint
#define Qt_WStyle_Title                                    Qt_WindowTitleHint
#define Qt_WStyle_SysMenu                                  Qt_WindowSystemMenuHint
#define Qt_WStyle_Minimize                                 Qt_WindowMinimizeButtonHint
#define Qt_WStyle_Maximize                                 Qt_WindowMaximizeButtonHint
#define Qt_WStyle_MinMax                                   hb_bitor(Qt_WStyle_Minimize,Qt_WStyle_Maximize)
#define Qt_WStyle_Tool                                     Qt_Tool
#define Qt_WStyle_StaysOnTop                               Qt_WindowStaysOnTopHint
#define Qt_WStyle_ContextHelp                              Qt_WindowContextHelpButtonHint
#define Qt_WPaintDesktop                                   0
#define Qt_WPaintClever                                    0
#define Qt_WX11BypassWM                                    Qt_X11BypassWindowManagerHint
#define Qt_WWinOwnDC                                       Qt_MSWindowsOwnDC
#define Qt_WMacSheet                                       Qt_Sheet
#define Qt_WMacDrawer                                      Qt_Drawer
#define Qt_WStyle_Splash                                   Qt_SplashScreen
#define Qt_WNoAutoErase                                    0
#define Qt_WRepaintNoErase                                 0
#define Qt_WNorthWestGravity                               Qt_WStaticContents
#define Qt_WType_Modal                                     hb_bitor(Qt_Dialog,Qt_WShowModal)
#define Qt_WStyle_Dialog                                   Qt_Dialog
#define Qt_WStyle_NoBorderEx                               Qt_FramelessWindowHint
#define Qt_WResizeNoErase                                  0
#define Qt_WMacNoSheet                                     0

#endif /* QT_CH */
