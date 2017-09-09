$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QSIZE
#endif

CLASS QAbstractSpinBox INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alignment
   METHOD buttonSymbols
   METHOD correctionMode
   METHOD fixup
   METHOD hasAcceptableInput
   METHOD hasFrame
   METHOD interpretText
   METHOD isAccelerated
   METHOD isReadOnly
   METHOD keyboardTracking
   METHOD setAccelerated
   METHOD setAlignment
   METHOD setButtonSymbols
   METHOD setCorrectionMode
   METHOD setFrame
   METHOD setKeyboardTracking
   METHOD setReadOnly
   METHOD setSpecialValueText
   METHOD setWrapping
   METHOD specialValueText
   METHOD stepBy
   METHOD text
   METHOD validate
   METHOD wrapping
   METHOD event
   METHOD inputMethodQuery
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD selectAll
   METHOD stepDown
   METHOD stepUp

   METHOD onEditingFinished

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAbstractSpinBox ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_NEW )
{
  QAbstractSpinBox * o = new QAbstractSpinBox ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
Qt::Alignment alignment () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->alignment () );
  }
}

/*
ButtonSymbols buttonSymbols () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_BUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->buttonSymbols () );
  }
}

/*
CorrectionMode correctionMode () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_CORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->correctionMode () );
  }
}

/*
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_FIXUP ) // TODO: revisar implementacao e corrigir
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasAcceptableInput () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_HASACCEPTABLEINPUT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAcceptableInput () );
  }
}

/*
bool hasFrame () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_HASFRAME )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFrame () );
  }
}

/*
void interpretText ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_INTERPRETTEXT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->interpretText ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isAccelerated () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ISACCELERATED )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAccelerated () );
  }
}

/*
bool isReadOnly () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_ISREADONLY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isReadOnly () );
  }
}

/*
bool keyboardTracking () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_KEYBOARDTRACKING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->keyboardTracking () );
  }
}

/*
void setAccelerated ( bool on )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETACCELERATED )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccelerated ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlignment ( Qt::Alignment flag )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETALIGNMENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment ( (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setButtonSymbols ( ButtonSymbols bs )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETBUTTONSYMBOLS )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setButtonSymbols ( (QAbstractSpinBox::ButtonSymbols) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCorrectionMode ( CorrectionMode cm )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETCORRECTIONMODE )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCorrectionMode ( (QAbstractSpinBox::CorrectionMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrame ( bool )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETFRAME )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFrame ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKeyboardTracking ( bool kt )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETKEYBOARDTRACKING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setKeyboardTracking ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setReadOnly ( bool r )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETREADONLY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setReadOnly ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpecialValueText ( const QString & txt )
*/
$method=|void|setSpecialValueText|const QString &

/*
void setWrapping ( bool w )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SETWRAPPING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWrapping ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString specialValueText () const
*/
$method=|QString|specialValueText|

/*
virtual void stepBy ( int steps )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPBY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stepBy ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text () const
*/
$method=|QString|text|

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_VALIDATE ) // TODO: revisar implementacao e corrigir
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = hb_parni(2);
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}

/*
bool wrapping () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_WRAPPING )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->wrapping () );
  }
}

/*
virtual bool event ( QEvent * event )
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_EVENT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_INPUTMETHODQUERY )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_MINIMUMSIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SIZEHINT )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void clear ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_CLEAR )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void selectAll ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_SELECTALL )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stepDown ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPDOWN )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stepDown ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stepUp ()
*/
HB_FUNC_STATIC( QABSTRACTSPINBOX_STEPUP )
{
  QAbstractSpinBox * obj = (QAbstractSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->stepUp ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
