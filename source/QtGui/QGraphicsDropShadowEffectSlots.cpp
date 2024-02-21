/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsDropShadowEffectSlots.hpp"

QGraphicsDropShadowEffectSlots::QGraphicsDropShadowEffectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsDropShadowEffectSlots::~QGraphicsDropShadowEffectSlots()
{
}

void QGraphicsDropShadowEffectSlots::blurRadiusChanged(qreal blurRadius)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "blurRadiusChanged(qreal)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSDROPSHADOWEFFECT");
    PHB_ITEM pBlurRadius = hb_itemPutND(NULL, blurRadius);

    hb_vmEvalBlockV(cb, 2, pSender, pBlurRadius);

    hb_itemRelease(pSender);
    hb_itemRelease(pBlurRadius);
  }
}

void QGraphicsDropShadowEffectSlots::colorChanged(const QColor &color)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "colorChanged(QColor)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSDROPSHADOWEFFECT");
    PHB_ITEM pColor = Qt4xHb::Signals_return_object((void *)&color, "QCOLOR");

    hb_vmEvalBlockV(cb, 2, pSender, pColor);

    hb_itemRelease(pSender);
    hb_itemRelease(pColor);
  }
}

void QGraphicsDropShadowEffectSlots::offsetChanged(const QPointF &offset)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "offsetChanged(QPointF)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QGRAPHICSDROPSHADOWEFFECT");
    PHB_ITEM pOffset = Qt4xHb::Signals_return_object((void *)&offset, "QPOINTF");

    hb_vmEvalBlockV(cb, 2, pSender, pOffset);

    hb_itemRelease(pSender);
    hb_itemRelease(pOffset);
  }
}

void QGraphicsDropShadowEffectSlots_connect_signal(const QString &signal, const QString &slot)
{
  QGraphicsDropShadowEffect *obj = qobject_cast<QGraphicsDropShadowEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QGraphicsDropShadowEffectSlots *s = QCoreApplication::instance()->findChild<QGraphicsDropShadowEffectSlots *>();

    if (s == NULL)
    {
      s = new QGraphicsDropShadowEffectSlots();
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
