//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#ifndef QT4XHB_SIGNALS_H
#define QT4XHB_SIGNALS_H

namespace Qt4xHb
{
  //void Signals_connect_signal(QObject * object, QString signal, PHB_ITEM codeblock);
  void Signals_disconnect_signal(QObject * object, const QString & signal);
  //bool Signals_is_signal_connected(QObject * object, QString signal);
  PHB_ITEM Signals_return_codeblock(QObject * object, const QString & signal);
  void Signals_disconnect_all_signals(QObject * obj, bool children);
  bool Signals_connection_disconnection(QObject * s, const QString & signal, const QString & slot);
  PHB_ITEM Signals_return_object(void * ptr, const char * classname);
  PHB_ITEM Signals_return_qobject(QObject * ptr, const char * classname);
}

#endif // QT4XHB_SIGNALS_H
