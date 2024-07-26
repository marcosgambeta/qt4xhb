//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
#endif

CLASS QXmlInputSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data
   METHOD fetchData
   METHOD next
   METHOD reset
   METHOD setData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QXmlInputSource
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtXml/QXmlInputSource>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QXMLINPUTSOURCE_NEW)
{
  if (ISNUMPAR(0))
  {
    // QXmlInputSource()
    QXmlInputSource *obj = new QXmlInputSource();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQIODEVICE(1))
  {
    // QXmlInputSource(QIODevice *dev)
    QXmlInputSource *obj = new QXmlInputSource(PQIODEVICE(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_DELETE)
{
  QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual QString data() const
*/
HB_FUNC_STATIC(QXMLINPUTSOURCE_DATA)
{
  QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->data());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void fetchData()
*/
HB_FUNC_STATIC(QXMLINPUTSOURCE_FETCHDATA)
{
  QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->fetchData();
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

/*
virtual QChar next()
*/
HB_FUNC_STATIC(QXMLINPUTSOURCE_NEXT)
{
  QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QChar *ptr = new QChar(obj->next());
      Qt4xHb::createReturnClass(ptr, "QCHAR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void reset()
*/
HB_FUNC_STATIC(QXMLINPUTSOURCE_RESET)
{
  QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reset();
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

HB_FUNC_STATIC(QXMLINPUTSOURCE_SETDATA)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    virtual void setData(const QString &dat)
    */
    QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setData(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    virtual void setData(const QByteArray &dat)
    */
    QXmlInputSource *obj = static_cast<QXmlInputSource *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setData(*PQBYTEARRAY(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_NEWFROM)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISOBJECT(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if (hb_pcount() == 1 && HB_ISPOINTER(1))
  {
    PHB_ITEM ptr = hb_itemPutPtr(NULL, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    PHB_ITEM des = hb_itemPutL(NULL, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_NEWFROMOBJECT)
{
  HB_FUNC_EXEC(QXMLINPUTSOURCE_NEWFROM);
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_NEWFROMPOINTER)
{
  HB_FUNC_EXEC(QXMLINPUTSOURCE_NEWFROM);
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_SELFDESTRUCTION)
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC(QXMLINPUTSOURCE_SETSELFDESTRUCTION)
{
  PHB_ITEM self = hb_stackSelfItem();

  if (hb_pcount() == 1 && HB_ISLOG(1))
  {
    PHB_ITEM des = hb_itemPutL(NULL, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
