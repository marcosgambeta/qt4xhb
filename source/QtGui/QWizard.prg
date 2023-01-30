/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
REQUEST QSIZE
REQUEST QVARIANT
REQUEST QWIDGET
REQUEST QWIZARDPAGE
#endif

CLASS QWizard INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addPage
   METHOD button
   METHOD buttonText
   METHOD currentId
   METHOD currentPage
   METHOD field
   METHOD hasVisitedPage
   METHOD nextId
   METHOD options
   METHOD page
   METHOD pageIds
   METHOD pixmap
   METHOD removePage
   METHOD setButton
   METHOD setButtonLayout
   METHOD setButtonText
   METHOD setDefaultProperty
   METHOD setField
   METHOD setOption
   METHOD setOptions
   METHOD setPage
   METHOD setPixmap
   METHOD setSideWidget
   METHOD setStartId
   METHOD setSubTitleFormat
   METHOD setTitleFormat
   METHOD setWizardStyle
   METHOD sideWidget
   METHOD startId
   METHOD subTitleFormat
   METHOD testOption
   METHOD titleFormat
   METHOD validateCurrentPage
   METHOD visitedPages
   METHOD wizardStyle
   METHOD setVisible
   METHOD sizeHint
   METHOD back
   METHOD next
   METHOD restart

   METHOD onCurrentIdChanged
   METHOD onCustomButtonClicked
   METHOD onHelpRequested
   METHOD onPageAdded
   METHOD onPageRemoved

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWizard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QWizard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QVariant>
#include <QtGui/QAbstractButton>

