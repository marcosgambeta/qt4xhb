//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QCoreApplication INHERIT QObject

   METHOD new
   METHOD delete
   METHOD filterEvent
   METHOD notify
   METHOD quit
   METHOD addLibraryPath
   METHOD applicationDirPath
   METHOD applicationFilePath
   METHOD applicationName
   METHOD applicationPid
   METHOD applicationVersion
   METHOD arguments
   METHOD closingDown
   METHOD exec
   METHOD exit
   METHOD flush
   METHOD hasPendingEvents
   METHOD installTranslator
   METHOD instance
   METHOD libraryPaths
   METHOD organizationDomain
   METHOD organizationName
   METHOD postEvent
   METHOD processEvents
   METHOD removeLibraryPath
   METHOD removePostedEvents
   METHOD removeTranslator
   METHOD sendEvent
   METHOD sendPostedEvents
   METHOD setApplicationName
   METHOD setApplicationVersion
   METHOD setAttribute
   METHOD setLibraryPaths
   METHOD setOrganizationDomain
   METHOD setOrganizationName
   METHOD startingUp
   METHOD testAttribute
   METHOD translate

   METHOD onAboutToQuit

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCoreApplication
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QCoreApplication>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtCore/QStringList>

    // QCoreApplication ( int & argc, char ** argv )
HB_FUNC_STATIC(QCOREAPPLICATION_NEW)
{
  int argc;
  char **argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QCoreApplication *o = new QCoreApplication(argc, argv);
  Qt4xHb::storePointerAndFlag(o, false);
}

