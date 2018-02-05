%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum QStyle::ComplexControl
*/
#define QStyle_CC_SpinBox                                            0
#define QStyle_CC_ComboBox                                           1
#define QStyle_CC_ScrollBar                                          2
#define QStyle_CC_Slider                                             3
#define QStyle_CC_ToolButton                                         4
#define QStyle_CC_TitleBar                                           5
#define QStyle_CC_Q3ListView                                         6
#define QStyle_CC_GroupBox                                           8
#define QStyle_CC_Dial                                               7
#define QStyle_CC_MdiControls                                        9
#define QStyle_CC_CustomBase                                         0xf0000000

/*
enum QStyle::ContentsType
*/
#define QStyle_CT_CheckBox                                           1
#define QStyle_CT_ComboBox                                           4
#define QStyle_CT_Q3DockWindow                                       6
#define QStyle_CT_HeaderSection                                      21
#define QStyle_CT_LineEdit                                           16
#define QStyle_CT_Menu                                               11
#define QStyle_CT_Q3Header                                           15
#define QStyle_CT_MenuBar                                            10
#define QStyle_CT_MenuBarItem                                        9
#define QStyle_CT_MenuItem                                           8
#define QStyle_CT_ProgressBar                                        7
#define QStyle_CT_PushButton                                         0
#define QStyle_CT_RadioButton                                        2
#define QStyle_CT_SizeGrip                                           18
#define QStyle_CT_Slider                                             13
#define QStyle_CT_ScrollBar                                          14
#define QStyle_CT_SpinBox                                            17
#define QStyle_CT_Splitter                                           5
#define QStyle_CT_TabBarTab                                          12
#define QStyle_CT_TabWidget                                          19
#define QStyle_CT_ToolButton                                         3
#define QStyle_CT_GroupBox                                           22
#define QStyle_CT_ItemViewItem                                       24
#define QStyle_CT_CustomBase                                         0xf0000000
#define QStyle_CT_MdiControls                                        23

/*
enum QStyle::ControlElement
*/
#define QStyle_CE_PushButton                                         0
#define QStyle_CE_PushButtonBevel                                    1
#define QStyle_CE_PushButtonLabel                                    2
#define QStyle_CE_DockWidgetTitle                                    31
#define QStyle_CE_Splitter                                           29
#define QStyle_CE_CheckBox                                           3
#define QStyle_CE_CheckBoxLabel                                      4
#define QStyle_CE_RadioButton                                        5
#define QStyle_CE_RadioButtonLabel                                   6
#define QStyle_CE_TabBarTab                                          7
#define QStyle_CE_TabBarTabShape                                     8
#define QStyle_CE_TabBarTabLabel                                     9
#define QStyle_CE_ProgressBar                                        10
#define QStyle_CE_ProgressBarGroove                                  11
#define QStyle_CE_ProgressBarContents                                12
#define QStyle_CE_ProgressBarLabel                                   13
#define QStyle_CE_ToolButtonLabel                                    22
#define QStyle_CE_MenuBarItem                                        20
#define QStyle_CE_MenuBarEmptyArea                                   21
#define QStyle_CE_MenuItem                                           14
#define QStyle_CE_MenuScroller                                       15
#define QStyle_CE_MenuTearoff                                        18
#define QStyle_CE_MenuEmptyArea                                      19
#define QStyle_CE_MenuHMargin                                        17
#define QStyle_CE_MenuVMargin                                        16
#define QStyle_CE_Q3DockWindowEmptyArea                              26
#define QStyle_CE_ToolBoxTab                                         27
#define QStyle_CE_SizeGrip                                           28
#define QStyle_CE_Header                                             23
#define QStyle_CE_HeaderSection                                      24
#define QStyle_CE_HeaderLabel                                        25
#define QStyle_CE_ScrollBarAddLine                                   32
#define QStyle_CE_ScrollBarSubLine                                   33
#define QStyle_CE_ScrollBarAddPage                                   34
#define QStyle_CE_ScrollBarSubPage                                   35
#define QStyle_CE_ScrollBarSlider                                    36
#define QStyle_CE_ScrollBarFirst                                     37
#define QStyle_CE_ScrollBarLast                                      38
#define QStyle_CE_RubberBand                                         30
#define QStyle_CE_FocusFrame                                         39
#define QStyle_CE_ItemViewItem                                       46
#define QStyle_CE_CustomBase                                         0xf0000000
#define QStyle_CE_ComboBoxLabel                                      40
#define QStyle_CE_ToolBar                                            41
#define QStyle_CE_ToolBoxTabShape                                    42
#define QStyle_CE_ToolBoxTabLabel                                    43
#define QStyle_CE_HeaderEmptyArea                                    44
#define QStyle_CE_ShapedFrame                                        47

