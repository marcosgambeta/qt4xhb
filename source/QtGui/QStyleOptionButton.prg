/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QStyleOptionButton INHERIT QStyleOption

   METHOD new
   METHOD features
   METHOD setFeatures
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionButton>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionButton()
    */
    QStyleOptionButton *obj = new QStyleOptionButton();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONBUTTON(1))
  {
    /*
    QStyleOptionButton( const QStyleOptionButton & other )
    */
    QStyleOptionButton *obj = new QStyleOptionButton(*PQSTYLEOPTIONBUTTON(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
ButtonFeatures features
*/
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_FEATURES)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->features);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_SETFEATURES)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->features = (QStyleOptionButton::ButtonFeatures)hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString text
*/
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_TEXT)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->text);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_SETTEXT)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_ICON)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      QIcon *ptr = new QIcon(obj->icon);
      Qt4xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_SETICON)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && ISQICON(1))
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSize iconSize
*/
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_ICONSIZE)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      QSize *ptr = new QSize(obj->iconSize);
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONBUTTON_SETICONSIZE)
{
  QStyleOptionButton *obj = static_cast<QStyleOptionButton *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && ISQSIZE(1))
    {
      obj->iconSize = *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
