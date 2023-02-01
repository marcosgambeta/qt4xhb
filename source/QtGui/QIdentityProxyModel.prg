/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QITEMSELECTION
REQUEST QMODELINDEX
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD dropMimeData
   METHOD index
   METHOD insertColumns
   METHOD insertRows
   METHOD mapFromSource
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD mapToSource
   METHOD match
   METHOD parent
   METHOD removeColumns
   METHOD removeRows
   METHOD rowCount
   METHOD setSourceModel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QIdentityProxyModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QIdentityProxyModel>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QItemSelection>

/*
QIdentityProxyModel( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_NEW )
{
  if( ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)) )
  {
    QIdentityProxyModel * obj = new QIdentityProxyModel( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DELETE )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_COLUMNCOUNT )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual bool dropMimeData( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DROPMIMEDATA )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(5) && ISQMIMEDATA(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && ISQMODELINDEX(5) )
    {
#endif
      RBOOL( obj->dropMimeData( PQMIMEDATA(1), ( Qt::DropAction ) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5)) );
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
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INDEX )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual bool insertColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTCOLUMNS )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertColumns( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
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
virtual bool insertRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTROWS )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->insertRows( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
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
virtual QModelIndex mapFromSource( const QModelIndex & sourceIndex ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPFROMSOURCE )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->mapFromSource( *PQMODELINDEX(1)) );
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
virtual QItemSelection mapSelectionFromSource( const QItemSelection & selection ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTION(1) )
    {
#endif
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource( *PQITEMSELECTION(1)) );
      Qt4xHb::createReturnClass(ptr, "QITEMSELECTION", true);
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
virtual QItemSelection mapSelectionToSource( const QItemSelection & selection ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQITEMSELECTION(1) )
    {
#endif
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource( *PQITEMSELECTION(1)) );
      Qt4xHb::createReturnClass(ptr, "QITEMSELECTION", true);
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
virtual QModelIndex mapToSource( const QModelIndex & proxyIndex ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPTOSOURCE )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->mapToSource( *PQMODELINDEX(1)) );
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
virtual QModelIndexList match( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3, 5) && ISQMODELINDEX(1) && HB_ISNUM(2) && ISQVARIANT(3) && (HB_ISNUM(4) || HB_ISNIL(4)) && (HB_ISNUM(5) || HB_ISNIL(5)) )
    {
#endif
      QModelIndexList list = obj->match( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT( 4, 1 ), HB_ISNIL(5) ? ( Qt::MatchFlags ) Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) : ( Qt::MatchFlags ) hb_parni(5) );
      PHB_DYNS pDynSym = hb_dynsymFindName("QMODELINDEX");
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym != NULL )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym(pDynSym);
          hb_vmPushNil();
          hb_vmDo(0);
          PHB_ITEM pObject = hb_itemNew(NULL);
          hb_itemCopy(pObject, hb_stackReturnItem());
          PHB_ITEM pItem = hb_itemPutPtr(NULL, new QModelIndex(list[i]));
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
        hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS);
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
virtual QModelIndex parent( const QModelIndex & child ) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_PARENT )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual bool removeColumns( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVECOLUMNS )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeColumns( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
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
virtual bool removeRows( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVEROWS )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISNUM(1) && HB_ISNUM(2) && (ISQMODELINDEX(3) || HB_ISNIL(3)) )
    {
#endif
      RBOOL( obj->removeRows( PINT(1), PINT(2), HB_ISNIL(3) ? QModelIndex() : *static_cast<QModelIndex*>( Qt4xHb::itemGetPtr(3)) ) );
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
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_ROWCOUNT )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

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

/*
virtual void setSourceModel( QAbstractItemModel * newSourceModel )
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SETSOURCEMODEL )
{
  QIdentityProxyModel * obj = qobject_cast<QIdentityProxyModel*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setSourceModel( PQABSTRACTITEMMODEL(1) );
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

#pragma ENDDUMP
