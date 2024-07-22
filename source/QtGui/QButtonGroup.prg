//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
#endif

CLASS QButtonGroup INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttons
   METHOD checkedButton
   METHOD checkedId
   METHOD exclusive
   METHOD id
   METHOD removeButton
   METHOD setExclusive
   METHOD setId

   METHOD onButtonClicked1
   METHOD onButtonClicked2
   METHOD onButtonPressed1
   METHOD onButtonPressed2
   METHOD onButtonReleased1
   METHOD onButtonReleased2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QButtonGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QButtonGroup>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QAbstractButton>

    /*
    QButtonGroup( QObject *parent = 0 )
    */
HB_FUNC_STATIC(QBUTTONGROUP_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QButtonGroup *obj = new QButtonGroup(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QBUTTONGROUP_DELETE)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QBUTTONGROUP_ADDBUTTON)
{
  if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
  {
    /*
    void addButton( QAbstractButton *button )
    */
    QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->addButton(PQABSTRACTBUTTON(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && HB_ISNUM(2))
  {
    /*
    void addButton( QAbstractButton *button, int id )
    */
    QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->addButton(PQABSTRACTBUTTON(1), PINT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAbstractButton *button( int id ) const
*/
HB_FUNC_STATIC(QBUTTONGROUP_BUTTON)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QAbstractButton *ptr = obj->button(PINT(1));
      Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTBUTTON");
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
QList<QAbstractButton *> buttons() const
*/
HB_FUNC_STATIC(QBUTTONGROUP_BUTTONS)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QAbstractButton *> list = obj->buttons();
      PHB_DYNS pDynSym = hb_dynsymFindName("QABSTRACTBUTTON");
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
          PHB_ITEM pItem = hb_itemPutPtr(NULL, list[i]);
          hb_objSendMsg(pObject, "_POINTER", 1, pItem);
          hb_itemRelease(pItem);
          hb_arrayAddForward(pArray, pObject);
          hb_itemRelease(pObject);
        }
      }
      else
      {
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QABSTRACTBUTTON", HB_ERR_ARGS_BASEPARAMS);
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

/*
QAbstractButton *checkedButton() const
*/
HB_FUNC_STATIC(QBUTTONGROUP_CHECKEDBUTTON)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QAbstractButton *ptr = obj->checkedButton();
      Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTBUTTON");
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
int checkedId() const
*/
HB_FUNC_STATIC(QBUTTONGROUP_CHECKEDID)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->checkedId());
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
bool exclusive() const
*/
HB_FUNC_STATIC(QBUTTONGROUP_EXCLUSIVE)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->exclusive());
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
int id( QAbstractButton *button ) const
*/
HB_FUNC_STATIC(QBUTTONGROUP_ID)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
    {
#endif
      RINT(obj->id(PQABSTRACTBUTTON(1)));
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
void removeButton( QAbstractButton *button )
*/
HB_FUNC_STATIC(QBUTTONGROUP_REMOVEBUTTON)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQABSTRACTBUTTON(1))
    {
#endif
      obj->removeButton(PQABSTRACTBUTTON(1));
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
void setExclusive( bool )
*/
HB_FUNC_STATIC(QBUTTONGROUP_SETEXCLUSIVE)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setExclusive(PBOOL(1));
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
void setId( QAbstractButton *button, int id )
*/
HB_FUNC_STATIC(QBUTTONGROUP_SETID)
{
  QButtonGroup *obj = qobject_cast<QButtonGroup *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && HB_ISNUM(2))
    {
#endif
      obj->setId(PQABSTRACTBUTTON(1), PINT(2));
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

void QButtonGroupSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONCLICKED1)
{
  QButtonGroupSlots_connect_signal("buttonClicked(QAbstractButton*)", "buttonClicked(QAbstractButton*)");
}

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONCLICKED2)
{
  QButtonGroupSlots_connect_signal("buttonClicked(int)", "buttonClicked(int)");
}

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONPRESSED1)
{
  QButtonGroupSlots_connect_signal("buttonPressed(QAbstractButton*)", "buttonPressed(QAbstractButton*)");
}

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONPRESSED2)
{
  QButtonGroupSlots_connect_signal("buttonPressed(int)", "buttonPressed(int)");
}

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONRELEASED1)
{
  QButtonGroupSlots_connect_signal("buttonReleased(QAbstractButton*)", "buttonReleased(QAbstractButton*)");
}

HB_FUNC_STATIC(QBUTTONGROUP_ONBUTTONRELEASED2)
{
  QButtonGroupSlots_connect_signal("buttonReleased(int)", "buttonReleased(int)");
}

#pragma ENDDUMP
