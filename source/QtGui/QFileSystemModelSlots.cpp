//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QFileSystemModelSlots.hpp"

QFileSystemModelSlots::QFileSystemModelSlots(QObject *parent) : QObject(parent)
{
}

QFileSystemModelSlots::~QFileSystemModelSlots()
{
}

void QFileSystemModelSlots::directoryLoaded(const QString &path)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "directoryLoaded(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFILESYSTEMMODEL");
    PHB_ITEM pPath = hb_itemPutC(NULL, QSTRINGTOSTRING(path));

    hb_vmEvalBlockV(cb, 2, pSender, pPath);

    hb_itemRelease(pSender);
    hb_itemRelease(pPath);
  }
}

void QFileSystemModelSlots::fileRenamed(const QString &path, const QString &oldName, const QString &newName)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "fileRenamed(QString,QString,QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFILESYSTEMMODEL");
    PHB_ITEM pPath = hb_itemPutC(NULL, QSTRINGTOSTRING(path));
    PHB_ITEM pOldName = hb_itemPutC(NULL, QSTRINGTOSTRING(oldName));
    PHB_ITEM pNewName = hb_itemPutC(NULL, QSTRINGTOSTRING(newName));

    hb_vmEvalBlockV(cb, 4, pSender, pPath, pOldName, pNewName);

    hb_itemRelease(pSender);
    hb_itemRelease(pPath);
    hb_itemRelease(pOldName);
    hb_itemRelease(pNewName);
  }
}

void QFileSystemModelSlots::rootPathChanged(const QString &newPath)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock(object, "rootPathChanged(QString)");

  if (cb != NULL)
  {
    PHB_ITEM pSender = Qt4xHb::Signals_return_qobject(object, "QFILESYSTEMMODEL");
    PHB_ITEM pNewPath = hb_itemPutC(NULL, QSTRINGTOSTRING(newPath));

    hb_vmEvalBlockV(cb, 2, pSender, pNewPath);

    hb_itemRelease(pSender);
    hb_itemRelease(pNewPath);
  }
}

void QFileSystemModelSlots_connect_signal(const QString &signal, const QString &slot)
{
  QFileSystemModel *obj = qobject_cast<QFileSystemModel *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    QFileSystemModelSlots *s = QCoreApplication::instance()->findChild<QFileSystemModelSlots *>();

    if (s == NULL)
    {
      s = new QFileSystemModelSlots();
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
