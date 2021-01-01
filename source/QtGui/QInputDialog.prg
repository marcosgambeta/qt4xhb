/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QInputDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD cancelButtonText
   METHOD comboBoxItems
   METHOD doubleDecimals
   METHOD doubleMaximum
   METHOD doubleMinimum
   METHOD doubleValue
   METHOD inputMode
   METHOD intMaximum
   METHOD intMinimum
   METHOD intStep
   METHOD intValue
   METHOD isComboBoxEditable
   METHOD labelText
   METHOD okButtonText
   METHOD open
   METHOD options
   METHOD setCancelButtonText
   METHOD setComboBoxEditable
   METHOD setComboBoxItems
   METHOD setDoubleDecimals
   METHOD setDoubleMaximum
   METHOD setDoubleMinimum
   METHOD setDoubleRange
   METHOD setDoubleValue
   METHOD setInputMode
   METHOD setIntMaximum
   METHOD setIntMinimum
   METHOD setIntRange
   METHOD setIntStep
   METHOD setIntValue
   METHOD setLabelText
   METHOD setOkButtonText
   METHOD setOption
   METHOD setOptions
   METHOD setTextEchoMode
   METHOD setTextValue
   METHOD testOption
   METHOD textEchoMode
   METHOD textValue
   METHOD done
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD getDouble
   METHOD getInt
   METHOD getItem
   METHOD getText

   METHOD onDoubleValueChanged
   METHOD onDoubleValueSelected
   METHOD onIntValueChanged
   METHOD onIntValueSelected
   METHOD onTextValueChanged
   METHOD onTextValueSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QInputDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QInputDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QInputDialog( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_NEW )
{
  if( ISBETWEEN( 0, 2 ) && ( ISQWIDGET( 1 ) || ISNIL( 1 ) ) && ISOPTNUM( 2 ) )
  {
    QInputDialog * obj = new QInputDialog( OPQWIDGET( 1, 0 ), ISNIL( 2 )? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 2 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINPUTDIALOG_DELETE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString cancelButtonText() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_CANCELBUTTONTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->cancelButtonText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList comboBoxItems() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_COMBOBOXITEMS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRINGLIST( obj->comboBoxItems() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int doubleDecimals() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEDECIMALS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->doubleDecimals() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
double doubleMaximum() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMAXIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RDOUBLE( obj->doubleMaximum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
double doubleMinimum() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMINIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RDOUBLE( obj->doubleMinimum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
double doubleValue() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RDOUBLE( obj->doubleValue() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QInputDialog::InputMode inputMode() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INPUTMODE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->inputMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int intMaximum() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMAXIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->intMaximum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int intMinimum() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMINIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->intMinimum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int intStep() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTSTEP )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->intStep() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int intValue() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->intValue() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isComboBoxEditable() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_ISCOMBOBOXEDITABLE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isComboBoxEditable() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString labelText() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_LABELTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->labelText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString okButtonText() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OKBUTTONTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->okButtonText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPEN )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQOBJECT( 1 ) && ISCHAR( 2 ) )
    {
#endif
      obj->open( PQOBJECT( 1 ), PCONSTCHAR( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QInputDialog::InputDialogOptions options() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPTIONS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->options() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCancelButtonText( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCANCELBUTTONTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setCancelButtonText( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setComboBoxEditable( bool editable )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXEDITABLE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setComboBoxEditable( PBOOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setComboBoxItems( const QStringList & items )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXITEMS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISARRAY( 1 ) )
    {
#endif
      obj->setComboBoxItems( PQSTRINGLIST( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleDecimals( int decimals )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEDECIMALS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setDoubleDecimals( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleMaximum( double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMAXIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setDoubleMaximum( PDOUBLE( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleMinimum( double min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMINIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setDoubleMinimum( PDOUBLE( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleRange( double min, double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLERANGE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->setDoubleRange( PDOUBLE( 1 ), PDOUBLE( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDoubleValue( double value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setDoubleValue( PDOUBLE( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInputMode( QInputDialog::InputMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINPUTMODE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setInputMode( ( QInputDialog::InputMode ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIntMaximum( int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMAXIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setIntMaximum( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIntMinimum( int min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMINIMUM )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setIntMinimum( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIntRange( int min, int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTRANGE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->setIntRange( PINT( 1 ), PINT( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIntStep( int step )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTSTEP )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setIntStep( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIntValue( int value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setIntValue( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabelText( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETLABELTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setLabelText( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOkButtonText( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOKBUTTONTEXT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setOkButtonText( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOption( QInputDialog::InputDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTION )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && ISNUM( 1 ) && ISOPTLOG( 2 ) )
    {
#endif
      obj->setOption( ( QInputDialog::InputDialogOption ) hb_parni( 1 ), OPBOOL( 2, true ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOptions( QInputDialog::InputDialogOptions options )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTIONS )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setOptions( ( QInputDialog::InputDialogOptions ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextEchoMode( QLineEdit::EchoMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTECHOMODE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setTextEchoMode( ( QLineEdit::EchoMode ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTextValue( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setTextValue( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool testOption( QInputDialog::InputDialogOption option ) const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TESTOPTION )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->testOption( ( QInputDialog::InputDialogOption ) hb_parni( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QLineEdit::EchoMode textEchoMode() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTECHOMODE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->textEchoMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString textValue() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTVALUE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->textValue() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void done( int result )
*/
HB_FUNC_STATIC( QINPUTDIALOG_DONE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->done( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_MINIMUMSIZEHINT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETVISIBLE )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setVisible( PBOOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QINPUTDIALOG_SIZEHINT )
{
  QInputDialog * obj = ( QInputDialog * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static double getDouble( QWidget * parent, const QString & title, const QString & label, double value = 0, double min = -2147483647, double max = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETDOUBLE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 9 ) && ISQWIDGET( 1 ) && ISCHAR( 2 ) && ISCHAR( 3 ) && ISOPTNUM( 4 ) && ISOPTNUM( 5 ) && ISOPTNUM( 6 ) && ISOPTNUM( 7 ) && ISOPTLOG( 8 ) && ISOPTNUM( 9 ) )
  {
#endif
    bool par8;
    RDOUBLE( QInputDialog::getDouble( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), OPDOUBLE( 4, 0 ), OPDOUBLE( 5, -2147483647 ), OPDOUBLE( 6, 2147483647 ), OPINT( 7, 1 ), &par8, ISNIL( 9 )? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 9 ) ) );
    hb_storl( par8, 8 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static int getInt( QWidget * parent, const QString & title, const QString & label, int value = 0, int min = -2147483647, int max = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETINT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 9 ) && ISQWIDGET( 1 ) && ISCHAR( 2 ) && ISCHAR( 3 ) && ISOPTNUM( 4 ) && ISOPTNUM( 5 ) && ISOPTNUM( 6 ) && ISOPTNUM( 7 ) && ISOPTLOG( 8 ) && ISOPTNUM( 9 ) )
  {
#endif
    bool par8;
    RINT( QInputDialog::getInt( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), OPINT( 4, 0 ), OPINT( 5, -2147483647 ), OPINT( 6, 2147483647 ), OPINT( 7, 1 ), &par8, ISNIL( 9 )? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 9 ) ) );
    hb_storl( par8, 8 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString getItem( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETITEM )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 4, 8 ) && ISQWIDGET( 1 ) && ISCHAR( 2 ) && ISCHAR( 3 ) && ISARRAY( 4 ) && ISOPTNUM( 5 ) && ISOPTLOG( 6 ) && ISOPTLOG( 7 ) && ISOPTNUM( 8 ) )
  {
#endif
    bool par7;
    RQSTRING( QInputDialog::getItem( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), PQSTRINGLIST( 4 ), OPINT( 5, 0 ), OPBOOL( 6, true ), &par7, ISNIL( 8 )? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 8 ) ) );
    hb_storl( par7, 7 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString getText( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode mode = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETTEXT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN( 3, 7 ) && ISQWIDGET( 1 ) && ISCHAR( 2 ) && ISCHAR( 3 ) && ISOPTNUM( 4 ) && ISOPTCHAR( 5 ) && ISOPTLOG( 6 ) && ISOPTNUM( 7 ) )
  {
#endif
    bool par6;
    RQSTRING( QInputDialog::getText( PQWIDGET( 1 ), PQSTRING( 2 ), PQSTRING( 3 ), ISNIL( 4 )? ( QLineEdit::EchoMode ) QLineEdit::Normal : ( QLineEdit::EchoMode ) hb_parni( 4 ), OPQSTRING( 5, QString() ), &par6, ISNIL( 7 )? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 7 ) ) );
    hb_storl( par6, 6 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QInputDialogSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QINPUTDIALOG_ONDOUBLEVALUECHANGED )
{
  QInputDialogSlots_connect_signal( "doubleValueChanged(double)", "doubleValueChanged(double)" );
}

HB_FUNC_STATIC( QINPUTDIALOG_ONDOUBLEVALUESELECTED )
{
  QInputDialogSlots_connect_signal( "doubleValueSelected(double)", "doubleValueSelected(double)" );
}

HB_FUNC_STATIC( QINPUTDIALOG_ONINTVALUECHANGED )
{
  QInputDialogSlots_connect_signal( "intValueChanged(int)", "intValueChanged(int)" );
}

HB_FUNC_STATIC( QINPUTDIALOG_ONINTVALUESELECTED )
{
  QInputDialogSlots_connect_signal( "intValueSelected(int)", "intValueSelected(int)" );
}

HB_FUNC_STATIC( QINPUTDIALOG_ONTEXTVALUECHANGED )
{
  QInputDialogSlots_connect_signal( "textValueChanged(QString)", "textValueChanged(QString)" );
}

HB_FUNC_STATIC( QINPUTDIALOG_ONTEXTVALUESELECTED )
{
  QInputDialogSlots_connect_signal( "textValueSelected(QString)", "textValueSelected(QString)" );
}

#pragma ENDDUMP
