//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QHelpEngineCore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addCustomFilter
   METHOD autoSaveFilter
   METHOD collectionFile
   METHOD copyCollectionFile
   METHOD currentFilter
   METHOD customFilters
   METHOD customValue
   METHOD documentationFileName
   METHOD error
   METHOD fileData
   METHOD files
   METHOD filterAttributes
   METHOD findFile
   METHOD registerDocumentation
   METHOD registeredDocumentations
   METHOD removeCustomFilter
   METHOD removeCustomValue
   METHOD setAutoSaveFilter
   METHOD setCollectionFile
   METHOD setCurrentFilter
   METHOD setCustomValue
   METHOD setupData
   METHOD unregisterDocumentation
   METHOD metaData
   METHOD namespaceName

   METHOD onCurrentFilterChanged
   METHOD onSetupFinished
   METHOD onSetupStarted
   METHOD onWarning

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpEngineCore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtHelp/QHelpEngineCore>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtCore/QStringList>

    // QHelpEngineCore(const QString &collectionFile, QObject *parent = 0)
HB_FUNC_STATIC(QHELPENGINECORE_NEW)
{
  if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    QHelpEngineCore *obj = new QHelpEngineCore(PQSTRING(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QHELPENGINECORE_DELETE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// bool addCustomFilter(const QString &filterName, const QStringList &attributes)
HB_FUNC_STATIC(QHELPENGINECORE_ADDCUSTOMFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2))
    {
#endif
      RBOOL(obj->addCustomFilter(PQSTRING(1), PQSTRINGLIST(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool autoSaveFilter() const
HB_FUNC_STATIC(QHELPENGINECORE_AUTOSAVEFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->autoSaveFilter());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString collectionFile() const
HB_FUNC_STATIC(QHELPENGINECORE_COLLECTIONFILE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->collectionFile());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool copyCollectionFile(const QString &fileName)
HB_FUNC_STATIC(QHELPENGINECORE_COPYCOLLECTIONFILE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->copyCollectionFile(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString currentFilter() const
HB_FUNC_STATIC(QHELPENGINECORE_CURRENTFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->currentFilter());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QStringList customFilters() const
HB_FUNC_STATIC(QHELPENGINECORE_CUSTOMFILTERS)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->customFilters());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant customValue(const QString &key, const QVariant &defaultValue = QVariant()) const
HB_FUNC_STATIC(QHELPENGINECORE_CUSTOMVALUE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQVARIANT(2) || HB_ISNIL(2)))
    {
#endif
      QVariant *ptr = new QVariant(
          obj->customValue(PQSTRING(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant *>(Qt4xHb::itemGetPtr(2))));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString documentationFileName(const QString &namespaceName)
HB_FUNC_STATIC(QHELPENGINECORE_DOCUMENTATIONFILENAME)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQSTRING(obj->documentationFileName(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QString error() const
HB_FUNC_STATIC(QHELPENGINECORE_ERROR)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->error());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QByteArray fileData(const QUrl &url) const
HB_FUNC_STATIC(QHELPENGINECORE_FILEDATA)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      QByteArray *ptr = new QByteArray(obj->fileData(*PQURL(1)));
      Qt4xHb::createReturnClass(ptr, "QBYTEARRAY", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QList<QUrl> files(const QString namespaceName, const QStringList &filterAttributes, const QString &extensionFilter =
// QString())
HB_FUNC_STATIC(QHELPENGINECORE_FILES)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISARRAY(2) && (HB_ISCHAR(3) || HB_ISNIL(3)))
    {
#endif
      QList<QUrl> list = obj->files(PQSTRING(1), PQSTRINGLIST(2), OPQSTRING(3, QString()));
      PHB_DYNS pDynSym = hb_dynsymFindName("QURL");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if (pDynSym != NULL)
      {
        const int count = list.count();
        for (int i = 0; i < count; i++)
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QUrl(list[i]));
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
          hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
          hb_itemRelease(pDestroy);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QURL", HB_ERR_ARGS_BASEPARAMS);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QHELPENGINECORE_FILTERATTRIBUTES)
{
  if (ISNUMPAR(0))
  {
    // QStringList filterAttributes() const
    QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->filterAttributes());
    }
  }
  else if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // QStringList filterAttributes(const QString &filterName) const
    QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RQSTRINGLIST(obj->filterAttributes(PQSTRING(1)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// QUrl findFile(const QUrl &url) const
HB_FUNC_STATIC(QHELPENGINECORE_FINDFILE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      QUrl *ptr = new QUrl(obj->findFile(*PQURL(1)));
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool registerDocumentation(const QString &documentationFileName)
HB_FUNC_STATIC(QHELPENGINECORE_REGISTERDOCUMENTATION)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->registerDocumentation(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QStringList registeredDocumentations() const
HB_FUNC_STATIC(QHELPENGINECORE_REGISTEREDDOCUMENTATIONS)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->registeredDocumentations());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool removeCustomFilter(const QString &filterName)
HB_FUNC_STATIC(QHELPENGINECORE_REMOVECUSTOMFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->removeCustomFilter(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool removeCustomValue(const QString &key)
HB_FUNC_STATIC(QHELPENGINECORE_REMOVECUSTOMVALUE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->removeCustomValue(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setAutoSaveFilter(bool save)
HB_FUNC_STATIC(QHELPENGINECORE_SETAUTOSAVEFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setAutoSaveFilter(PBOOL(1));
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

// void setCollectionFile(const QString &fileName)
HB_FUNC_STATIC(QHELPENGINECORE_SETCOLLECTIONFILE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCollectionFile(PQSTRING(1));
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

// void setCurrentFilter(const QString &filterName)
HB_FUNC_STATIC(QHELPENGINECORE_SETCURRENTFILTER)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCurrentFilter(PQSTRING(1));
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

// bool setCustomValue(const QString &key, const QVariant &value)
HB_FUNC_STATIC(QHELPENGINECORE_SETCUSTOMVALUE)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2))
    {
#endif
      RBOOL(obj->setCustomValue(PQSTRING(1), *PQVARIANT(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool setupData()
HB_FUNC_STATIC(QHELPENGINECORE_SETUPDATA)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->setupData());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool unregisterDocumentation(const QString &namespaceName)
HB_FUNC_STATIC(QHELPENGINECORE_UNREGISTERDOCUMENTATION)
{
  QHelpEngineCore *obj = qobject_cast<QHelpEngineCore *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->unregisterDocumentation(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// static QVariant metaData(const QString &documentationFileName, const QString &name)
HB_FUNC_STATIC(QHELPENGINECORE_METADATA)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2))
  {
#endif
    QVariant *ptr = new QVariant(QHelpEngineCore::metaData(PQSTRING(1), PQSTRING(2)));
    Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static QString namespaceName(const QString &documentationFileName)
HB_FUNC_STATIC(QHELPENGINECORE_NAMESPACENAME)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
#endif
    RQSTRING(QHelpEngineCore::namespaceName(PQSTRING(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QHelpEngineCoreSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QHELPENGINECORE_ONCURRENTFILTERCHANGED)
{
  QHelpEngineCoreSlots_connect_signal("currentFilterChanged(QString)", "currentFilterChanged(QString)");
}

HB_FUNC_STATIC(QHELPENGINECORE_ONSETUPFINISHED)
{
  QHelpEngineCoreSlots_connect_signal("setupFinished()", "setupFinished()");
}

HB_FUNC_STATIC(QHELPENGINECORE_ONSETUPSTARTED)
{
  QHelpEngineCoreSlots_connect_signal("setupStarted()", "setupStarted()");
}

HB_FUNC_STATIC(QHELPENGINECORE_ONWARNING)
{
  QHelpEngineCoreSlots_connect_signal("warning(QString)", "warning(QString)");
}

#pragma ENDDUMP
