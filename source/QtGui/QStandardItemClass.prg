/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QICON
REQUEST QSIZE
REQUEST QFONT
REQUEST QBRUSH
REQUEST QSTANDARDITEM
REQUEST QMODELINDEX
REQUEST QSTANDARDITEMMODEL
#endif

CLASS QStandardItem

   DATA pointer
   DATA class_id INIT Class_Id_QStandardItem
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD data
   METHOD setData
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD toolTip
   METHOD setToolTip
   METHOD statusTip
   METHOD setStatusTip
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD sizeHint
   METHOD setSizeHint
   METHOD font
   METHOD setFont
   METHOD textAlignment
   METHOD setTextAlignment
   METHOD background
   METHOD setBackground
   METHOD foreground
   METHOD setForeground
   METHOD checkState
   METHOD setCheckState
   METHOD accessibleText
   METHOD setAccessibleText
   METHOD accessibleDescription
   METHOD setAccessibleDescription
   METHOD flags
   METHOD setFlags
   METHOD isEnabled
   METHOD setEnabled
   METHOD isEditable
   METHOD setEditable
   METHOD isSelectable
   METHOD setSelectable
   METHOD isCheckable
   METHOD setCheckable
   METHOD isTristate
   METHOD setTristate
   METHOD isDragEnabled
   METHOD setDragEnabled
   METHOD isDropEnabled
   METHOD setDropEnabled
   METHOD parent
   METHOD row
   METHOD column
   METHOD index
   METHOD model
   METHOD rowCount
   METHOD setRowCount
   METHOD columnCount
   METHOD setColumnCount
   METHOD hasChildren
   METHOD child
   METHOD setChild1
   METHOD setChild2
   METHOD setChild
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow
   METHOD insertColumn
   METHOD insertRows1
   METHOD insertRows2
   METHOD insertRows
   METHOD insertColumns
   METHOD removeRow
   METHOD removeColumn
   METHOD removeRows
   METHOD removeColumns
   METHOD appendRow1
   METHOD appendRow2
   METHOD appendRow
   METHOD appendRows
   METHOD appendColumn
   METHOD takeChild
   METHOD takeRow
   METHOD takeColumn
   METHOD sortChildren
   METHOD clone
   METHOD type
   METHOD read
   METHOD write
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStandardItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStandardItem>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QStandardItem()
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW1 )
{
  QStandardItem * o = NULL;
  o = new QStandardItem (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStandardItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QStandardItem(const QString &text)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW2 )
{
  QStandardItem * o = NULL;
  QString par1 = hb_parc(1);
  o = new QStandardItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStandardItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QStandardItem(const QIcon &icon, const QString &text)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW3 )
{
  QStandardItem * o = NULL;
  QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
  QString par2 = hb_parc(2);
  o = new QStandardItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStandardItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QStandardItem(int rows, int columns = 1)
*/
HB_FUNC_STATIC( QSTANDARDITEM_NEW4 )
{
  QStandardItem * o = NULL;
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? 1 : hb_parni(2);
  o = new QStandardItem ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStandardItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QStandardItem()
//[2]QStandardItem(const QString &text)
//[3]QStandardItem(const QIcon &icon, const QString &text)
//[4]QStandardItem(int rows, int columns = 1)

HB_FUNC_STATIC( QSTANDARDITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_NEW2 );
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTANDARDITEM_DELETE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant data(int role = Qt::UserRole + 1) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_DATA )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? Qt::UserRole+1 : hb_parni(1);
    QVariant * ptr = new QVariant( obj->data ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setData(const QVariant &value, int role = Qt::UserRole + 1)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETDATA )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? Qt::UserRole+1 : hb_parni(2);
    obj->setData ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_TEXT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->text (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETTEXT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ICON )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETICON )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString toolTip() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_TOOLTIP )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->toolTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setToolTip(const QString &toolTip)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETTOOLTIP )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setToolTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString statusTip() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_STATUSTIP )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->statusTip (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setStatusTip(const QString &statusTip)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETSTATUSTIP )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setStatusTip ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString whatsThis() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_WHATSTHIS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->whatsThis (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setWhatsThis(const QString &whatsThis)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETWHATSTHIS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setWhatsThis ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_SIZEHINT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setSizeHint(const QSize &sizeHint)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETSIZEHINT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSizeHint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_FONT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setFont(const QFont &font)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETFONT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QFont * par1 = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment textAlignment() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_TEXTALIGNMENT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textAlignment (  ) );
  }
}


