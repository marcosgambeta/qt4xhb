/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintDialogSlots.hpp"

QPrintDialogSlots::QPrintDialogSlots(QObject *parent) : QObject(parent)
{
}

QPrintDialogSlots::~QPrintDialogSlots()
{
}

void QPrintDialogSlots::accepted(QPrinter *printer)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "accepted(QPrinter*)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QPRINTDIALOG");
    PHB_ITEM pPrinter = Qt4xHb::Signals_return_object((void *)printer, "QPRINTER");

    hb_vmEvalBlockV(cb, 2, pSender, pPrinter);

    hb_itemRelease(pSender);
    hb_itemRelease(pPrinter);
  }
}

void QPrintDialogSlots_connect_signal(const QString &signal, const QString &slot)
{
  QPrintDialog *obj = qobject_cast<QPrintDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QPrintDialogSlots *s = QCoreApplication::instance()->findChild<QPrintDialogSlots *>();

    if (s == NULL)
    {
      s = new QPrintDialogSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt4xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
