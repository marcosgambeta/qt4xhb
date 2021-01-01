/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTENGINE
REQUEST QPRINTENGINE
REQUEST QRECT
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPrinter INHERIT QPaintDevice

   METHOD new
   METHOD delete
   METHOD abort
   METHOD collateCopies
   METHOD colorMode
   METHOD copyCount
   METHOD creator
   METHOD docName
   METHOD doubleSidedPrinting
   METHOD duplex
   METHOD fontEmbeddingEnabled
   METHOD fromPage
   METHOD fullPage
   METHOD isValid
   METHOD newPage
   METHOD orientation
   METHOD outputFileName
   METHOD outputFormat
   METHOD pageOrder
   METHOD pageRect
   METHOD paperRect
   METHOD paperSize
   METHOD paperSource
   METHOD printEngine
   METHOD printProgram
   METHOD printRange
   METHOD printerName
   METHOD printerState
   METHOD resolution
   METHOD setCollateCopies
   METHOD setColorMode
   METHOD setCopyCount
   METHOD setCreator
   METHOD setDocName
   METHOD setDoubleSidedPrinting
   METHOD setDuplex
   METHOD setFontEmbeddingEnabled
   METHOD setFromTo
   METHOD setFullPage
   METHOD setOrientation
   METHOD setOutputFileName
   METHOD setOutputFormat
   METHOD setPageMargins
   METHOD setPageOrder
   METHOD setPaperSize
   METHOD setPaperSource
   METHOD setPrintProgram
   METHOD setPrintRange
   METHOD setPrinterName
   METHOD setResolution
   METHOD setWinPageSize
   METHOD supportedPaperSources
   METHOD supportedResolutions
   METHOD supportsMultipleCopies
   METHOD toPage
   METHOD winPageSize
   METHOD paintEngine

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPrinter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPrinter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtCore/QList>

/*
QPrinter( QPrinter::PrinterMode mode = QPrinter::ScreenResolution )
*/
void QPrinter_new1()
{
  QPrinter * obj = new QPrinter( ISNIL( 1 )? ( QPrinter::PrinterMode ) QPrinter::ScreenResolution : ( QPrinter::PrinterMode ) hb_parni( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPrinter( const QPrinterInfo & printer, QPrinter::PrinterMode mode = QPrinter::ScreenResolution )
*/
void QPrinter_new2()
{
  QPrinter * obj = new QPrinter( *PQPRINTERINFO( 1 ), ISNIL( 2 )? ( QPrinter::PrinterMode ) QPrinter::ScreenResolution : ( QPrinter::PrinterMode ) hb_parni( 2 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISNUM( 1 ) || ISNIL( 1 ) ) )
  {
    QPrinter_new1();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQPRINTERINFO( 1 ) && ISNUM( 2 ) )
  {
    QPrinter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTER_DELETE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

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
bool abort()
*/
HB_FUNC_STATIC( QPRINTER_ABORT )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->abort() );
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
bool collateCopies() const
*/
HB_FUNC_STATIC( QPRINTER_COLLATECOPIES )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->collateCopies() );
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
QPrinter::ColorMode colorMode() const
*/
HB_FUNC_STATIC( QPRINTER_COLORMODE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->colorMode() );
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
int copyCount() const
*/
HB_FUNC_STATIC( QPRINTER_COPYCOUNT )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->copyCount() );
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
QString creator() const
*/
HB_FUNC_STATIC( QPRINTER_CREATOR )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->creator() );
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
QString docName() const
*/
HB_FUNC_STATIC( QPRINTER_DOCNAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->docName() );
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
bool doubleSidedPrinting() const
*/
HB_FUNC_STATIC( QPRINTER_DOUBLESIDEDPRINTING )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->doubleSidedPrinting() );
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
QPrinter::DuplexMode duplex() const
*/
HB_FUNC_STATIC( QPRINTER_DUPLEX )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->duplex() );
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
bool fontEmbeddingEnabled() const
*/
HB_FUNC_STATIC( QPRINTER_FONTEMBEDDINGENABLED )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->fontEmbeddingEnabled() );
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
int fromPage() const
*/
HB_FUNC_STATIC( QPRINTER_FROMPAGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->fromPage() );
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
bool fullPage() const
*/
HB_FUNC_STATIC( QPRINTER_FULLPAGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->fullPage() );
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
HB_FUNC_STATIC( QPRINTER_ISVALID )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

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
bool newPage()
*/
HB_FUNC_STATIC( QPRINTER_NEWPAGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->newPage() );
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
QPrinter::Orientation orientation() const
*/
HB_FUNC_STATIC( QPRINTER_ORIENTATION )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->orientation() );
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
QString outputFileName() const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFILENAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->outputFileName() );
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
QPrinter::OutputFormat outputFormat() const
*/
HB_FUNC_STATIC( QPRINTER_OUTPUTFORMAT )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->outputFormat() );
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
QPrinter::PageOrder pageOrder() const
*/
HB_FUNC_STATIC( QPRINTER_PAGEORDER )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->pageOrder() );
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
QRect pageRect() const
*/
void QPrinter_pageRect1()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->pageRect() );
    Qt4xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
