//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTDOCUMENT
REQUEST QTEXTFORMAT
#endif

CLASS QTextObject INHERIT QObject

   METHOD document
   METHOD format
   METHOD formatIndex
   METHOD objectIndex

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QTextObject>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QTextDocument>

    // QTextDocument *document() const
HB_FUNC_STATIC(QTEXTOBJECT_DOCUMENT)
{
  QTextObject *obj = qobject_cast<QTextObject *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextDocument *ptr = obj->document();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTDOCUMENT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QTextFormat format() const
HB_FUNC_STATIC(QTEXTOBJECT_FORMAT)
{
  QTextObject *obj = qobject_cast<QTextObject *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextFormat *ptr = new QTextFormat(obj->format());
      Qt4xHb::createReturnClass(ptr, "QTEXTFORMAT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int formatIndex() const
HB_FUNC_STATIC(QTEXTOBJECT_FORMATINDEX)
{
  QTextObject *obj = qobject_cast<QTextObject *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->formatIndex());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int objectIndex() const
HB_FUNC_STATIC(QTEXTOBJECT_OBJECTINDEX)
{
  QTextObject *obj = qobject_cast<QTextObject *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->objectIndex());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
