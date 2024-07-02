/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   METHOD delete
   METHOD linkAt

   METHOD onRequestShowLink

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpSearchResultWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtHelp/QHelpSearchResultWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QHELPSEARCHRESULTWIDGET_DELETE)
{
  QHelpSearchResultWidget *obj = qobject_cast<QHelpSearchResultWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QUrl linkAt( const QPoint & point )
*/
HB_FUNC_STATIC(QHELPSEARCHRESULTWIDGET_LINKAT)
{
  QHelpSearchResultWidget *obj = qobject_cast<QHelpSearchResultWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINT(1))
    {
#endif
      QUrl *ptr = new QUrl(obj->linkAt(*PQPOINT(1)));
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QHelpSearchResultWidgetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QHELPSEARCHRESULTWIDGET_ONREQUESTSHOWLINK)
{
  QHelpSearchResultWidgetSlots_connect_signal("requestShowLink(QUrl)", "requestShowLink(QUrl)");
}

#pragma ENDDUMP