HB_FUNC_STATIC(QCOREAPPLICATION_DELETE)
{
  QCoreApplication *obj = qobject_cast<QCoreApplication *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

// bool filterEvent(void *message, long *result)
HB_FUNC_STATIC(QCOREAPPLICATION_FILTEREVENT)
{
  QCoreApplication *obj = qobject_cast<QCoreApplication *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISPOINTER(1) && HB_ISNUM(2))
    {
#endif
      long par2;
      RBOOL(obj->filterEvent(static_cast<void *>(hb_parptr(1)), &par2));
      hb_stornl(par2, 2);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual bool notify(QObject *receiver, QEvent *event)
HB_FUNC_STATIC(QCOREAPPLICATION_NOTIFY)
{
  QCoreApplication *obj = qobject_cast<QCoreApplication *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2))
    {
#endif
      RBOOL(obj->notify(PQOBJECT(1), PQEVENT(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void quit()
HB_FUNC_STATIC(QCOREAPPLICATION_QUIT)
{
  QCoreApplication *obj = qobject_cast<QCoreApplication *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->quit();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// static void addLibraryPath(const QString &path)
HB_FUNC_STATIC(QCOREAPPLICATION_ADDLIBRARYPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::addLibraryPath(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static QString applicationDirPath()
HB_FUNC_STATIC(QCOREAPPLICATION_APPLICATIONDIRPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::applicationDirPath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString applicationFilePath()
HB_FUNC_STATIC(QCOREAPPLICATION_APPLICATIONFILEPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::applicationFilePath());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString applicationName()
HB_FUNC_STATIC(QCOREAPPLICATION_APPLICATIONNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::applicationName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static qint64 applicationPid()
HB_FUNC_STATIC(QCOREAPPLICATION_APPLICATIONPID)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQINT64(QCoreApplication::applicationPid());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString applicationVersion()
HB_FUNC_STATIC(QCOREAPPLICATION_APPLICATIONVERSION)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::applicationVersion());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QStringList arguments()
HB_FUNC_STATIC(QCOREAPPLICATION_ARGUMENTS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRINGLIST(QCoreApplication::arguments());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool closingDown()
HB_FUNC_STATIC(QCOREAPPLICATION_CLOSINGDOWN)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QCoreApplication::closingDown());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static int exec()
HB_FUNC_STATIC(QCOREAPPLICATION_EXEC)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QCoreApplication::exec());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static void exit(int returnCode = 0)
HB_FUNC_STATIC(QCOREAPPLICATION_EXIT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
#endif
    QCoreApplication::exit(OPINT(1, 0));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void flush()
HB_FUNC_STATIC(QCOREAPPLICATION_FLUSH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QCoreApplication::flush();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static bool hasPendingEvents()
HB_FUNC_STATIC(QCOREAPPLICATION_HASPENDINGEVENTS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QCoreApplication::hasPendingEvents());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static void installTranslator(QTranslator *translationFile)
HB_FUNC_STATIC(QCOREAPPLICATION_INSTALLTRANSLATOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQTRANSLATOR(1))
  {
#endif
    QCoreApplication::installTranslator(PQTRANSLATOR(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static QCoreApplication *instance()
HB_FUNC_STATIC(QCOREAPPLICATION_INSTANCE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QCoreApplication *ptr = QCoreApplication::instance();
    Qt4xHb::createReturnQObjectClass(ptr, "QCOREAPPLICATION");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QStringList libraryPaths()
HB_FUNC_STATIC(QCOREAPPLICATION_LIBRARYPATHS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRINGLIST(QCoreApplication::libraryPaths());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString organizationDomain()
HB_FUNC_STATIC(QCOREAPPLICATION_ORGANIZATIONDOMAIN)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::organizationDomain());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString organizationName()
HB_FUNC_STATIC(QCOREAPPLICATION_ORGANIZATIONNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RQSTRING(QCoreApplication::organizationName());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QCOREAPPLICATION_POSTEVENT)
{
  if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISOBJECT(2))
  {
    // static void postEvent(QObject *receiver, QEvent *event)

    QCoreApplication::postEvent(PQOBJECT(1), PQEVENT(2));

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(3) && ISQOBJECT(1) && HB_ISOBJECT(2) && HB_ISNUM(3))
  {
    // static void postEvent(QObject *receiver, QEvent *event, int priority)

    QCoreApplication::postEvent(PQOBJECT(1), PQEVENT(2), PINT(3));

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QCOREAPPLICATION_PROCESSEVENTS)
{
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
    // static void processEvents(QEventLoop::ProcessEventsFlags flags = QEventLoop::AllEvents)

    QCoreApplication::processEvents(HB_ISNIL(1) ? (QEventLoop::ProcessEventsFlags)QEventLoop::AllEvents
                                                : (QEventLoop::ProcessEventsFlags)hb_parni(1));

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    // static void processEvents(QEventLoop::ProcessEventsFlags flags, int maxtime)

    QCoreApplication::processEvents((QEventLoop::ProcessEventsFlags)hb_parni(1), PINT(2));

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static void removeLibraryPath(const QString &path)
HB_FUNC_STATIC(QCOREAPPLICATION_REMOVELIBRARYPATH)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::removeLibraryPath(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC(QCOREAPPLICATION_REMOVEPOSTEDEVENTS)
{
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
    // static void removePostedEvents(QObject *receiver)

    QCoreApplication::removePostedEvents(PQOBJECT(1));

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2))
  {
    // static void removePostedEvents(QObject *receiver, int eventType)

    QCoreApplication::removePostedEvents(PQOBJECT(1), PINT(2));

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static void removeTranslator(QTranslator *translationFile)
HB_FUNC_STATIC(QCOREAPPLICATION_REMOVETRANSLATOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQTRANSLATOR(1))
  {
#endif
    QCoreApplication::removeTranslator(PQTRANSLATOR(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static bool sendEvent(QObject *receiver, QEvent *event)
HB_FUNC_STATIC(QCOREAPPLICATION_SENDEVENT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2))
  {
#endif
    RBOOL(QCoreApplication::sendEvent(PQOBJECT(1), PQEVENT(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QCOREAPPLICATION_SENDPOSTEDEVENTS)
{
  if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2))
  {
    // static void sendPostedEvents(QObject *receiver, int event_type)

    QCoreApplication::sendPostedEvents(PQOBJECT(1), PINT(2));

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(0))
  {
    // static void sendPostedEvents()

    QCoreApplication::sendPostedEvents();

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static void setApplicationName(const QString &application)
HB_FUNC_STATIC(QCOREAPPLICATION_SETAPPLICATIONNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::setApplicationName(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setApplicationVersion(const QString &version)
HB_FUNC_STATIC(QCOREAPPLICATION_SETAPPLICATIONVERSION)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::setApplicationVersion(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setAttribute(Qt::ApplicationAttribute attribute, bool on = true)
HB_FUNC_STATIC(QCOREAPPLICATION_SETATTRIBUTE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
  {
#endif
    QCoreApplication::setAttribute((Qt::ApplicationAttribute)hb_parni(1), OPBOOL(2, true));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setLibraryPaths(const QStringList &paths)
HB_FUNC_STATIC(QCOREAPPLICATION_SETLIBRARYPATHS)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
#endif
    QCoreApplication::setLibraryPaths(PQSTRINGLIST(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setOrganizationDomain(const QString &orgDomain)
HB_FUNC_STATIC(QCOREAPPLICATION_SETORGANIZATIONDOMAIN)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::setOrganizationDomain(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setOrganizationName(const QString &orgName)
HB_FUNC_STATIC(QCOREAPPLICATION_SETORGANIZATIONNAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    QCoreApplication::setOrganizationName(PQSTRING(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static bool startingUp()
HB_FUNC_STATIC(QCOREAPPLICATION_STARTINGUP)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RBOOL(QCoreApplication::startingUp());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static bool testAttribute(Qt::ApplicationAttribute attribute)
HB_FUNC_STATIC(QCOREAPPLICATION_TESTATTRIBUTE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RBOOL(QCoreApplication::testAttribute((Qt::ApplicationAttribute)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QCOREAPPLICATION_TRANSLATE)
{
  if (ISNUMPAR(5) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISNUM(4) && HB_ISNUM(5))
  {
    // static QString translate(const char *context, const char *sourceText, const char *disambiguation,
    // QCoreApplication::Encoding encoding, int n)

    RQSTRING(QCoreApplication::translate(PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3),
                                         (QCoreApplication::Encoding)hb_parni(4), PINT(5)));
  }
  else if (ISNUMPAR(4) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) && HB_ISNUM(4))
  {
    // static QString translate(const char *context, const char *sourceText, const char *disambiguation = 0,
    // QCoreApplication::Encoding encoding = QCoreApplication::CodecForTr)

    RQSTRING(QCoreApplication::translate(PCONSTCHAR(1), PCONSTCHAR(2), OPCONSTCHAR(3, 0),
                                         HB_ISNIL(4) ? (QCoreApplication::Encoding)QCoreApplication::CodecForTr
                                                     : (QCoreApplication::Encoding)hb_parni(4)));
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QCoreApplicationSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCOREAPPLICATION_ONABOUTTOQUIT)
{
  QCoreApplicationSlots_connect_signal("aboutToQuit()", "aboutToQuit()");
}

#pragma ENDDUMP