/*
QWizard( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QWIZARD_NEW )
{
  if( ISBETWEEN(0, 2) && ( ISQWIDGET(1) || HB_ISNIL(1) ) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
  {
    QWizard * obj = new QWizard( OPQWIDGET( 1, 0 ), HB_ISNIL(2) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni(2) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QWIZARD_DELETE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int addPage( QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_ADDPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIZARDPAGE(1) )
    {
#endif
      RINT( obj->addPage( PQWIZARDPAGE(1) ) );
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
QAbstractButton * button( QWizard::WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTON )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QAbstractButton * ptr = obj->button( ( QWizard::WizardButton ) hb_parni(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTBUTTON" );
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
QString buttonText( QWizard::WizardButton which ) const
*/
HB_FUNC_STATIC( QWIZARD_BUTTONTEXT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->buttonText( ( QWizard::WizardButton ) hb_parni(1) ) );
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
int currentId() const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTID )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentId() );
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
QWizardPage * currentPage() const
*/
HB_FUNC_STATIC( QWIZARD_CURRENTPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWizardPage * ptr = obj->currentPage();
      Qt4xHb::createReturnQObjectClass( ptr, "QWIZARDPAGE" );
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
QVariant field( const QString & name ) const
*/
HB_FUNC_STATIC( QWIZARD_FIELD )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->field( PQSTRING(1) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
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
bool hasVisitedPage( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_HASVISITEDPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->hasVisitedPage( PINT(1) ) );
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
virtual int nextId() const
*/
HB_FUNC_STATIC( QWIZARD_NEXTID )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->nextId() );
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
QWizard::WizardOptions options() const
*/
HB_FUNC_STATIC( QWIZARD_OPTIONS )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
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
QWizardPage * page( int id ) const
*/
HB_FUNC_STATIC( QWIZARD_PAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QWizardPage * ptr = obj->page( PINT(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QWIZARDPAGE" );
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
QList<int> pageIds() const
*/
HB_FUNC_STATIC( QWIZARD_PAGEIDS )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->pageIds();
      Qt4xHb::convert_qlist_int_to_array( list );
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
QPixmap pixmap( QWizard::WizardPixmap which ) const
*/
HB_FUNC_STATIC( QWIZARD_PIXMAP )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap( ( QWizard::WizardPixmap ) hb_parni(1) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
void removePage( int id )
*/
HB_FUNC_STATIC( QWIZARD_REMOVEPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->removePage( PINT(1) );
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
void setButton( QWizard::WizardButton which, QAbstractButton * button )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTON )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQABSTRACTBUTTON(2) )
    {
#endif
      obj->setButton( ( QWizard::WizardButton ) hb_parni(1), PQABSTRACTBUTTON(2) );
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
void setButtonLayout( const QList<QWizard::WizardButton> & layout )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONLAYOUT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      QList<QWizard::WizardButton> par1;
      PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
      int nLen1 = hb_arrayLen( aList1 );
      for( int i1 = 0; i1 < nLen1; i1++ )
      {
        par1 << (QWizard::WizardButton) hb_arrayGetNI(aList1, i1+1);
      }
      obj->setButtonLayout( par1 );
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
void setButtonText( QWizard::WizardButton which, const QString & text )
*/
HB_FUNC_STATIC( QWIZARD_SETBUTTONTEXT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setButtonText( ( QWizard::WizardButton ) hb_parni(1), PQSTRING(2) );
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
void setDefaultProperty( const char * className, const char * property, const char * changedSignal )
*/
HB_FUNC_STATIC( QWIZARD_SETDEFAULTPROPERTY )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
    {
#endif
      obj->setDefaultProperty( PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3) );
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
void setField( const QString & name, const QVariant & value )
*/
HB_FUNC_STATIC( QWIZARD_SETFIELD )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      obj->setField( PQSTRING(1), *PQVARIANT(2) );
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
void setOption( QWizard::WizardOption option, bool on = true )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTION )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISLOG(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->setOption( ( QWizard::WizardOption ) hb_parni(1), OPBOOL( 2, true ) );
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
void setOptions( QWizard::WizardOptions options )
*/
HB_FUNC_STATIC( QWIZARD_SETOPTIONS )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOptions( ( QWizard::WizardOptions ) hb_parni(1) );
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
void setPage( int id, QWizardPage * page )
*/
HB_FUNC_STATIC( QWIZARD_SETPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQWIZARDPAGE(2) )
    {
#endif
      obj->setPage( PINT(1), PQWIZARDPAGE(2) );
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
void setPixmap( QWizard::WizardPixmap which, const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QWIZARD_SETPIXMAP )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && ISQPIXMAP(2) )
    {
#endif
      obj->setPixmap( ( QWizard::WizardPixmap ) hb_parni(1), *PQPIXMAP(2) );
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
void setSideWidget( QWidget * widget )
*/
HB_FUNC_STATIC( QWIZARD_SETSIDEWIDGET )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setSideWidget( PQWIDGET(1) );
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
void setStartId( int id )
*/
HB_FUNC_STATIC( QWIZARD_SETSTARTID )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setStartId( PINT(1) );
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
void setSubTitleFormat( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QWIZARD_SETSUBTITLEFORMAT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSubTitleFormat( ( Qt::TextFormat ) hb_parni(1) );
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
void setTitleFormat( Qt::TextFormat format )
*/
HB_FUNC_STATIC( QWIZARD_SETTITLEFORMAT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTitleFormat( ( Qt::TextFormat ) hb_parni(1) );
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
void setWizardStyle( QWizard::WizardStyle style )
*/
HB_FUNC_STATIC( QWIZARD_SETWIZARDSTYLE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setWizardStyle( ( QWizard::WizardStyle ) hb_parni(1) );
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
QWidget * sideWidget() const
*/
HB_FUNC_STATIC( QWIZARD_SIDEWIDGET )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->sideWidget();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
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
int startId() const
*/
HB_FUNC_STATIC( QWIZARD_STARTID )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->startId() );
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
Qt::TextFormat subTitleFormat() const
*/
HB_FUNC_STATIC( QWIZARD_SUBTITLEFORMAT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->subTitleFormat() );
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
bool testOption( QWizard::WizardOption option ) const
*/
HB_FUNC_STATIC( QWIZARD_TESTOPTION )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( ( QWizard::WizardOption ) hb_parni(1) ) );
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
Qt::TextFormat titleFormat() const
*/
HB_FUNC_STATIC( QWIZARD_TITLEFORMAT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->titleFormat() );
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
virtual bool validateCurrentPage()
*/
HB_FUNC_STATIC( QWIZARD_VALIDATECURRENTPAGE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->validateCurrentPage() );
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
QList<int> visitedPages() const
*/
HB_FUNC_STATIC( QWIZARD_VISITEDPAGES )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<int> list = obj->visitedPages();
      Qt4xHb::convert_qlist_int_to_array( list );
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
QWizard::WizardStyle wizardStyle() const
*/
HB_FUNC_STATIC( QWIZARD_WIZARDSTYLE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->wizardStyle() );
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
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QWIZARD_SETVISIBLE )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QWIZARD_SIZEHINT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
void back()
*/
HB_FUNC_STATIC( QWIZARD_BACK )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->back();
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
void next()
*/
HB_FUNC_STATIC( QWIZARD_NEXT )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->next();
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
void restart()
*/
HB_FUNC_STATIC( QWIZARD_RESTART )
{
  QWizard * obj = qobject_cast<QWizard*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->restart();
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

void QWizardSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QWIZARD_ONCURRENTIDCHANGED )
{
  QWizardSlots_connect_signal( "currentIdChanged(int)", "currentIdChanged(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONCUSTOMBUTTONCLICKED )
{
  QWizardSlots_connect_signal( "customButtonClicked(int)", "customButtonClicked(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONHELPREQUESTED )
{
  QWizardSlots_connect_signal( "helpRequested()", "helpRequested()" );
}

HB_FUNC_STATIC( QWIZARD_ONPAGEADDED )
{
  QWizardSlots_connect_signal( "pageAdded(int)", "pageAdded(int)" );
}

HB_FUNC_STATIC( QWIZARD_ONPAGEREMOVED )
{
  QWizardSlots_connect_signal( "pageRemoved(int)", "pageRemoved(int)" );
}

#pragma ENDDUMP