/*
enum QStyle::PixelMetric
*/
#define QStyle_PM_ButtonMargin                                       0
#define QStyle_PM_DockWidgetTitleBarButtonMargin                     ?
#define QStyle_PM_ButtonDefaultIndicator                             1
#define QStyle_PM_MenuButtonIndicator                                2
#define QStyle_PM_ButtonShiftHorizontal                              3
#define QStyle_PM_ButtonShiftVertical                                4
#define QStyle_PM_DefaultFrameWidth                                  5
#define QStyle_PM_SpinBoxFrameWidth                                  6
#define QStyle_PM_ComboBoxFrameWidth                                 7
#define QStyle_PM_MDIFrameWidth                                      QStyle_PM_MdiSubWindowFrameWidth
#define QStyle_PM_MdiSubWindowFrameWidth                             46
#define QStyle_PM_MDIMinimizedWidth                                  QStyle_PM_MdiSubWindowMinimizedWidth
#define QStyle_PM_MdiSubWindowMinimizedWidth                         ?
#define QStyle_PM_LayoutLeftMargin                                   ?
#define QStyle_PM_LayoutTopMargin                                    ?
#define QStyle_PM_LayoutRightMargin                                  ?
#define QStyle_PM_LayoutBottomMargin                                 ?
#define QStyle_PM_LayoutHorizontalSpacing                            ?
#define QStyle_PM_LayoutVerticalSpacing                              ?
#define QStyle_PM_MaximumDragDistance                                8
#define QStyle_PM_ScrollBarExtent                                    9
#define QStyle_PM_ScrollBarSliderMin                                 10
#define QStyle_PM_SliderThickness                                    11
#define QStyle_PM_SliderControlThickness                             12
#define QStyle_PM_SliderLength                                       13
#define QStyle_PM_SliderTickmarkOffset                               14
#define QStyle_PM_SliderSpaceAvailable                               15
#define QStyle_PM_DockWidgetSeparatorExtent                          16
#define QStyle_PM_DockWidgetHandleExtent                             17
#define QStyle_PM_DockWidgetFrameWidth                               18
#define QStyle_PM_DockWidgetTitleMargin                              ?
#define QStyle_PM_MenuBarPanelWidth                                  33
#define QStyle_PM_MenuBarItemSpacing                                 34
#define QStyle_PM_MenuBarHMargin                                     36
#define QStyle_PM_MenuBarVMargin                                     35
#define QStyle_PM_ToolBarFrameWidth                                  ?
#define QStyle_PM_ToolBarHandleExtent                                ?
#define QStyle_PM_ToolBarItemMargin                                  ?
#define QStyle_PM_ToolBarItemSpacing                                 ?
#define QStyle_PM_ToolBarSeparatorExtent                             ?
#define QStyle_PM_ToolBarExtensionExtent                             ?
#define QStyle_PM_TabBarTabOverlap                                   19
#define QStyle_PM_TabBarTabHSpace                                    20
#define QStyle_PM_TabBarTabVSpace                                    21
#define QStyle_PM_TabBarBaseHeight                                   22
#define QStyle_PM_TabBarBaseOverlap                                  23
#define QStyle_PM_TabBarScrollButtonWidth                            ?
#define QStyle_PM_TabBarTabShiftHorizontal                           ?
#define QStyle_PM_TabBarTabShiftVertical                             ?
#define QStyle_PM_ProgressBarChunkWidth                              24
#define QStyle_PM_SplitterWidth                                      25
#define QStyle_PM_TitleBarHeight                                     26
#define QStyle_PM_IndicatorWidth                                     37
#define QStyle_PM_IndicatorHeight                                    38
#define QStyle_PM_ExclusiveIndicatorWidth                            39
#define QStyle_PM_ExclusiveIndicatorHeight                           40
#define QStyle_PM_MenuPanelWidth                                     30
#define QStyle_PM_MenuHMargin                                        28
#define QStyle_PM_MenuVMargin                                        29
#define QStyle_PM_MenuScrollerHeight                                 27
#define QStyle_PM_MenuTearoffHeight                                  31
#define QStyle_PM_MenuDesktopFrameWidth                              32
#define QStyle_PM_CheckListButtonSize                                41
#define QStyle_PM_CheckListControllerSize                            42
#define QStyle_PM_HeaderMarkSize                                     ?
#define QStyle_PM_HeaderGripMargin                                   ?
#define QStyle_PM_HeaderMargin                                       ?
#define QStyle_PM_SpinBoxSliderHeight                                ?
#define QStyle_PM_ToolBarIconSize                                    ?
#define QStyle_PM_SmallIconSize                                      ?
#define QStyle_PM_LargeIconSize                                      ?
#define QStyle_PM_FocusFrameHMargin                                  ?
#define QStyle_PM_FocusFrameVMargin                                  ?
#define QStyle_PM_IconViewIconSize                                   ?
#define QStyle_PM_ListViewIconSize                                   ?
#define QStyle_PM_ToolTipLabelFrameWidth                             ?
#define QStyle_PM_CheckBoxLabelSpacing                               ?
#define QStyle_PM_RadioButtonLabelSpacing                            ?
#define QStyle_PM_TabBarIconSize                                     ?
#define QStyle_PM_SizeGripSize                                       ?
#define QStyle_PM_MessageBoxIconSize                                 ?
#define QStyle_PM_ButtonIconSize                                     ?
#define QStyle_PM_TextCursorWidth                                    ?
#define QStyle_PM_TabBar_ScrollButtonOverlap                         ?
#define QStyle_PM_TabCloseIndicatorWidth                             ?
#define QStyle_PM_TabCloseIndicatorHeight                            ?
#define QStyle_PM_CustomBase                                         0xf0000000
#define QStyle_PM_DefaultTopLevelMargin                              ?
#define QStyle_PM_DefaultChildMargin                                 ?
#define QStyle_PM_DefaultLayoutSpacing                               ?
#define QStyle_PM_ScrollView_ScrollBarSpacing                        ?
#define QStyle_PM_SubMenuOverlap                                     ?

