%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

/*
enum QWizard::WizardButton
*/
#define QWizard_BackButton                                           0
#define QWizard_NextButton                                           1
#define QWizard_CommitButton                                         2
#define QWizard_FinishButton                                         3
#define QWizard_CancelButton                                         4
#define QWizard_HelpButton                                           5
#define QWizard_CustomButton1                                        6
#define QWizard_CustomButton2                                        7
#define QWizard_CustomButton3                                        8
#define QWizard_Stretch                                              9

/*
enum QWizard::WizardOption
flags QWizard::WizardOptions
*/
#define QWizard_IndependentPages                                     0x00000001
#define QWizard_IgnoreSubTitles                                      0x00000002
#define QWizard_ExtendedWatermarkPixmap                              0x00000004
#define QWizard_NoDefaultButton                                      0x00000008
#define QWizard_NoBackButtonOnStartPage                              0x00000010
#define QWizard_NoBackButtonOnLastPage                               0x00000020
#define QWizard_DisabledBackButtonOnLastPage                         0x00000040
#define QWizard_HaveNextButtonOnLastPage                             0x00000080
#define QWizard_HaveFinishButtonOnEarlyPages                         0x00000100
#define QWizard_NoCancelButton                                       0x00000200
#define QWizard_CancelButtonOnLeft                                   0x00000400
#define QWizard_HaveHelpButton                                       0x00000800
#define QWizard_HelpButtonOnRight                                    0x00001000
#define QWizard_HaveCustomButton1                                    0x00002000
#define QWizard_HaveCustomButton2                                    0x00004000
#define QWizard_HaveCustomButton3                                    0x00008000

/*
enum QWizard::WizardPixmap
*/
#define QWizard_WatermarkPixmap                                      0
#define QWizard_LogoPixmap                                           1
#define QWizard_BannerPixmap                                         2
#define QWizard_BackgroundPixmap                                     3

/*
enum QWizard::WizardStyle
*/
#define QWizard_ClassicStyle                                         0
#define QWizard_ModernStyle                                          1
#define QWizard_MacStyle                                             2
#define QWizard_AeroStyle                                            3
