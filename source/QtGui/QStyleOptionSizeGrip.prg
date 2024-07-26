//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleOptionSizeGrip INHERIT QStyleOptionComplex

   METHOD new
   METHOD corner
   METHOD setCorner

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionSizeGrip
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionSizeGrip>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONSIZEGRIP_NEW)
{
  if (ISNUMPAR(0))
  {
    // QStyleOptionSizeGrip()
    QStyleOptionSizeGrip *obj = new QStyleOptionSizeGrip();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONSIZEGRIP(1))
  {
    // QStyleOptionSizeGrip(const QStyleOptionSizeGrip &other)
    QStyleOptionSizeGrip *obj = new QStyleOptionSizeGrip(*PQSTYLEOPTIONSIZEGRIP(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
Qt::Corner corner
*/
HB_FUNC_STATIC(QSTYLEOPTIONSIZEGRIP_CORNER)
{
  QStyleOptionSizeGrip *obj = static_cast<QStyleOptionSizeGrip *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->corner);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONSIZEGRIP_SETCORNER)
{
  QStyleOptionSizeGrip *obj = static_cast<QStyleOptionSizeGrip *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->corner = (Qt::Corner)hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