QRectF pageRect( QPrinter::Unit unit ) const
*/
void QPrinter_pageRect2()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->pageRect( ( QPrinter::Unit ) hb_parni( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QRECTF", true );
  }
}

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR( 0 ) )
  {
    QPrinter_pageRect1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPrinter_pageRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect paperRect() const
*/
void QPrinter_paperRect1()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->paperRect() );
    Qt4xHb::createReturnClass( ptr, "QRECT", true );
  }
}

/*
QRectF paperRect( QPrinter::Unit unit ) const
*/
void QPrinter_paperRect2()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->paperRect( ( QPrinter::Unit ) hb_parni( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QRECTF", true );
  }
}

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR( 0 ) )
  {
    QPrinter_paperRect1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPrinter_paperRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPrinter::PaperSize paperSize() const
*/
void QPrinter_paperSize1()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RENUM( obj->paperSize() );
  }
}

/*
QSizeF paperSize( QPrinter::Unit unit ) const
*/
void QPrinter_paperSize2()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->paperSize( ( QPrinter::Unit ) hb_parni( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QSIZEF", true );
  }
}

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR( 0 ) )
  {
    QPrinter_paperSize1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPrinter_paperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPrinter::PaperSource paperSource() const
*/
HB_FUNC_STATIC( QPRINTER_PAPERSOURCE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->paperSource() );
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
QPrintEngine * printEngine() const
*/
HB_FUNC_STATIC( QPRINTER_PRINTENGINE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPrintEngine * ptr = obj->printEngine();
      Qt4xHb::createReturnClass( ptr, "QPRINTENGINE", false );
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
QString printProgram() const
*/
HB_FUNC_STATIC( QPRINTER_PRINTPROGRAM )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->printProgram() );
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
QPrinter::PrintRange printRange() const
*/
HB_FUNC_STATIC( QPRINTER_PRINTRANGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->printRange() );
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
QString printerName() const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERNAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->printerName() );
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
QPrinter::PrinterState printerState() const
*/
HB_FUNC_STATIC( QPRINTER_PRINTERSTATE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->printerState() );
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
int resolution() const
*/
HB_FUNC_STATIC( QPRINTER_RESOLUTION )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->resolution() );
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
void setCollateCopies( bool collate )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLLATECOPIES )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setCollateCopies( PBOOL( 1 ) );
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
void setColorMode( QPrinter::ColorMode newColorMode )
*/
HB_FUNC_STATIC( QPRINTER_SETCOLORMODE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setColorMode( ( QPrinter::ColorMode ) hb_parni( 1 ) );
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
void setCopyCount( int count )
*/
HB_FUNC_STATIC( QPRINTER_SETCOPYCOUNT )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setCopyCount( PINT( 1 ) );
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
void setCreator( const QString & creator )
*/
HB_FUNC_STATIC( QPRINTER_SETCREATOR )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setCreator( PQSTRING( 1 ) );
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
void setDocName( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETDOCNAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setDocName( PQSTRING( 1 ) );
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
void setDoubleSidedPrinting( bool doubleSided )
*/
HB_FUNC_STATIC( QPRINTER_SETDOUBLESIDEDPRINTING )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setDoubleSidedPrinting( PBOOL( 1 ) );
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
void setDuplex( QPrinter::DuplexMode duplex )
*/
HB_FUNC_STATIC( QPRINTER_SETDUPLEX )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setDuplex( ( QPrinter::DuplexMode ) hb_parni( 1 ) );
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
void setFontEmbeddingEnabled( bool enable )
*/
HB_FUNC_STATIC( QPRINTER_SETFONTEMBEDDINGENABLED )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setFontEmbeddingEnabled( PBOOL( 1 ) );
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
void setFromTo( int from, int to )
*/
HB_FUNC_STATIC( QPRINTER_SETFROMTO )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
    {
#endif
      obj->setFromTo( PINT( 1 ), PINT( 2 ) );
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
void setFullPage( bool fp )
*/
HB_FUNC_STATIC( QPRINTER_SETFULLPAGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setFullPage( PBOOL( 1 ) );
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
void setOrientation( QPrinter::Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTER_SETORIENTATION )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setOrientation( ( QPrinter::Orientation ) hb_parni( 1 ) );
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
void setOutputFileName( const QString & fileName )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFILENAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setOutputFileName( PQSTRING( 1 ) );
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
void setOutputFormat( QPrinter::OutputFormat format )
*/
HB_FUNC_STATIC( QPRINTER_SETOUTPUTFORMAT )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setOutputFormat( ( QPrinter::OutputFormat ) hb_parni( 1 ) );
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
void setPageMargins( qreal left, qreal top, qreal right, qreal bottom, QPrinter::Unit unit )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 5 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) && ISNUM( 4 ) && ISNUM( 5 ) )
    {
#endif
      obj->setPageMargins( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), ( QPrinter::Unit ) hb_parni( 5 ) );
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
void setPageOrder( QPrinter::PageOrder pageOrder )
*/
HB_FUNC_STATIC( QPRINTER_SETPAGEORDER )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setPageOrder( ( QPrinter::PageOrder ) hb_parni( 1 ) );
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
void setPaperSize( QPrinter::PaperSize newPaperSize )
*/
void QPrinter_setPaperSize1()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPaperSize( ( QPrinter::PaperSize ) hb_parni( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaperSize( const QSizeF & paperSize, QPrinter::Unit unit )
*/
void QPrinter_setPaperSize2()
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPaperSize( *PQSIZEF( 1 ), ( QPrinter::Unit ) hb_parni( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPrinter_setPaperSize1();
  }
  else if( ISNUMPAR( 2 ) && ISQSIZEF( 1 ) && ISNUM( 2 ) )
  {
    QPrinter_setPaperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPaperSource( QPrinter::PaperSource source )
*/
HB_FUNC_STATIC( QPRINTER_SETPAPERSOURCE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setPaperSource( ( QPrinter::PaperSource ) hb_parni( 1 ) );
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
void setPrintProgram( const QString & printProg )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTPROGRAM )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setPrintProgram( PQSTRING( 1 ) );
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
void setPrintRange( QPrinter::PrintRange range )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTRANGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setPrintRange( ( QPrinter::PrintRange ) hb_parni( 1 ) );
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
void setPrinterName( const QString & name )
*/
HB_FUNC_STATIC( QPRINTER_SETPRINTERNAME )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      obj->setPrinterName( PQSTRING( 1 ) );
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
void setResolution( int dpi )
*/
HB_FUNC_STATIC( QPRINTER_SETRESOLUTION )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setResolution( PINT( 1 ) );
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
void setWinPageSize ( int pageSize )
*/
HB_FUNC_STATIC( QPRINTER_SETWINPAGESIZE )
{
#ifdef Q_WS_WIN
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setWinPageSize( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}
/*
QList<PaperSource> supportedPaperSources () const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDPAPERSOURCES )
{
#ifdef Q_WS_WIN
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QList<QPrinter::PaperSource> list = obj->supportedPaperSources();
      PHB_ITEM pArray = hb_itemArrayNew( 0 );
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease( pItem );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}
/*
QList<int> supportedResolutions() const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTEDRESOLUTIONS )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QList<int> list = obj->supportedResolutions();
      Qt4xHb::convert_qlist_int_to_array( list );
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
bool supportsMultipleCopies() const
*/
HB_FUNC_STATIC( QPRINTER_SUPPORTSMULTIPLECOPIES )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->supportsMultipleCopies() );
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
int toPage() const
*/
HB_FUNC_STATIC( QPRINTER_TOPAGE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->toPage() );
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
int winPageSize () const
*/
HB_FUNC_STATIC( QPRINTER_WINPAGESIZE )
{
#ifdef Q_WS_WIN
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->winPageSize() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}
/*
virtual QPaintEngine * paintEngine() const
*/
HB_FUNC_STATIC( QPRINTER_PAINTENGINE )
{
  QPrinter * obj = ( QPrinter * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPaintEngine * ptr = obj->paintEngine();
      Qt4xHb::createReturnClass( ptr, "QPAINTENGINE", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