/*
enum QStyle::PrimitiveElement
*/
#define QStyle_PE_FrameStatusBar                                     12
#define QStyle_PE_PanelButtonCommand                                 ?
#define QStyle_PE_FrameDefaultButton                                 6
#define QStyle_PE_PanelButtonBevel                                   ?
#define QStyle_PE_PanelButtonTool                                    ?
#define QStyle_PE_PanelLineEdit                                      ?
#define QStyle_PE_IndicatorButtonDropDown                            ?
#define QStyle_PE_FrameFocusRect                                     8
#define QStyle_PE_IndicatorArrowUp                                   ?
#define QStyle_PE_IndicatorArrowDown                                 ?
#define QStyle_PE_IndicatorArrowRight                                ?
#define QStyle_PE_IndicatorArrowLeft                                 ?
#define QStyle_PE_IndicatorSpinUp                                    ?
#define QStyle_PE_IndicatorSpinDown                                  ?
#define QStyle_PE_IndicatorSpinPlus                                  ?
#define QStyle_PE_IndicatorSpinMinus                                 ?
#define QStyle_PE_IndicatorItemViewItemCheck                         QStyle_PE_IndicatorViewItemCheck
#define QStyle_PE_IndicatorCheckBox                                  ?
#define QStyle_PE_IndicatorRadioButton                               ?
#define QStyle_PE_Q3DockWindowSeparator                              3
#define QStyle_PE_IndicatorDockWidgetResizeHandle                    ?
#define QStyle_PE_Frame                                              5
#define QStyle_PE_FrameMenu                                          11
#define QStyle_PE_PanelMenuBar                                       ?
#define QStyle_PE_PanelScrollAreaCorner                              ?
#define QStyle_PE_FrameDockWidget                                    7
#define QStyle_PE_FrameTabWidget                                     ?
#define QStyle_PE_FrameLineEdit                                      10
#define QStyle_PE_FrameGroupBox                                      9
#define QStyle_PE_FrameButtonBevel                                   ?
#define QStyle_PE_FrameButtonTool                                    ?
#define QStyle_PE_IndicatorHeaderArrow                               ?
#define QStyle_PE_FrameStatusBarItem                                 QStyle_PE_FrameStatusBar
#define QStyle_PE_FrameWindow                                        ?
#define QStyle_PE_Q3Separator                                        4
#define QStyle_PE_IndicatorMenuCheckMark                             ?
#define QStyle_PE_IndicatorProgressChunk                             ?
#define QStyle_PE_Q3CheckListController                              0
#define QStyle_PE_Q3CheckListIndicator                               2
#define QStyle_PE_Q3CheckListExclusiveIndicator                      1
#define QStyle_PE_IndicatorBranch                                    ?
#define QStyle_PE_IndicatorToolBarHandle                             ?
#define QStyle_PE_IndicatorToolBarSeparator                          ?
#define QStyle_PE_PanelToolBar                                       ?
#define QStyle_PE_PanelTipLabel                                      ?
#define QStyle_PE_FrameTabBarBase                                    ?
#define QStyle_PE_IndicatorTabTear                                   ?
#define QStyle_PE_IndicatorColumnViewArrow                           ?
#define QStyle_PE_Widget                                             ?
#define QStyle_PE_CustomBase                                         0xf000000
#define QStyle_PE_IndicatorItemViewItemDrop                          ?
#define QStyle_PE_PanelItemViewItem                                  ?
#define QStyle_PE_PanelItemViewRow                                   ?
#define QStyle_PE_PanelStatusBar                                     ?
#define QStyle_PE_IndicatorTabClose                                  ?
#define QStyle_PE_PanelMenu                                          ?

