/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QCommandLinkButton INHERIT QPushButton

   METHOD new
   METHOD description
   METHOD setDescription
   METHOD isFlat
   METHOD setFlat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCommandLinkButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QCommandLinkButton>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QCOMMANDLINKBUTTON_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    /*
    QCommandLinkButton( QWidget * parent = 0 )
    */
    QCommandLinkButton *obj = new QCommandLinkButton(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    /*
    QCommandLinkButton( const QString & text, QWidget * parent = 0 )
    */
    QCommandLinkButton *obj = new QCommandLinkButton(PQSTRING(1), OPQWIDGET(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
  {
    /*
    QCommandLinkButton( const QString & text, const QString & description, QWidget * parent = 0 )
    */
    QCommandLinkButton *obj = new QCommandLinkButton(PQSTRING(1), PQSTRING(2), OPQWIDGET(3, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString description() const
*/
HB_FUNC_STATIC(QCOMMANDLINKBUTTON_DESCRIPTION)
{
  QCommandLinkButton *obj = qobject_cast<QCommandLinkButton *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->description());
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
void setDescription( const QString & description )
*/
HB_FUNC_STATIC(QCOMMANDLINKBUTTON_SETDESCRIPTION)
{
  QCommandLinkButton *obj = qobject_cast<QCommandLinkButton *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setDescription(PQSTRING(1));
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
bool isFlat() const
*/
HB_FUNC_STATIC(QCOMMANDLINKBUTTON_ISFLAT)
{
  QCommandLinkButton *obj = qobject_cast<QCommandLinkButton *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isFlat());
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
void setFlat( bool )
*/
HB_FUNC_STATIC(QCOMMANDLINKBUTTON_SETFLAT)
{
  QCommandLinkButton *obj = qobject_cast<QCommandLinkButton *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFlat(PBOOL(1));
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

#pragma ENDDUMP
