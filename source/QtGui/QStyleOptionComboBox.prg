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
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QStyleOptionComboBox INHERIT QStyleOptionComplex

   METHOD new
   METHOD editable
   METHOD setEditable
   METHOD popupRect
   METHOD setPopupRect
   METHOD frame
   METHOD setFrame
   METHOD currentText
   METHOD setCurrentText
   METHOD currentIcon
   METHOD setCurrentIcon
   METHOD iconSize
   METHOD seticonSize

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionComboBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionComboBox()
    */
    QStyleOptionComboBox *obj = new QStyleOptionComboBox();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONCOMBOBOX(1))
  {
    /*
    QStyleOptionComboBox( const QStyleOptionComboBox & other )
    */
    QStyleOptionComboBox *obj = new QStyleOptionComboBox(*PQSTYLEOPTIONCOMBOBOX(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool editable
*/
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_EDITABLE)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->editable);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETEDITABLE)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->editable = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QRect popupRect
*/
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_POPUPRECT)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      QRect *ptr = new QRect(obj->popupRect);
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETPOPUPRECT)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && ISQRECT(1))
    {
      obj->popupRect = *PQRECT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool frame
*/
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_FRAME)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RBOOL(obj->frame);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETFRAME)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
      obj->frame = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString currentText
*/
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_CURRENTTEXT)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->currentText);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETCURRENTTEXT)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->currentText = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon currentIcon
*/
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_CURRENTICON)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      QIcon *ptr = new QIcon(obj->currentIcon);
      Qt4xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETCURRENTICON)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && ISQICON(1))
    {
      obj->currentIcon = *PQICON(1);
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
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_ICONSIZE)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

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
HB_FUNC_STATIC(QSTYLEOPTIONCOMBOBOX_SETICONSIZE)
{
  QStyleOptionComboBox *obj = static_cast<QStyleOptionComboBox *>(Qt4xHb::itemGetPtrStackSelfItem());

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