/*
enum QStyle::RequestSoftwareInputPanel
*/
#define QStyle_RSIP_OnMouseClickAndAlreadyFocused                    0
#define QStyle_RSIP_OnMouseClick                                     1

/*
enum QStyle::StandardPixmap
*/
#define QStyle_SP_TitleBarMinButton                                  1
#define QStyle_SP_TitleBarMenuButton                                 0
#define QStyle_SP_TitleBarMaxButton                                  2
#define QStyle_SP_TitleBarCloseButton                                3
#define QStyle_SP_TitleBarNormalButton                               4
#define QStyle_SP_TitleBarShadeButton                                5
#define QStyle_SP_TitleBarUnshadeButton                              6
#define QStyle_SP_TitleBarContextHelpButton                          7
#define QStyle_SP_MessageBoxInformation                              9
#define QStyle_SP_MessageBoxWarning                                  10
#define QStyle_SP_MessageBoxCritical                                 11
#define QStyle_SP_MessageBoxQuestion                                 12
#define QStyle_SP_DesktopIcon                                        13
#define QStyle_SP_TrashIcon                                          14
#define QStyle_SP_ComputerIcon                                       15
#define QStyle_SP_DriveFDIcon                                        16
#define QStyle_SP_DriveHDIcon                                        17
#define QStyle_SP_DriveCDIcon                                        18
#define QStyle_SP_DriveDVDIcon                                       19
#define QStyle_SP_DriveNetIcon                                       20
#define QStyle_SP_DirHomeIcon                                        55
#define QStyle_SP_DirOpenIcon                                        21
#define QStyle_SP_DirClosedIcon                                      22
#define QStyle_SP_DirIcon                                            37
#define QStyle_SP_DirLinkIcon                                        23
#define QStyle_SP_FileIcon                                           24
#define QStyle_SP_FileLinkIcon                                       25
#define QStyle_SP_FileDialogStart                                    28
#define QStyle_SP_FileDialogEnd                                      29
#define QStyle_SP_FileDialogToParent                                 30
#define QStyle_SP_FileDialogNewFolder                                31
#define QStyle_SP_FileDialogDetailedView                             32
#define QStyle_SP_FileDialogInfoView                                 33
#define QStyle_SP_FileDialogContentsView                             34
#define QStyle_SP_FileDialogListView                                 35
#define QStyle_SP_FileDialogBack                                     36
#define QStyle_SP_DockWidgetCloseButton                              8
#define QStyle_SP_ToolBarHorizontalExtensionButton                   26
#define QStyle_SP_ToolBarVerticalExtensionButton                     27
#define QStyle_SP_DialogOkButton                                     38
#define QStyle_SP_DialogCancelButton                                 39
#define QStyle_SP_DialogHelpButton                                   40
#define QStyle_SP_DialogOpenButton                                   41
#define QStyle_SP_DialogSaveButton                                   42
#define QStyle_SP_DialogCloseButton                                  43
#define QStyle_SP_DialogApplyButton                                  44
#define QStyle_SP_DialogResetButton                                  45
#define QStyle_SP_DialogDiscardButton                                46
#define QStyle_SP_DialogYesButton                                    47
#define QStyle_SP_DialogNoButton                                     48
#define QStyle_SP_ArrowUp                                            49
#define QStyle_SP_ArrowDown                                          50
#define QStyle_SP_ArrowLeft                                          51
#define QStyle_SP_ArrowRight                                         52
#define QStyle_SP_ArrowBack                                          53
#define QStyle_SP_ArrowForward                                       54
#define QStyle_SP_CommandLink                                        56
#define QStyle_SP_VistaShield                                        57
#define QStyle_SP_BrowserReload                                      58
#define QStyle_SP_BrowserStop                                        59
#define QStyle_SP_MediaPlay                                          60
#define QStyle_SP_MediaStop                                          61
#define QStyle_SP_MediaPause                                         62
#define QStyle_SP_MediaSkipForward                                   63
#define QStyle_SP_MediaSkipBackward                                  64
#define QStyle_SP_MediaSeekForward                                   65
#define QStyle_SP_MediaSeekBackward                                  66
#define QStyle_SP_MediaVolume                                        67
#define QStyle_SP_MediaVolumeMuted                                   68
#define QStyle_SP_CustomBase                                         0xf0000000

