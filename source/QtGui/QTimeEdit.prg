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

CLASS QTimeEdit INHERIT QDateTimeEdit

   METHOD new

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimeEdit
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTimeEdit>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QTIMEEDIT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    // QTimeEdit(QWidget *parent = 0)
    QTimeEdit *obj = new QTimeEdit(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQTIME(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    // QTimeEdit(const QTime &time, QWidget *parent = 0)
    QTimeEdit *obj = new QTimeEdit(*PQTIME(1), OPQWIDGET(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
