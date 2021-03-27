/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QGLCOLORMAP
REQUEST QGLCONTEXT
REQUEST QGLFORMAT
REQUEST QIMAGE
REQUEST QPIXMAP
#endif

CLASS QGLWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD bindTexture
   METHOD colormap
   METHOD context
   METHOD deleteTexture
   METHOD doneCurrent
   METHOD doubleBuffer
   METHOD drawTexture
   METHOD format
   METHOD grabFrameBuffer
   METHOD isSharing
   METHOD isValid
   METHOD makeCurrent
   METHOD makeOverlayCurrent
   METHOD overlayContext
   METHOD qglClearColor
   METHOD qglColor
   METHOD renderPixmap
   METHOD renderText
   METHOD setColormap
   METHOD setMouseTracking
   METHOD swapBuffers
   METHOD updateGL
   METHOD updateOverlayGL
   METHOD convertToGLFormat

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtOpenGL/QGLWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QGLWidget( QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new1()
{
  QGLWidget * obj = new QGLWidget( OPQWIDGET( 1, 0 ), OPQGLWIDGET( 2, 0 ), HB_ISNIL( 3 ) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 3 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QGLWidget( QGLContext * context, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new2()
{
  QGLWidget * obj = new QGLWidget( PQGLCONTEXT( 1 ), OPQWIDGET( 2, 0 ), OPQGLWIDGET( 3, 0 ), HB_ISNIL( 4 ) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 4 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QGLWidget( const QGLFormat & format, QWidget * parent = 0, const QGLWidget * shareWidget = 0, Qt::WindowFlags f = 0 )
*/
void QGLWidget_new3()
{
  QGLWidget * obj = new QGLWidget( *PQGLFORMAT( 1 ), OPQWIDGET( 2, 0 ), OPQGLWIDGET( 3, 0 ), HB_ISNIL( 4 ) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 4 ) );
  Qt4xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QGLWIDGET_NEW )
{
  if( ISBETWEEN( 0, 3 ) && ( ISQWIDGET( 1 ) || HB_ISNIL( 1 ) ) && ( ISQGLWIDGET( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QGLWidget_new1();
  }
  else if( ISBETWEEN( 1, 4 ) && ISQGLCONTEXT( 1 ) && ( ISQWIDGET( 2 ) || HB_ISNIL( 2 ) ) && ( ISQGLWIDGET( 3 ) || HB_ISNIL( 3 ) ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) )
  {
    QGLWidget_new2();
  }
  else if( ISBETWEEN( 1, 4 ) && ISQGLFORMAT( 1 ) && ( ISQWIDGET( 2 ) || HB_ISNIL( 2 ) ) && ( ISQGLWIDGET( 3 ) || HB_ISNIL( 3 ) ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) )
  {
    QGLWidget_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLWIDGET_DELETE )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
GLuint bindTexture( const QImage & image, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture1()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE( 1 ), OPGLENUM( 2, GL_TEXTURE_2D ), OPGLINT( 3, GL_RGBA ) ) );
  }
}

/*
GLuint bindTexture( const QPixmap & pixmap, GLenum target = GL_TEXTURE_2D, GLint format = GL_RGBA )
*/
void QGLWidget_bindTexture2()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP( 1 ), OPGLENUM( 2, GL_TEXTURE_2D ), OPGLINT( 3, GL_RGBA ) ) );
  }
}

/*
GLuint bindTexture( const QImage & image, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture3()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQIMAGE( 1 ), PGLENUM( 2 ), PGLINT( 3 ), ( QGLContext::BindOptions ) hb_parni( 4 ) ) );
  }
}

/*
GLuint bindTexture( const QPixmap & pixmap, GLenum target, GLint format, QGLContext::BindOptions options )
*/
void QGLWidget_bindTexture4()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    RGLUINT( obj->bindTexture( *PQPIXMAP( 1 ), PGLENUM( 2 ), PGLINT( 3 ), ( QGLContext::BindOptions ) hb_parni( 4 ) ) );
  }
}