/*
enum QStyle::StateFlag
flags QStyle::State
*/
#define QStyle_State_None                                            0x00000000
#define QStyle_State_Active                                          0x00010000
#define QStyle_State_AutoRaise                                       0x00001000
#define QStyle_State_Children                                        0x00080000
#define QStyle_State_DownArrow                                       0x00000040
#define QStyle_State_Editing                                         0x00400000
#define QStyle_State_Enabled                                         0x00000001
#define QStyle_State_HasEditFocus                                    0x01000000
#define QStyle_State_HasFocus                                        0x00000100
#define QStyle_State_Horizontal                                      0x00000080
#define QStyle_State_KeyboardFocusChange                             0x00800000
#define QStyle_State_MouseOver                                       0x00002000
#define QStyle_State_NoChange                                        0x00000010
#define QStyle_State_Off                                             0x00000008
#define QStyle_State_On                                              0x00000020
#define QStyle_State_Raised                                          0x00000002
#define QStyle_State_ReadOnly                                        0x02000000
#define QStyle_State_Selected                                        0x00008000
#define QStyle_State_Item                                            0x00100000
#define QStyle_State_Open                                            0x00040000
#define QStyle_State_Sibling                                         0x00200000
#define QStyle_State_Sunken                                          0x00000004
#define QStyle_State_UpArrow                                         0x00004000
#define QStyle_State_Mini                                            0x08000000
#define QStyle_State_Small                                           0x04000000

