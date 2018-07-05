%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
$constructor=|new|const QNetworkConfiguration &,QObject *=0

$deleteMethod

$prototype=quint64 activeTime () const
$method=|quint64|activeTime|

$prototype=quint64 bytesReceived () const
$method=|quint64|bytesReceived|

$prototype=quint64 bytesWritten () const
$method=|quint64|bytesWritten|

$prototype=QNetworkConfiguration configuration () const
$method=|QNetworkConfiguration|configuration|

$prototype=SessionError error () const
$method=|QNetworkSession::SessionError|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QNetworkInterface interface () const
$method=|QNetworkInterface|interface|

$prototype=bool isOpen () const
$method=|bool|isOpen|

$prototype=QVariant sessionProperty ( const QString & key ) const
$method=|QVariant|sessionProperty|const QString &

$prototype=void setSessionProperty ( const QString & key, const QVariant & value )
$method=|void|setSessionProperty|const QString &,const QVariant &

$prototype=State state () const
$method=|QNetworkSession::State|state|

$prototype=bool waitForOpened ( int msecs = 30000 )
$method=|bool|waitForOpened|int=30000

$prototype=void accept ()
$method=|void|accept|

$prototype=void close ()
$method=|void|close|

$prototype=void ignore ()
$method=|void|ignore|

$prototype=void migrate ()
$method=|void|migrate|

$prototype=void open ()
$method=|void|open|

$prototype=void reject ()
$method=|void|reject|

$prototype=void stop ()
$method=|void|stop|

$beginSignals
$signal=|closed()
$signal=|error(QNetworkSession::SessionError)
$signal=|newConfigurationActivated()
$signal=|opened()
$signal=|preferredConfigurationChanged(QNetworkConfiguration,bool)
$signal=|stateChanged(QNetworkSession::State)
$endSignals

#pragma ENDDUMP
