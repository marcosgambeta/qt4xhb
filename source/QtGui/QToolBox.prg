//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
REQUEST QWIDGET
#endif

CLASS QToolBox INHERIT QFrame

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertItem
   METHOD isItemEnabled
   METHOD itemIcon
   METHOD itemText
   METHOD itemToolTip
   METHOD removeItem
   METHOD setItemEnabled
   METHOD setItemIcon
   METHOD setItemText
   METHOD setItemToolTip
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onCurrentChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QToolBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QToolBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QToolBox( QWidget *parent = 0, Qt::WindowFlags f = 0 )
    */
HB_FUNC_STATIC(QTOOLBOX_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQWIDGET(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    QToolBox *obj = new QToolBox(OPQWIDGET(1, 0), HB_ISNIL(2) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(2));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QTOOLBOX_DELETE)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

HB_FUNC_STATIC(QTOOLBOX_ADDITEM)
{
  if (ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2) || HB_ISCHAR(2)) && HB_ISCHAR(3))
  {
    /*
    int addItem( QWidget *widget, const QIcon &iconSet, const QString &text )
    */
    QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->addItem(PQWIDGET(1), HB_ISOBJECT(2) ? *static_cast<QIcon *>(Qt4xHb::itemGetPtr(2)) : QIcon(hb_parc(2)),
                        PQSTRING(3)));
    }
  }
  else if (ISNUMPAR(2) && ISQWIDGET(1) && HB_ISCHAR(2))
  {
    /*
    int addItem( QWidget *w, const QString &text )
    */
    QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->addItem(PQWIDGET(1), PQSTRING(2)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int count() const
*/
HB_FUNC_STATIC(QTOOLBOX_COUNT)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->count());
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
int currentIndex() const
*/
HB_FUNC_STATIC(QTOOLBOX_CURRENTINDEX)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->currentIndex());
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
QWidget *currentWidget() const
*/
HB_FUNC_STATIC(QTOOLBOX_CURRENTWIDGET)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWidget *ptr = obj->currentWidget();
      Qt4xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
int indexOf( QWidget *widget ) const
*/
HB_FUNC_STATIC(QTOOLBOX_INDEXOF)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      RINT(obj->indexOf(PQWIDGET(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QTOOLBOX_INSERTITEM)
{
  if (ISNUMPAR(4) && HB_ISNUM(1) && ISQWIDGET(2) && (ISQICON(3) || HB_ISCHAR(3)) && HB_ISCHAR(4))
  {
    /*
    int insertItem( int index, QWidget *widget, const QIcon &icon, const QString &text )
    */
    QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->insertItem(PINT(1), PQWIDGET(2),
                           HB_ISOBJECT(3) ? *static_cast<QIcon *>(Qt4xHb::itemGetPtr(3)) : QIcon(hb_parc(3)),
                           PQSTRING(4)));
    }
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && ISQWIDGET(2) && HB_ISCHAR(3))
  {
    /*
    int insertItem( int index, QWidget *widget, const QString &text )
    */
    QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->insertItem(PINT(1), PQWIDGET(2), PQSTRING(3)));
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool isItemEnabled( int index ) const
*/
HB_FUNC_STATIC(QTOOLBOX_ISITEMENABLED)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->isItemEnabled(PINT(1)));
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
QIcon itemIcon( int index ) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMICON)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QIcon *ptr = new QIcon(obj->itemIcon(PINT(1)));
      Qt4xHb::createReturnClass(ptr, "QICON", true);
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
QString itemText( int index ) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMTEXT)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->itemText(PINT(1)));
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
QString itemToolTip( int index ) const
*/
HB_FUNC_STATIC(QTOOLBOX_ITEMTOOLTIP)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RQSTRING(obj->itemToolTip(PINT(1)));
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
void removeItem( int index )
*/
HB_FUNC_STATIC(QTOOLBOX_REMOVEITEM)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->removeItem(PINT(1));
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
void setItemEnabled( int index, bool enabled )
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMENABLED)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISLOG(2))
    {
#endif
      obj->setItemEnabled(PINT(1), PBOOL(2));
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
void setItemIcon( int index, const QIcon &icon )
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMICON)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && (ISQICON(2) || HB_ISCHAR(2)))
    {
#endif
      obj->setItemIcon(PINT(1), HB_ISOBJECT(2) ? *static_cast<QIcon *>(Qt4xHb::itemGetPtr(2)) : QIcon(hb_parc(2)));
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
void setItemText( int index, const QString &text )
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMTEXT)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setItemText(PINT(1), PQSTRING(2));
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
void setItemToolTip( int index, const QString &toolTip )
*/
HB_FUNC_STATIC(QTOOLBOX_SETITEMTOOLTIP)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2))
    {
#endif
      obj->setItemToolTip(PINT(1), PQSTRING(2));
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
QWidget *widget( int index ) const
*/
HB_FUNC_STATIC(QTOOLBOX_WIDGET)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QWidget *ptr = obj->widget(PINT(1));
      Qt4xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
void setCurrentIndex( int index )
*/
HB_FUNC_STATIC(QTOOLBOX_SETCURRENTINDEX)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCurrentIndex(PINT(1));
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
void setCurrentWidget( QWidget *widget )
*/
HB_FUNC_STATIC(QTOOLBOX_SETCURRENTWIDGET)
{
  QToolBox *obj = qobject_cast<QToolBox *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->setCurrentWidget(PQWIDGET(1));
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

void QToolBoxSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QTOOLBOX_ONCURRENTCHANGED)
{
  QToolBoxSlots_connect_signal("currentChanged(int)", "currentChanged(int)");
}

#pragma ENDDUMP