/*
enum QStyle::StyleHint
*/
#define QStyle_SH_EtchDisabledText                                   0
#define QStyle_SH_DitherDisabledText                                 1
#define QStyle_SH_GUIStyle                                           0x00000100
#define QStyle_SH_ScrollBar_ContextMenu                              ?
#define QStyle_SH_ScrollBar_MiddleClickAbsolutePosition              2
#define QStyle_SH_ScrollBar_LeftClickAbsolutePosition                ?
#define QStyle_SH_ScrollBar_ScrollWhenPointerLeavesControl           3
#define QStyle_SH_ScrollBar_RollBetweenButtons                       ?
#define QStyle_SH_TabBar_Alignment                                   5
#define QStyle_SH_Header_ArrowAlignment                              6
#define QStyle_SH_Slider_SnapToValue                                 7
#define QStyle_SH_Slider_SloppyKeyEvents                             8
#define QStyle_SH_ProgressDialog_CenterCancelButton                  9
#define QStyle_SH_ProgressDialog_TextLabelAlignment                  10
#define QStyle_SH_PrintDialog_RightAlignButtons                      11
#define QStyle_SH_MainWindow_SpaceBelowMenuBar                       12
#define QStyle_SH_FontDialog_SelectAssociatedText                    13
#define QStyle_SH_Menu_KeyboardSearch                                ?
#define QStyle_SH_Menu_AllowActiveAndDisabled                        14
#define QStyle_SH_Menu_SpaceActivatesItem                            15
#define QStyle_SH_Menu_SubMenuPopupDelay                             16
#define QStyle_SH_Menu_Scrollable                                    ?
#define QStyle_SH_Menu_SloppySubMenus                                ?
#define QStyle_SH_ScrollView_FrameOnlyAroundContents                 17
#define QStyle_SH_MenuBar_AltKeyNavigation                           18
#define QStyle_SH_ComboBox_ListMouseTracking                         19
#define QStyle_SH_Menu_MouseTracking                                 20
#define QStyle_SH_MenuBar_MouseTracking                              21
#define QStyle_SH_Menu_FillScreenWithScroll                          ?
#define QStyle_SH_Menu_SelectionWrap                                 ?
#define QStyle_SH_ItemView_ChangeHighlightOnFocus                    22
#define QStyle_SH_Widget_ShareActivation                             23
#define QStyle_SH_TabBar_SelectMouseType                             4
#define QStyle_SH_Q3ListViewExpand_SelectMouseType                   ?
#define QStyle_SH_TabBar_PreferNoArrows                              ?
#define QStyle_SH_ComboBox_Popup                                     25
#define QStyle_SH_Workspace_FillSpaceOnMaximize                      24
#define QStyle_SH_TitleBar_NoBorder                                  26
#define QStyle_SH_ScrollBar_StopMouseOverSlider                      QStyle_SH_Slider_StopMouseOverSlider
#define QStyle_SH_Slider_StopMouseOverSlider                         27
#define QStyle_SH_BlinkCursorWhenTextSelected                        ?
#define QStyle_SH_RichText_FullWidthSelection                        ?
#define QStyle_SH_GroupBox_TextLabelVerticalAlignment                ?
#define QStyle_SH_GroupBox_TextLabelColor                            ?
#define QStyle_SH_DialogButtons_DefaultButton                        ?
#define QStyle_SH_ToolBox_SelectedPageTitleBold                      ?
#define QStyle_SH_LineEdit_PasswordCharacter                         ?
#define QStyle_SH_Table_GridLineColor                                ?
#define QStyle_SH_UnderlineShortcut                                  ?
#define QStyle_SH_SpellCheckUnderlineStyle                           ?
#define QStyle_SH_SpinBox_AnimateButton                              ?
#define QStyle_SH_SpinBox_KeyPressAutoRepeatRate                     ?
#define QStyle_SH_SpinBox_ClickAutoRepeatRate                        ?
#define QStyle_SH_SpinBox_ClickAutoRepeatThreshold                   ?
#define QStyle_SH_ToolTipLabel_Opacity                               ?
#define QStyle_SH_DrawMenuBarSeparator                               ?
#define QStyle_SH_TitleBar_ModifyNotification                        ?
#define QStyle_SH_Button_FocusPolicy                                 ?
#define QStyle_SH_CustomBase                                         0xf0000000
#define QStyle_SH_MenuBar_DismissOnSecondClick                       ?
#define QStyle_SH_MessageBox_UseBorderForButtonSpacing               ?
#define QStyle_SH_MessageBox_CenterButtons                           ?
#define QStyle_SH_MessageBox_TextInteractionFlags                    ?
#define QStyle_SH_TitleBar_AutoRaise                                 ?
#define QStyle_SH_ToolButton_PopupDelay                              ?
#define QStyle_SH_FocusFrame_Mask                                    ?
#define QStyle_SH_RubberBand_Mask                                    ?
#define QStyle_SH_WindowFrame_Mask                                   ?
#define QStyle_SH_SpinControls_DisableOnBounds                       ?
#define QStyle_SH_Dial_BackgroundRole                                ?
#define QStyle_SH_ScrollBar_BackgroundMode                           ?
#define QStyle_SH_ComboBox_LayoutDirection                           ?
#define QStyle_SH_ItemView_EllipsisLocation                          ?
#define QStyle_SH_ItemView_ShowDecorationSelected                    ?
#define QStyle_SH_ItemView_ActivateItemOnSingleClick                 ?
#define QStyle_SH_Slider_AbsoluteSetButtons                          ?
#define QStyle_SH_Slider_PageSetButtons                              ?
#define QStyle_SH_TabBar_ElideMode                                   ?
#define QStyle_SH_DialogButtonLayout                                 ?
#define QStyle_SH_WizardStyle                                        ?
#define QStyle_SH_FormLayoutWrapPolicy                               ?
#define QStyle_SH_FormLayoutFieldGrowthPolicy                        ?
#define QStyle_SH_FormLayoutFormAlignment                            ?
#define QStyle_SH_FormLayoutLabelAlignment                           ?
#define QStyle_SH_ItemView_ArrowKeysNavigateIntoChildren             ?
#define QStyle_SH_ComboBox_PopupFrameStyle                           ?
#define QStyle_SH_DialogButtonBox_ButtonsHaveIcons                   ?
#define QStyle_SH_ItemView_MovementWithoutUpdatingSelection          ?
#define QStyle_SH_ToolTip_Mask                                       ?
#define QStyle_SH_FocusFrame_AboveWidget                             ?
#define QStyle_SH_TextControl_FocusIndicatorTextCharFormat           ?
#define QStyle_SH_Menu_FlashTriggeredItem                            ?
#define QStyle_SH_Menu_FadeOutOnHide                                 ?
#define QStyle_SH_TabWidget_DefaultTabPosition                       ?
#define QStyle_SH_ToolBar_Movable                                    ?
#define QStyle_SH_ItemView_PaintAlternatingRowColorsForEmptyArea     ?
#define QStyle_SH_Menu_Mask                                          ?
#define QStyle_SH_ItemView_DrawDelegateFrame                         ?
#define QStyle_SH_TabBar_CloseButtonPosition                         ?
#define QStyle_SH_DockWidget_ButtonsHaveFrame                        ?
#define QStyle_SH_ToolButtonStyle                                    ?
#define QStyle_SH_RequestSoftwareInputPanel                          ?

