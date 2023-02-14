/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
REQUEST QDESIGNERFORMWINDOWCURSORINTERFACE
REQUEST QDIR
REQUEST QPOINT
REQUEST QWIDGET
#endif

CLASS QDesignerFormWindowInterface INHERIT QWidget

   METHOD delete
   METHOD absoluteDir
   METHOD addResourceFile
   METHOD author
   METHOD comment
   METHOD contents
   METHOD core
   METHOD cursor
   METHOD emitSelectionChanged
   METHOD exportMacro
   METHOD features
   METHOD fileName
   METHOD grid
   METHOD hasFeature
   METHOD includeHints
   METHOD isDirty
   METHOD isManaged
   METHOD layoutDefault
   METHOD mainContainer
   METHOD pixmapFunction
   METHOD removeResourceFile
   METHOD resourceFiles
   METHOD setAuthor
   METHOD setComment
   METHOD setExportMacro
   METHOD setIncludeHints
   METHOD setLayoutDefault
   METHOD setLayoutFunction
   METHOD setMainContainer
   METHOD setPixmapFunction
   METHOD clearSelection
   METHOD manageWidget
   METHOD selectWidget
   METHOD setContents
   METHOD setDirty
   METHOD setFeatures
   METHOD setFileName
   METHOD setGrid
   METHOD unmanageWidget
   METHOD findFormWindow

   METHOD onAboutToUnmanageWidget
   METHOD onActivated
   METHOD onChanged
   METHOD onFeatureChanged
   METHOD onFileNameChanged
   METHOD onGeometryChanged
   METHOD onMainContainerChanged
   METHOD onObjectRemoved
   METHOD onResourceFilesChanged
   METHOD onSelectionChanged
   METHOD onWidgetManaged
   METHOD onWidgetRemoved
   METHOD onWidgetUnmanaged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerFormWindowInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDesigner/QDesignerFormWindowInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtCore/QDir>
