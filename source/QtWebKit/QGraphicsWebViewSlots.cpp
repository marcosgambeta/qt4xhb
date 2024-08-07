//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QGraphicsWebViewSlots.hpp"

QGraphicsWebViewSlots::QGraphicsWebViewSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsWebViewSlots::~QGraphicsWebViewSlots()
{
}

void QGraphicsWebViewSlots::iconChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "iconChanged()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QGraphicsWebViewSlots::linkClicked(const QUrl &url)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "linkClicked(QUrl)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pUrl = Qt4xHb::Signals_return_object((void *)&url, "QURL");

    hb_vmEvalBlockV(cb, 2, pSender, pUrl);

    hb_itemRelease(pSender);
    hb_itemRelease(pUrl);
  }
}

void QGraphicsWebViewSlots::loadFinished(bool ok)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadFinished(bool)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pOk = hb_itemPutL(NULL, ok);

    hb_vmEvalBlockV(cb, 2, pSender, pOk);

    hb_itemRelease(pSender);
    hb_itemRelease(pOk);
  }
}

void QGraphicsWebViewSlots::loadProgress(int progress)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadProgress(int)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pProgress = hb_itemPutNI(NULL, progress);

    hb_vmEvalBlockV(cb, 2, pSender, pProgress);

    hb_itemRelease(pSender);
    hb_itemRelease(pProgress);
  }
}

void QGraphicsWebViewSlots::loadStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "loadStarted()");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");

    hb_vmEvalBlockV(cb, 1, pSender);

    hb_itemRelease(pSender);
  }
}

void QGraphicsWebViewSlots::statusBarMessage(const QString &text)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "statusBarMessage(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pText = hb_itemPutC(NULL, QSTRINGTOSTRING(text));

    hb_vmEvalBlockV(cb, 2, pSender, pText);

    hb_itemRelease(pSender);
    hb_itemRelease(pText);
  }
}

void QGraphicsWebViewSlots::titleChanged(const QString &title)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "titleChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pTitle = hb_itemPutC(NULL, QSTRINGTOSTRING(title));

    hb_vmEvalBlockV(cb, 2, pSender, pTitle);

    hb_itemRelease(pSender);
    hb_itemRelease(pTitle);
  }
}

void QGraphicsWebViewSlots::urlChanged(const QUrl &url)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "urlChanged(QUrl)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSWEBVIEW");
    PHB_ITEM pUrl = Qt4xHb::Signals_return_object((void *)&url, "QURL");

    hb_vmEvalBlockV(cb, 2, pSender, pUrl);

    hb_itemRelease(pSender);
    hb_itemRelease(pUrl);
  }
}

void QGraphicsWebViewSlots_connect_signal(const QString &signal, const QString &slot)
{
  QGraphicsWebView *obj = qobject_cast<QGraphicsWebView *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QGraphicsWebViewSlots *s = QCoreApplication::instance()->findChild<QGraphicsWebViewSlots *>();

    if (s == NULL)
    {
      s = new QGraphicsWebViewSlots();
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