/*
enum QStyle::SubControl
flags QStyle::SubControls
*/
#define QStyle_SC_None                                               0x00000000
#define QStyle_SC_ScrollBarAddLine                                   0x00000001
#define QStyle_SC_ScrollBarSubLine                                   0x00000002
#define QStyle_SC_ScrollBarAddPage                                   0x00000004
#define QStyle_SC_ScrollBarSubPage                                   0x00000008
#define QStyle_SC_ScrollBarFirst                                     0x00000010
#define QStyle_SC_ScrollBarLast                                      0x00000020
#define QStyle_SC_ScrollBarSlider                                    0x00000040
#define QStyle_SC_ScrollBarGroove                                    0x00000080
#define QStyle_SC_SpinBoxUp                                          0x00000001
#define QStyle_SC_SpinBoxDown                                        0x00000002
#define QStyle_SC_SpinBoxFrame                                       0x00000004
#define QStyle_SC_SpinBoxEditField                                   0x00000008
#define QStyle_SC_ComboBoxEditField                                  0x00000002
#define QStyle_SC_ComboBoxArrow                                      0x00000004
#define QStyle_SC_ComboBoxFrame                                      0x00000001
#define QStyle_SC_ComboBoxListBoxPopup                               0x00000008
#define QStyle_SC_SliderGroove                                       0x00000001
#define QStyle_SC_SliderHandle                                       0x00000002
#define QStyle_SC_SliderTickmarks                                    0x00000004
#define QStyle_SC_ToolButton                                         0x00000001
#define QStyle_SC_ToolButtonMenu                                     0x00000002
#define QStyle_SC_TitleBarSysMenu                                    0x00000001
#define QStyle_SC_TitleBarMinButton                                  0x00000002
#define QStyle_SC_TitleBarMaxButton                                  0x00000004
#define QStyle_SC_TitleBarCloseButton                                0x00000008
#define QStyle_SC_TitleBarLabel                                      0x00000100
#define QStyle_SC_TitleBarNormalButton                               0x00000010
#define QStyle_SC_TitleBarShadeButton                                0x00000020
#define QStyle_SC_TitleBarUnshadeButton                              0x00000040
#define QStyle_SC_TitleBarContextHelpButton                          0x00000080
#define QStyle_SC_Q3ListView                                         0x00000001
#define QStyle_SC_Q3ListViewExpand                                   0x00000004
#define QStyle_SC_DialHandle                                         0x00000002
#define QStyle_SC_DialGroove                                         0x00000001
#define QStyle_SC_DialTickmarks                                      0x00000004
#define QStyle_SC_GroupBoxFrame                                      0x00000008
#define QStyle_SC_GroupBoxLabel                                      0x00000002
#define QStyle_SC_GroupBoxCheckBox                                   0x00000001
#define QStyle_SC_GroupBoxContents                                   0x00000004
#define QStyle_SC_MdiNormalButton                                    0x00000002
#define QStyle_SC_MdiMinButton                                       0x00000001
#define QStyle_SC_MdiCloseButton                                     0x00000004
#define QStyle_SC_All                                                0xffffffff

