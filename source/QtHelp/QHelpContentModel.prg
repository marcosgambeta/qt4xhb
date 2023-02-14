/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS QHelpContentModel INHERIT QAbstractItemModel

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount

   METHOD onContentsCreated
   METHOD onContentsCreationStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpContentModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtHelp/QHelpContentModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC( QHELPCONTENTMODEL_DELETE )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
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

/*
QHelpContentItem * contentItemAt( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CONTENTITEMAT )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QHelpContentItem * ptr = obj->contentItemAt( *PQMODELINDEX(1) );
      Qt4xHb::createReturnClass(ptr, "QHELPCONTENTITEM", false);
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
void createContents( const QString & customFilterName )
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CREATECONTENTS )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->createContents( PQSTRING(1) );
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
bool isCreatingContents() const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ISCREATINGCONTENTS )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCreatingContents() );
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
virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_COLUMNCOUNT )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)) )
    {
#endif
      RINT( obj->columnCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(1)) ) );
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
virtual QVariant data( const QModelIndex & index, int role ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_DATA )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQMODELINDEX(1) && HB_ISNUM(2) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), PINT(2)) );
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

/*
virtual QModelIndex index( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_INDEX )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->index( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
virtual QModelIndex parent( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_PARENT )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->parent( *PQMODELINDEX(1)) );
      Qt4xHb::createReturnClass(ptr, "QMODELINDEX", true);
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
virtual int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ROWCOUNT )
{
  QHelpContentModel * obj = qobject_cast<QHelpContentModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (ISQMODELINDEX(1) || HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(1)) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

void QHelpContentModelSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QHELPCONTENTMODEL_ONCONTENTSCREATED )
{
  QHelpContentModelSlots_connect_signal("contentsCreated()", "contentsCreated()");
}

HB_FUNC_STATIC( QHELPCONTENTMODEL_ONCONTENTSCREATIONSTARTED )
{
  QHelpContentModelSlots_connect_signal("contentsCreationStarted()", "contentsCreationStarted()");
}

#pragma ENDDUMP