#include <QtDesigner/QDesignerFormEditorInterface>

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_DELETE )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual QDir absoluteDir() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ABSOLUTEDIR )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDir * ptr = new QDir( obj->absoluteDir() );
      Qt4xHb::createReturnClass(ptr, "QDIR", true);
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
virtual void addResourceFile( const QString & path ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ADDRESOURCEFILE )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->addResourceFile( PQSTRING(1) );
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
virtual QString author() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_AUTHOR )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->author() );
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
virtual QString comment() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_COMMENT )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->comment() );
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
virtual QString contents() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CONTENTS )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->contents() );
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
virtual QDesignerFormEditorInterface * core() const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CORE )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormEditorInterface * ptr = obj->core();
      Qt4xHb::createReturnQObjectClass(ptr, "QDESIGNERFORMEDITORINTERFACE");
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
virtual QDesignerFormWindowCursorInterface * cursor() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CURSOR )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDesignerFormWindowCursorInterface * ptr = obj->cursor();
      Qt4xHb::createReturnClass(ptr, "QDESIGNERFORMWINDOWCURSORINTERFACE", false);
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
virtual void emitSelectionChanged() = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_EMITSELECTIONCHANGED )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->emitSelectionChanged();
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
virtual QString exportMacro() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_EXPORTMACRO )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->exportMacro() );
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
virtual QDesignerFormWindowInterface::Feature features() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FEATURES )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->features() );
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
virtual QString fileName() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FILENAME )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->fileName() );
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
virtual QPoint grid() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_GRID )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPoint * ptr = new QPoint( obj->grid() );
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
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
virtual bool hasFeature( QDesignerFormWindowInterface::Feature feature ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_HASFEATURE )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->hasFeature( ( QDesignerFormWindowInterface::Feature ) hb_parni(1)) );
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
virtual QStringList includeHints() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_INCLUDEHINTS )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->includeHints() );
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
virtual bool isDirty() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ISDIRTY )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDirty() );
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
virtual bool isManaged( QWidget * widget ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ISMANAGED )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      RBOOL( obj->isManaged( PQWIDGET(1)) );
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
virtual void layoutDefault( int * margin, int * spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_LAYOUTDEFAULT )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      int par1;
      int par2;
      obj->layoutDefault( &par1, &par2 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
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
virtual QWidget * mainContainer() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_MAINCONTAINER )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QWidget * ptr = obj->mainContainer();
      Qt4xHb::createReturnQWidgetClass( ptr, "QWIDGET");
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
virtual QString pixmapFunction() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_PIXMAPFUNCTION )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->pixmapFunction() );
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
virtual void removeResourceFile( const QString & path ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_REMOVERESOURCEFILE )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->removeResourceFile( PQSTRING(1) );
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
virtual QStringList resourceFiles() const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_RESOURCEFILES )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->resourceFiles() );
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
virtual void setAuthor( const QString & author ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETAUTHOR )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setAuthor( PQSTRING(1) );
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
virtual void setComment( const QString & comment ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCOMMENT )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setComment( PQSTRING(1) );
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
virtual void setExportMacro( const QString & exportMacro ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETEXPORTMACRO )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setExportMacro( PQSTRING(1) );
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
virtual void setIncludeHints( const QStringList & includeHints ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETINCLUDEHINTS )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      obj->setIncludeHints( PQSTRINGLIST(1) );
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
virtual void setLayoutDefault( int margin, int spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETLAYOUTDEFAULT )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      obj->setLayoutDefault( PINT(1), PINT(2) );
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
virtual void setLayoutFunction( const QString & margin, const QString & spacing ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETLAYOUTFUNCTION )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
    {
#endif
      obj->setLayoutFunction( PQSTRING(1), PQSTRING(2) );
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
virtual void setMainContainer( QWidget * mainContainer ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETMAINCONTAINER )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setMainContainer( PQWIDGET(1) );
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
virtual void setPixmapFunction( const QString & pixmapFunction ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETPIXMAPFUNCTION )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setPixmapFunction( PQSTRING(1) );
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
virtual void clearSelection( bool update = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_CLEARSELECTION )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)) )
    {
#endif
      obj->clearSelection( OPBOOL( 1, true ) );
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
virtual void manageWidget( QWidget * widget ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_MANAGEWIDGET )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->manageWidget( PQWIDGET(1) );
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
virtual void selectWidget( QWidget * widget, bool select = true ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SELECTWIDGET )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && ISQWIDGET(1) && (HB_ISLOG(2) || HB_ISNIL(2)) )
    {
#endif
      obj->selectWidget( PQWIDGET(1), OPBOOL( 2, true ) );
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

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETCONTENTS )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    /*
    virtual void setContents( QIODevice * device ) = 0
    */
    QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->setContents( PQIODEVICE(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    virtual void setContents( const QString & contents ) = 0
    */
    QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->setContents( PQSTRING(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual void setDirty( bool dirty ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETDIRTY )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setDirty( PBOOL(1) );
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
virtual void setFeatures( QDesignerFormWindowInterface::Feature features ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETFEATURES )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFeatures( ( QDesignerFormWindowInterface::Feature ) hb_parni(1) );
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
virtual void setFileName( const QString & fileName ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETFILENAME )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setFileName( PQSTRING(1) );
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
virtual void setGrid( const QPoint & grid ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_SETGRID )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setGrid( *PQPOINT(1) );
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
virtual void unmanageWidget( QWidget * widget ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_UNMANAGEWIDGET )
{
  QDesignerFormWindowInterface * obj = qobject_cast<QDesignerFormWindowInterface*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->unmanageWidget( PQWIDGET(1) );
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

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_FINDFORMWINDOW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    static QDesignerFormWindowInterface * findFormWindow( QWidget * widget )
    */

    QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow( PQWIDGET(1) );
    Qt4xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE");
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    static QDesignerFormWindowInterface * findFormWindow( QObject * object )
    */

    QDesignerFormWindowInterface * ptr = QDesignerFormWindowInterface::findFormWindow( PQOBJECT(1) );
    Qt4xHb::createReturnQWidgetClass( ptr, "QDESIGNERFORMWINDOWINTERFACE");
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

void QDesignerFormWindowInterfaceSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONABOUTTOUNMANAGEWIDGET )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("aboutToUnmanageWidget(QWidget*)", "aboutToUnmanageWidget(QWidget*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONACTIVATED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("activated(QWidget*)", "activated(QWidget*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONCHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("changed()", "changed()");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONFEATURECHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("featureChanged(QDesignerFormWindowInterface::Feature)", "featureChanged(QDesignerFormWindowInterface::Feature)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONFILENAMECHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("fileNameChanged(QString)", "fileNameChanged(QString)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONGEOMETRYCHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("geometryChanged()", "geometryChanged()");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONMAINCONTAINERCHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("mainContainerChanged(QWidget*)", "mainContainerChanged(QWidget*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONOBJECTREMOVED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("objectRemoved(QObject*)", "objectRemoved(QObject*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONRESOURCEFILESCHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("resourceFilesChanged()", "resourceFilesChanged()");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONSELECTIONCHANGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("selectionChanged()", "selectionChanged()");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONWIDGETMANAGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("widgetManaged(QWidget*)", "widgetManaged(QWidget*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONWIDGETREMOVED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("widgetRemoved(QWidget*)", "widgetRemoved(QWidget*)");
}

HB_FUNC_STATIC( QDESIGNERFORMWINDOWINTERFACE_ONWIDGETUNMANAGED )
{
  QDesignerFormWindowInterfaceSlots_connect_signal("widgetUnmanaged(QWidget*)", "widgetUnmanaged(QWidget*)");
}

#pragma ENDDUMP
