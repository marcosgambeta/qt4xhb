/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFontComboBoxSlots.hpp"

QFontComboBoxSlots::QFontComboBoxSlots(QObject *parent) : QObject(parent)
{
}

QFontComboBoxSlots::~QFontComboBoxSlots()
{
}

void QFontComboBoxSlots::currentFontChanged(const QFont &font)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "currentFontChanged(QFont)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFONTCOMBOBOX");
    PHB_ITEM pFont = Qt4xHb::Signals_return_object((void *)&font, "QFONT");

    hb_vmEvalBlockV(cb, 2, pSender, pFont);

    hb_itemRelease(pSender);
    hb_itemRelease(pFont);
  }
}

void QFontComboBoxSlots_connect_signal(const QString &signal, const QString &slot)
{
  QFontComboBox *obj = qobject_cast<QFontComboBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QFontComboBoxSlots *s = QCoreApplication::instance()->findChild<QFontComboBoxSlots *>();

    if (s == NULL)
    {
      s = new QFontComboBoxSlots();
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
