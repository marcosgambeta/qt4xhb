/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLineEditSlots.hpp"

QLineEditSlots::QLineEditSlots(QObject *parent) : QObject(parent)
{
}

QLineEditSlots::~QLineEditSlots()
{
}

void QLineEditSlots::cursorPositionChanged(int iold, int inew)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "cursorPositionChanged(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM pIold = hb_itemPutNI(NULL, iold);
    PHB_ITEM pInew = hb_itemPutNI(NULL, inew);

    hb_vmEvalBlockV(cb, 3, pSender, pIold, pInew);

    hb_itemRelease(pSender);
    hb_itemRelease(pIold);
    hb_itemRelease(pInew);
  }
}

void QLineEditSlots::editingFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "editingFinished()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QLineEditSlots::returnPressed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "returnPressed()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QLineEditSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "selectionChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QLineEditSlots::textChanged(const QString &text)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "textChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM pText = hb_itemPutC(NULL, QSTRINGTOSTRING(text));

    hb_vmEvalBlockV(cb, 2, pSender, pText);

    hb_itemRelease(pSender);
    hb_itemRelease(pText);
  }
}

void QLineEditSlots::textEdited(const QString &text)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "textEdited(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM pText = hb_itemPutC(NULL, QSTRINGTOSTRING(text));

    hb_vmEvalBlockV(cb, 2, pSender, pText);

    hb_itemRelease(pSender);
    hb_itemRelease(pText);
  }
}

void QLineEditSlots_connect_signal(const QString &signal, const QString &slot)
{
  QLineEdit *obj = qobject_cast<QLineEdit *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QLineEditSlots *s = QCoreApplication::instance()->findChild<QLineEditSlots *>();

    if (s == NULL)
    {
      s = new QLineEditSlots();
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