/*
void setTextAlignment(Qt::Alignment textAlignment)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETTEXTALIGNMENT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush background() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_BACKGROUND )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->background (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void setBackground(const QBrush &brush)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETBACKGROUND )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBackground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush foreground() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_FOREGROUND )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->foreground (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void setForeground(const QBrush &brush)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETFOREGROUND )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setForeground ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::CheckState checkState() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_CHECKSTATE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->checkState (  ) );
  }
}


/*
void setCheckState(Qt::CheckState checkState)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETCHECKSTATE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCheckState (  (Qt::CheckState) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString accessibleText() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ACCESSIBLETEXT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->accessibleText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setAccessibleText(const QString &accessibleText)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETACCESSIBLETEXT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setAccessibleText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString accessibleDescription() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ACCESSIBLEDESCRIPTION )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->accessibleDescription (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setAccessibleDescription(const QString &accessibleDescription)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETACCESSIBLEDESCRIPTION )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setAccessibleDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::ItemFlags flags() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_FLAGS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags (  ) );
  }
}


/*
void setFlags(Qt::ItemFlags flags)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETFLAGS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags (  (Qt::ItemFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEnabled (  ) );
  }
}


/*
void setEnabled(bool enabled)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEditable() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISEDITABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isEditable (  ) );
  }
}


/*
void setEditable(bool editable)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETEDITABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEditable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSelectable() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISSELECTABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSelectable (  ) );
  }
}


/*
void setSelectable(bool selectable)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETSELECTABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelectable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCheckable() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISCHECKABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}


/*
void setCheckable(bool checkable)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETCHECKABLE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCheckable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isTristate() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISTRISTATE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isTristate (  ) );
  }
}


/*
void setTristate(bool tristate)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETTRISTATE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTristate ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDragEnabled() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISDRAGENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDragEnabled (  ) );
  }
}


/*
void setDragEnabled(bool dragEnabled)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETDRAGENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDragEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDropEnabled() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ISDROPENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isDropEnabled (  ) );
  }
}


/*
void setDropEnabled(bool dropEnabled)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETDROPENABLED )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDropEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStandardItem *parent() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_PARENT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->parent (  );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
int row() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ROW )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->row (  ) );
  }
}


/*
int column() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_COLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->column (  ) );
  }
}


/*
QModelIndex index() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_INDEX )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->index (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QStandardItemModel *model() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_MODEL )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItemModel * ptr = obj->model (  );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEMMODEL" );
  }
}


/*
int rowCount() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_ROWCOUNT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
void setRowCount(int rows)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETROWCOUNT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRowCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnCount() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_COLUMNCOUNT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}


/*
void setColumnCount(int columns)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETCOLUMNCOUNT )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setColumnCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool hasChildren() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_HASCHILDREN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasChildren (  ) );
  }
}


/*
QStandardItem *child(int row, int column = 0) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_CHILD )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    QStandardItem * ptr = obj->child ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
void setChild(int row, int column, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QStandardItem * par3 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setChild ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setChild(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD2 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setChild ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setChild(int row, int column, QStandardItem *item)
//[2]void setChild(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_SETCHILD )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQSTANDARDITEM(3) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_SETCHILD1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_SETCHILD2 );
  }
}

/*
void insertRow(int row, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QList<QStandardItem *> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow(int row, QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW2 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QStandardItem * par2 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->insertRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertRow(int row, const QList<QStandardItem*> &items)
//[2]void insertRow(int row, QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSTANDARDITEM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROW2 );
  }
}

/*
void insertColumn(int column, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QList<QStandardItem *> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertColumn ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRows(int row, const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
QList<QStandardItem *> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
par2 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );}
    obj->insertRows ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRows(int row, int count)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS2 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->insertRows ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertRows(int row, const QList<QStandardItem*> &items)
//[2]void insertRows(int row, int count)

HB_FUNC_STATIC( QSTANDARDITEM_INSERTROWS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_INSERTROWS2 );
  }
}

/*
void insertColumns(int column, int count)
*/
HB_FUNC_STATIC( QSTANDARDITEM_INSERTCOLUMNS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->insertColumns ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeRow(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEM_REMOVEROW )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeColumn(int column)
*/
HB_FUNC_STATIC( QSTANDARDITEM_REMOVECOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->removeColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeRows(int row, int count)
*/
HB_FUNC_STATIC( QSTANDARDITEM_REMOVEROWS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->removeRows ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeColumns(int column, int count)
*/
HB_FUNC_STATIC( QSTANDARDITEM_REMOVECOLUMNS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->removeColumns ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRow(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW1 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QStandardItem *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRow(QStandardItem *item)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW2 )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * par1 = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->appendRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void appendRow(const QList<QStandardItem*> &items)
//[2]void appendRow(QStandardItem *item)

HB_FUNC_STATIC( QSTANDARDITEM_APPENDROW )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW1 );
  }
  else if( ISNUMPAR(1) && ISQSTANDARDITEM(1) )
  {
    HB_FUNC_EXEC( QSTANDARDITEM_APPENDROW2 );
  }
}

/*
void appendRows(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDROWS )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QStandardItem *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->appendRows ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendColumn(const QList<QStandardItem*> &items)
*/
HB_FUNC_STATIC( QSTANDARDITEM_APPENDCOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QList<QStandardItem *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );}
    obj->appendColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStandardItem *takeChild(int row, int column = 0)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKECHILD )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    QStandardItem * ptr = obj->takeChild ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
QList<QStandardItem*> takeRow(int row)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKEROW )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QStandardItem *> list = obj->takeRow ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QStandardItem*> takeColumn(int column)
*/
HB_FUNC_STATIC( QSTANDARDITEM_TAKECOLUMN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QStandardItem *> list = obj->takeColumn ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSTANDARDITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QSTANDARDITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QStandardItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void sortChildren(int column, Qt::SortOrder order = Qt::AscendingOrder)
*/
HB_FUNC_STATIC( QSTANDARDITEM_SORTCHILDREN )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sortChildren ( par1,  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStandardItem *clone() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_CLONE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStandardItem * ptr = obj->clone (  );
    _qt4xhb_createReturnClass ( ptr, "QSTANDARDITEM" );
  }
}


/*
virtual int type() const
*/
HB_FUNC_STATIC( QSTANDARDITEM_TYPE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
virtual void read(QDataStream &in)
*/
HB_FUNC_STATIC( QSTANDARDITEM_READ )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->read ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void write(QDataStream &out) const
*/
HB_FUNC_STATIC( QSTANDARDITEM_WRITE )
{
  QStandardItem * obj = (QStandardItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->write ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QSTANDARDITEM_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSTANDARDITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSTANDARDITEM_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSTANDARDITEM_NEWFROM );
}

HB_FUNC_STATIC( QSTANDARDITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSTANDARDITEM_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