/*
enum QStyle::SubElement
*/
#define QStyle_SE_PushButtonContents                                 0
#define QStyle_SE_PushButtonFocusRect                                1
#define QStyle_SE_PushButtonLayoutItem                               ?
#define QStyle_SE_CheckBoxIndicator                                  2
#define QStyle_SE_CheckBoxContents                                   3
#define QStyle_SE_CheckBoxFocusRect                                  4
#define QStyle_SE_CheckBoxClickRect                                  5
#define QStyle_SE_CheckBoxLayoutItem                                 ?
#define QStyle_SE_DateTimeEditLayoutItem                             ?
#define QStyle_SE_RadioButtonIndicator                               6
#define QStyle_SE_RadioButtonContents                                7
#define QStyle_SE_RadioButtonFocusRect                               8
#define QStyle_SE_RadioButtonClickRect                               9
#define QStyle_SE_RadioButtonLayoutItem                              ?
#define QStyle_SE_ComboBoxFocusRect                                  10
#define QStyle_SE_SliderFocusRect                                    11
#define QStyle_SE_SliderLayoutItem                                   ?
#define QStyle_SE_SpinBoxLayoutItem                                  ?
#define QStyle_SE_Q3DockWindowHandleRect                             12
#define QStyle_SE_ProgressBarGroove                                  13
#define QStyle_SE_ProgressBarContents                                14
#define QStyle_SE_ProgressBarLabel                                   15
#define QStyle_SE_ProgressBarLayoutItem                              ?
#define QStyle_SE_FrameContents                                      ?
#define QStyle_SE_ShapedFrameContents                                ?
#define QStyle_SE_FrameLayoutItem                                    ?
#define QStyle_SE_HeaderArrow                                        27
#define QStyle_SE_HeaderLabel                                        26
#define QStyle_SE_LabelLayoutItem                                    ?
#define QStyle_SE_LineEditContents                                   ?
#define QStyle_SE_TabWidgetLeftCorner                                31
#define QStyle_SE_TabWidgetRightCorner                               32
#define QStyle_SE_TabWidgetTabBar                                    28
#define QStyle_SE_TabWidgetTabContents                               30
#define QStyle_SE_TabWidgetTabPane                                   29
#define QStyle_SE_TabWidgetLayoutItem                                ?
#define QStyle_SE_ToolBoxTabContents                                 25
#define QStyle_SE_ToolButtonLayoutItem                               ?
#define QStyle_SE_ItemViewItemCheckIndicator                         QStyle_SE_ViewItemCheckIndicator
#define QStyle_SE_TabBarTearIndicator                                ?
#define QStyle_SE_TreeViewDisclosureItem                             ?
#define QStyle_SE_DialogButtonBoxLayoutItem                          ?
#define QStyle_SE_GroupBoxLayoutItem                                 ?
#define QStyle_SE_CustomBase                                         0xf0000000
#define QStyle_SE_DockWidgetFloatButton                              ?
#define QStyle_SE_DockWidgetTitleBarText                             ?
#define QStyle_SE_DockWidgetCloseButton                              ?
#define QStyle_SE_DockWidgetIcon                                     ?
#define QStyle_SE_ComboBoxLayoutItem                                 ?
#define QStyle_SE_ItemViewItemDecoration                             ?
#define QStyle_SE_ItemViewItemText                                   ?
#define QStyle_SE_ItemViewItemFocusRect                              ?
#define QStyle_SE_TabBarTabLeftButton                                ?
#define QStyle_SE_TabBarTabRightButton                               ?
#define QStyle_SE_TabBarTabText                                      ?
#define QStyle_SE_ToolBarHandle                                      ?