/*
GLuint bindTexture( const QString & fileName )
*/
void QGLWidget_bindTexture5()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    RGLUINT( obj->bindTexture( PQSTRING( 1 ) ) );
  }
}

HB_FUNC_STATIC( QGLWIDGET_BINDTEXTURE )
{
  if( ISBETWEEN( 1, 3 ) && ISQIMAGE( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QGLWidget_bindTexture1();
  }
  else if( ISBETWEEN( 1, 3 ) && ISQPIXMAP( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QGLWidget_bindTexture2();
  }
  else if( ISBETWEEN( 3, 4 ) && ISQIMAGE( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) )
  {
    QGLWidget_bindTexture3();
  }
  else if( ISBETWEEN( 3, 4 ) && ISQPIXMAP( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && ( HB_ISNUM( 4 ) || HB_ISNIL( 4 ) ) )
  {
    QGLWidget_bindTexture4();
  }
  else if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
  {
    QGLWidget_bindTexture5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QGLColormap & colormap() const
*/
HB_FUNC_STATIC( QGLWIDGET_COLORMAP )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QGLColormap * ptr = &obj->colormap();
      Qt4xHb::createReturnClass( ptr, "QGLCOLORMAP", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QGLContext * context() const
*/
HB_FUNC_STATIC( QGLWIDGET_CONTEXT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QGLContext * ptr = obj->context();
      Qt4xHb::createReturnClass( ptr, "QGLCONTEXT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void deleteTexture( GLuint id )
*/
HB_FUNC_STATIC( QGLWIDGET_DELETETEXTURE )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->deleteTexture( PGLUINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void doneCurrent()
*/
HB_FUNC_STATIC( QGLWIDGET_DONECURRENT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->doneCurrent();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool doubleBuffer() const
*/
HB_FUNC_STATIC( QGLWIDGET_DOUBLEBUFFER )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->doubleBuffer() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void drawTexture( const QRectF & target, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture1()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    obj->drawTexture( *PQRECTF( 1 ), PGLUINT( 2 ), OPGLENUM( 3, GL_TEXTURE_2D ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawTexture( const QPointF & point, GLuint textureId, GLenum textureTarget = GL_TEXTURE_2D )
*/
void QGLWidget_drawTexture2()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    obj->drawTexture( *PQPOINTF( 1 ), PGLUINT( 2 ), OPGLENUM( 3, GL_TEXTURE_2D ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLWIDGET_DRAWTEXTURE )
{
  if( ISBETWEEN( 2, 3 ) && ISQRECTF( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QGLWidget_drawTexture1();
  }
  else if( ISBETWEEN( 2, 3 ) && ISQPOINTF( 1 ) && HB_ISNUM( 2 ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QGLWidget_drawTexture2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QGLFormat format() const
*/
HB_FUNC_STATIC( QGLWIDGET_FORMAT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QGLFormat * ptr = new QGLFormat( obj->format() );
      Qt4xHb::createReturnClass( ptr, "QGLFORMAT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QImage grabFrameBuffer( bool withAlpha = false )
*/
HB_FUNC_STATIC( QGLWIDGET_GRABFRAMEBUFFER )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISLOG( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QImage * ptr = new QImage( obj->grabFrameBuffer( OPBOOL( 1, false ) ) );
      Qt4xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isSharing() const
*/
HB_FUNC_STATIC( QGLWIDGET_ISSHARING )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isSharing() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGLWIDGET_ISVALID )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void makeCurrent()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKECURRENT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->makeCurrent();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void makeOverlayCurrent()
*/
HB_FUNC_STATIC( QGLWIDGET_MAKEOVERLAYCURRENT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->makeOverlayCurrent();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QGLContext * overlayContext() const
*/
HB_FUNC_STATIC( QGLWIDGET_OVERLAYCONTEXT )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      const QGLContext * ptr = obj->overlayContext();
      Qt4xHb::createReturnClass( ptr, "QGLCONTEXT", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void qglClearColor( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCLEARCOLOR )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ( ISQCOLOR( 1 ) || HB_ISCHAR( 1 ) ) )
    {
#endif
      obj->qglClearColor( HB_ISOBJECT( 1 ) ? *static_cast< QColor * >( Qt4xHb::itemGetPtr( 1 ) ) : QColor( hb_parc( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void qglColor( const QColor & c ) const
*/
HB_FUNC_STATIC( QGLWIDGET_QGLCOLOR )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ( ISQCOLOR( 1 ) || HB_ISCHAR( 1 ) ) )
    {
#endif
      obj->qglColor( HB_ISOBJECT( 1 ) ? *static_cast< QColor * >( Qt4xHb::itemGetPtr( 1 ) ) : QColor( hb_parc( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPixmap renderPixmap( int w = 0, int h = 0, bool useContext = false )
*/
HB_FUNC_STATIC( QGLWIDGET_RENDERPIXMAP )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 3 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISLOG( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->renderPixmap( OPINT( 1, 0 ), OPINT( 2, 0 ), OPBOOL( 3, false ) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void renderText( int x, int y, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
*/
void QGLWidget_renderText1()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    obj->renderText( PINT( 1 ), PINT( 2 ), PQSTRING( 3 ), HB_ISNIL( 4 ) ? QFont() : *static_cast< QFont * >( Qt4xHb::itemGetPtr( 4 ) ), OPINT( 5, 2000 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void renderText( double x, double y, double z, const QString & str, const QFont & font = QFont(), int listBase = 2000 )
*/
void QGLWidget_renderText2()
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    obj->renderText( PDOUBLE( 1 ), PDOUBLE( 2 ), PDOUBLE( 3 ), PQSTRING( 4 ), HB_ISNIL( 5 ) ? QFont() : *static_cast< QFont * >( Qt4xHb::itemGetPtr( 5 ) ), OPINT( 6, 2000 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGLWIDGET_RENDERTEXT )
{
  if( ISBETWEEN( 3, 5 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISCHAR( 3 ) && ( ISQFONT( 4 ) || HB_ISNIL( 4 ) ) && ( HB_ISNUM( 5 ) || HB_ISNIL( 5 ) ) )
  {
    QGLWidget_renderText1();
  }
  else if( ISBETWEEN( 4, 6 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISCHAR( 4 ) && ( ISQFONT( 5 ) || HB_ISNIL( 5 ) ) && ( HB_ISNUM( 6 ) || HB_ISNIL( 6 ) ) )
  {
    QGLWidget_renderText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColormap( const QGLColormap & cmap )
*/
HB_FUNC_STATIC( QGLWIDGET_SETCOLORMAP )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQGLCOLORMAP( 1 ) )
    {
#endif
      obj->setColormap( *PQGLCOLORMAP( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMouseTracking( bool enable )
*/
HB_FUNC_STATIC( QGLWIDGET_SETMOUSETRACKING )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setMouseTracking( PBOOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void swapBuffers()
*/
HB_FUNC_STATIC( QGLWIDGET_SWAPBUFFERS )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->swapBuffers();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateGL()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEGL )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->updateGL();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void updateOverlayGL()
*/
HB_FUNC_STATIC( QGLWIDGET_UPDATEOVERLAYGL )
{
  QGLWidget * obj = qobject_cast< QGLWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->updateOverlayGL();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QImage convertToGLFormat( const QImage & img )
*/
HB_FUNC_STATIC( QGLWIDGET_CONVERTTOGLFORMAT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR( 1 ) && ISQIMAGE( 1 ) )
  {
#endif
    QImage * ptr = new QImage( QGLWidget::convertToGLFormat( *PQIMAGE( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QIMAGE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

#pragma ENDDUMP
