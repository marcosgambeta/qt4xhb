//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QFutureWatcherBaseSlots.hpp"

QFutureWatcherBaseSlots::QFutureWatcherBaseSlots(QObject *parent) : QObject(parent)
{
}

QFutureWatcherBaseSlots::~QFutureWatcherBaseSlots()
{
}

void QFutureWatcherBaseSlots::started()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "started()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QFutureWatcherBaseSlots::finished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "finished()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QFutureWatcherBaseSlots::canceled()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "canceled()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QFutureWatcherBaseSlots::paused()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "paused()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QFutureWatcherBaseSlots::resumed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "resumed()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QFutureWatcherBaseSlots::resultReadyAt(int resultIndex)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "resultReadyAt(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");
    PHB_ITEM pResultIndex = hb_itemPutNI(NULL, resultIndex);

    hb_vmEvalBlockV(cb, 2, pSender, pResultIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pResultIndex);
  }
}

void QFutureWatcherBaseSlots::resultsReadyAt(int beginIndex, int endIndex)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "resultsReadyAt(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");
    PHB_ITEM pBeginIndex = hb_itemPutNI(NULL, beginIndex);
    PHB_ITEM pEndIndex = hb_itemPutNI(NULL, endIndex);

    hb_vmEvalBlockV(cb, 3, pSender, pBeginIndex, pEndIndex);

    hb_itemRelease(pSender);
    hb_itemRelease(pBeginIndex);
    hb_itemRelease(pEndIndex);
  }
}

void QFutureWatcherBaseSlots::progressRangeChanged(int minimum, int maximum)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "progressRangeChanged(int,int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");
    PHB_ITEM pMinimum = hb_itemPutNI(NULL, minimum);
    PHB_ITEM pMaximum = hb_itemPutNI(NULL, maximum);

    hb_vmEvalBlockV(cb, 3, pSender, pMinimum, pMaximum);

    hb_itemRelease(pSender);
    hb_itemRelease(pMinimum);
    hb_itemRelease(pMaximum);
  }
}

void QFutureWatcherBaseSlots::progressValueChanged(int progressValue)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "progressValueChanged(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");
    PHB_ITEM pProgressValue = hb_itemPutNI(NULL, progressValue);

    hb_vmEvalBlockV(cb, 2, pSender, pProgressValue);

    hb_itemRelease(pSender);
    hb_itemRelease(pProgressValue);
  }
}

void QFutureWatcherBaseSlots::progressTextChanged(const QString &progressText)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "progressTextChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFUTUREWATCHERBASE");
    PHB_ITEM pProgressText = hb_itemPutC(NULL, QSTRINGTOSTRING(progressText));

    hb_vmEvalBlockV(cb, 2, pSender, pProgressText);

    hb_itemRelease(pSender);
    hb_itemRelease(pProgressText);
  }
}

void QFutureWatcherBaseSlots_connect_signal(const QString &signal, const QString &slot)
{
  QFutureWatcherBase *obj = qobject_cast<QFutureWatcherBase *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QFutureWatcherBaseSlots *s = QCoreApplication::instance()->findChild<QFutureWatcherBaseSlots *>();

    if (s == NULL)
    {
      s = new QFutureWatcherBaseSlots();
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
