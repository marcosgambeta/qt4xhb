//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#ifndef EVENTS_H
#define EVENTS_H

#include <QtCore/QObject>
#include <QtCore/QEvent>
#include <QtCore/QVector>
#include <QtCore/QList>
#include <QtCore/QCoreApplication>
#include <QtCore/QMutex>
#include <QtCore/QMetaEnum>

#include <hbapi.h>
#include <hbapiitm.h>
#include <hbapierr.h>
#include <hbvm.h>
#include <hbstack.h>
#ifndef __XHARBOUR__
#include <hbapicls.h>
#endif

namespace Qt4xHb
{
bool Events_connect_event(QObject *object, int type, PHB_ITEM codeblock);
bool Events_disconnect_event(QObject *object, int type);
void Events_disconnect_all_events(QObject *obj, bool children);
} // namespace Qt4xHb

class Events : public QObject
{
public:
  Events(QObject *parent = 0);
  ~Events();

private:
  QVector<QObject *> *m_list1;    // armazena ponteiro do objeto
  QVector<QEvent::Type> *m_list2; // armazena tipo de evento
  QVector<PHB_ITEM> *m_list3;     // armazena codeblock
  QMutex *m_mutex;
  QHash<QEvent::Type, QString> *m_events;

protected:
  bool eventFilter(QObject *obj, QEvent *event);

public:
  bool connectEvent(QObject *object, int type, PHB_ITEM codeblock);
  bool disconnectEvent(QObject *object, int type);
  void disconnectAllEvents(QObject *obj, bool children);
  PHB_ITEM returnQEvent(QEvent *ptr, const char *classname);
  PHB_ITEM returnQObject(QObject *ptr, const char *classname);
  int size();
  int active();
};

#endif // EVENTS_H
