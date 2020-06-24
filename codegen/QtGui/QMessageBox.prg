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

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QPushButton>
#include <QtGui/QAbstractButton>

$prototype=QMessageBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
$internalConstructor=|new2|QMessageBox::Icon,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::NoButton,QWidget *=0,Qt::WindowFlags=Qt::Dialog OR Qt::MSWindowsFixedSizeDialogHint

/*
[1]QMessageBox ( QWidget * parent = 0 )
[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
*/

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addButton ( QAbstractButton * button, ButtonRole role )
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( const QString & text, ButtonRole role )
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( StandardButton button )
$internalMethod=|QPushButton *|addButton,addButton3|QMessageBox::StandardButton

/*
[1]void addButton ( QAbstractButton * button, ButtonRole role )
[2]QPushButton * addButton ( const QString & text, ButtonRole role )
[3]QPushButton * addButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addButton

$prototypeV2=QAbstractButton * button( QMessageBox::StandardButton which ) const

$prototypeV2=QMessageBox::ButtonRole buttonRole( QAbstractButton * button ) const

$prototypeV2=QList<QAbstractButton *> buttons() const

$prototypeV2=QAbstractButton * clickedButton() const

$prototypeV2=QPushButton * defaultButton() const

$prototypeV2=QString detailedText() const

$prototypeV2=QAbstractButton * escapeButton() const

$prototypeV2=QMessageBox::Icon icon() const

$prototypeV2=QPixmap iconPixmap() const

$prototypeV2=QString informativeText() const

$prototypeV2=void open( QObject * receiver, const char * member )

$prototypeV2=void removeButton( QAbstractButton * button )

$prototype=void setDefaultButton ( QPushButton * button )
$internalMethod=|void|setDefaultButton,setDefaultButton1|QPushButton *

$prototype=void setDefaultButton ( StandardButton button )
$internalMethod=|void|setDefaultButton,setDefaultButton2|QMessageBox::StandardButton

/*
[1]void setDefaultButton ( QPushButton * button )
[2]void setDefaultButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setDefaultButton

$prototypeV2=void setDetailedText( const QString & text )

$prototype=void setEscapeButton ( QAbstractButton * button )
$internalMethod=|void|setEscapeButton,setEscapeButton1|QAbstractButton *

$prototype=void setEscapeButton ( StandardButton button )
$internalMethod=|void|setEscapeButton,setEscapeButton2|QMessageBox::StandardButton

/*
[1]void setEscapeButton ( QAbstractButton * button )
[2]void setEscapeButton ( StandardButton button )
*/

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setEscapeButton

$prototypeV2=void setIcon( QMessageBox::Icon )

$prototypeV2=void setIconPixmap( const QPixmap & pixmap )

$prototypeV2=void setInformativeText( const QString & text )

$prototypeV2=void setStandardButtons( QMessageBox::StandardButtons buttons )

$prototypeV2=void setText( const QString & text )

$prototypeV2=void setTextFormat( Qt::TextFormat format )

$prototypeV2=void setWindowModality( Qt::WindowModality windowModality )

$prototypeV2=void setWindowTitle( const QString & title )

$prototypeV2=QMessageBox::StandardButton standardButton( QAbstractButton * button ) const

$prototypeV2=QMessageBox::StandardButtons standardButtons() const

$prototypeV2=QString text() const

$prototypeV2=Qt::TextFormat textFormat() const

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=int exec()

$prototypeV2=static void about( QWidget * parent, const QString & title, const QString & text )

$prototypeV2=static void aboutQt( QWidget * parent, const QString & title = QString() )

$prototypeV2=static QMessageBox::StandardButton critical( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )

$prototypeV2=static QMessageBox::StandardButton information( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )

$prototypeV2=static QMessageBox::StandardButton question( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )

$prototypeV2=static QMessageBox::StandardButton warning( QWidget * parent, const QString & title, const QString & text, QMessageBox::StandardButtons buttons = QMessageBox::Ok, QMessageBox::StandardButton defaultButton = QMessageBox::NoButton )

$beginSignals
$signal=|buttonClicked(QAbstractButton*)
$endSignals

#pragma ENDDUMP
