//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QVARIANT
#endif

CLASS QAbstractSpinBox INHERIT QWidget

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

PROCEDURE destroyObject() CLASS QAbstractSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QAbstractSpinBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QAbstractSpinBox( QWidget *parent = 0 )
    */
HB_FUNC_STATIC(QABSTRACTSPINBOX_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    QAbstractSpinBox *obj = new QAbstractSpinBox(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QABSTRACTSPINBOX_DELETE)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_ALIGNMENT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->alignment());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAbstractSpinBox::ButtonSymbols buttonSymbols() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_BUTTONSYMBOLS)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->buttonSymbols());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QAbstractSpinBox::CorrectionMode correctionMode() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_CORRECTIONMODE)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->correctionMode());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void fixup( QString &input ) const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_FIXUP)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QString par1 = hb_parc(1);
      obj->fixup(par1);
      hb_storc(QSTRINGTOSTRING(par1), 1);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool hasAcceptableInput() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_HASACCEPTABLEINPUT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasAcceptableInput());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool hasFrame() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_HASFRAME)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasFrame());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void interpretText()
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_INTERPRETTEXT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->interpretText();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool isAccelerated() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_ISACCELERATED)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isAccelerated());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool isReadOnly() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_ISREADONLY)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isReadOnly());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool keyboardTracking() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_KEYBOARDTRACKING)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->keyboardTracking());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setAccelerated( bool on )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETACCELERATED)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAccelerated(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setAlignment( Qt::Alignment flag )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETALIGNMENT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAlignment((Qt::Alignment)hb_parni(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setButtonSymbols( QAbstractSpinBox::ButtonSymbols bs )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETBUTTONSYMBOLS)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setButtonSymbols((QAbstractSpinBox::ButtonSymbols)hb_parni(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setCorrectionMode( QAbstractSpinBox::CorrectionMode cm )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETCORRECTIONMODE)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCorrectionMode((QAbstractSpinBox::CorrectionMode)hb_parni(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setFrame( bool )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETFRAME)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFrame(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setKeyboardTracking( bool kt )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETKEYBOARDTRACKING)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setKeyboardTracking(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setReadOnly( bool r )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETREADONLY)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setReadOnly(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSpecialValueText( const QString &txt )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETSPECIALVALUETEXT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setSpecialValueText(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setWrapping( bool w )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SETWRAPPING)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setWrapping(PBOOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString specialValueText() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SPECIALVALUETEXT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->specialValueText());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void stepBy( int steps )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_STEPBY)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->stepBy(PINT(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_TEXT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->text());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QValidator::State validate( QString &input, int &pos ) const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_VALIDATE)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISNUM(2))
    {
#endif
      QString par1 = hb_parc(1);
      int par2;
      RENUM(obj->validate(par1, par2));
      hb_storc(QSTRINGTOSTRING(par1), 1);
      hb_storni(par2, 2);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool wrapping() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_WRAPPING)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->wrapping());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual bool event( QEvent *event )
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_EVENT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQEVENT(1))
    {
#endif
      RBOOL(obj->event(PQEVENT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QVariant inputMethodQuery( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_INPUTMETHODQUERY)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QVariant *ptr = new QVariant(obj->inputMethodQuery((Qt::InputMethodQuery)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_MINIMUMSIZEHINT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->minimumSizeHint());
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SIZEHINT)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void clear()
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_CLEAR)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void selectAll()
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_SELECTALL)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->selectAll();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void stepDown()
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_STEPDOWN)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stepDown();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void stepUp()
*/
HB_FUNC_STATIC(QABSTRACTSPINBOX_STEPUP)
{
  QAbstractSpinBox *obj = qobject_cast<QAbstractSpinBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->stepUp();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QAbstractSpinBoxSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QABSTRACTSPINBOX_ONEDITINGFINISHED)
{
  QAbstractSpinBoxSlots_connect_signal("editingFinished()", "editingFinished()");
}

#pragma ENDDUMP
