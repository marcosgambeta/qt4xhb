//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

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

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QPrinter>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QList>

HB_FUNC_STATIC(QPRINTER_NEW)
{
  if (ISBETWEEN(0, 1) && (HB_ISNUM(1) || HB_ISNIL(1)))
  {
    // QPrinter(QPrinter::PrinterMode mode = QPrinter::ScreenResolution)
    QPrinter *obj = new QPrinter(HB_ISNIL(1) ? (QPrinter::PrinterMode)QPrinter::ScreenResolution
                                             : (QPrinter::PrinterMode)hb_parni(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISBETWEEN(1, 2) && ISQPRINTERINFO(1) && HB_ISNUM(2))
  {
    // QPrinter(const QPrinterInfo &printer, QPrinter::PrinterMode mode = QPrinter::ScreenResolution)
    QPrinter *obj = new QPrinter(*PQPRINTERINFO(1), HB_ISNIL(2) ? (QPrinter::PrinterMode)QPrinter::ScreenResolution
                                                                : (QPrinter::PrinterMode)hb_parni(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPRINTER_DELETE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

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
bool abort()
*/
HB_FUNC_STATIC(QPRINTER_ABORT)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->abort());
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
bool collateCopies() const
*/
HB_FUNC_STATIC(QPRINTER_COLLATECOPIES)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->collateCopies());
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
QPrinter::ColorMode colorMode() const
*/
HB_FUNC_STATIC(QPRINTER_COLORMODE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->colorMode());
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
int copyCount() const
*/
HB_FUNC_STATIC(QPRINTER_COPYCOUNT)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->copyCount());
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
QString creator() const
*/
HB_FUNC_STATIC(QPRINTER_CREATOR)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->creator());
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
QString docName() const
*/
HB_FUNC_STATIC(QPRINTER_DOCNAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->docName());
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
bool doubleSidedPrinting() const
*/
HB_FUNC_STATIC(QPRINTER_DOUBLESIDEDPRINTING)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->doubleSidedPrinting());
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
QPrinter::DuplexMode duplex() const
*/
HB_FUNC_STATIC(QPRINTER_DUPLEX)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->duplex());
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
bool fontEmbeddingEnabled() const
*/
HB_FUNC_STATIC(QPRINTER_FONTEMBEDDINGENABLED)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->fontEmbeddingEnabled());
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
int fromPage() const
*/
HB_FUNC_STATIC(QPRINTER_FROMPAGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->fromPage());
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
bool fullPage() const
*/
HB_FUNC_STATIC(QPRINTER_FULLPAGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->fullPage());
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
bool isValid() const
*/
HB_FUNC_STATIC(QPRINTER_ISVALID)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
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
bool newPage()
*/
HB_FUNC_STATIC(QPRINTER_NEWPAGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->newPage());
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
QPrinter::Orientation orientation() const
*/
HB_FUNC_STATIC(QPRINTER_ORIENTATION)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->orientation());
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
QString outputFileName() const
*/
HB_FUNC_STATIC(QPRINTER_OUTPUTFILENAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->outputFileName());
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
QPrinter::OutputFormat outputFormat() const
*/
HB_FUNC_STATIC(QPRINTER_OUTPUTFORMAT)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->outputFormat());
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
QPrinter::PageOrder pageOrder() const
*/
HB_FUNC_STATIC(QPRINTER_PAGEORDER)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->pageOrder());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QPRINTER_PAGERECT)
{
  if (ISNUMPAR(0))
  {
    /*
    QRect pageRect() const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->pageRect());
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QRectF pageRect(QPrinter::Unit unit) const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRectF *ptr = new QRectF(obj->pageRect((QPrinter::Unit)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPRINTER_PAPERRECT)
{
  if (ISNUMPAR(0))
  {
    /*
    QRect paperRect() const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRect *ptr = new QRect(obj->paperRect());
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QRectF paperRect(QPrinter::Unit unit) const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QRectF *ptr = new QRectF(obj->paperRect((QPrinter::Unit)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QPRINTER_PAPERSIZE)
{
  if (ISNUMPAR(0))
  {
    /*
    QPrinter::PaperSize paperSize() const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      RENUM(obj->paperSize());
    }
  }
  else if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    QSizeF paperSize(QPrinter::Unit unit) const
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      QSizeF *ptr = new QSizeF(obj->paperSize((QPrinter::Unit)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QSIZEF", true);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QPrinter::PaperSource paperSource() const
*/
HB_FUNC_STATIC(QPRINTER_PAPERSOURCE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->paperSource());
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
QPrintEngine *printEngine() const
*/
HB_FUNC_STATIC(QPRINTER_PRINTENGINE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPrintEngine *ptr = obj->printEngine();
      Qt4xHb::createReturnClass(ptr, "QPRINTENGINE", false);
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
QString printProgram() const
*/
HB_FUNC_STATIC(QPRINTER_PRINTPROGRAM)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->printProgram());
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
QPrinter::PrintRange printRange() const
*/
HB_FUNC_STATIC(QPRINTER_PRINTRANGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->printRange());
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
QString printerName() const
*/
HB_FUNC_STATIC(QPRINTER_PRINTERNAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->printerName());
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
QPrinter::PrinterState printerState() const
*/
HB_FUNC_STATIC(QPRINTER_PRINTERSTATE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->printerState());
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
int resolution() const
*/
HB_FUNC_STATIC(QPRINTER_RESOLUTION)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->resolution());
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
void setCollateCopies(bool collate)
*/
HB_FUNC_STATIC(QPRINTER_SETCOLLATECOPIES)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setCollateCopies(PBOOL(1));
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
void setColorMode(QPrinter::ColorMode newColorMode)
*/
HB_FUNC_STATIC(QPRINTER_SETCOLORMODE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setColorMode((QPrinter::ColorMode)hb_parni(1));
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
void setCopyCount(int count)
*/
HB_FUNC_STATIC(QPRINTER_SETCOPYCOUNT)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCopyCount(PINT(1));
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
void setCreator(const QString &creator)
*/
HB_FUNC_STATIC(QPRINTER_SETCREATOR)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setCreator(PQSTRING(1));
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
void setDocName(const QString &name)
*/
HB_FUNC_STATIC(QPRINTER_SETDOCNAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setDocName(PQSTRING(1));
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
void setDoubleSidedPrinting(bool doubleSided)
*/
HB_FUNC_STATIC(QPRINTER_SETDOUBLESIDEDPRINTING)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setDoubleSidedPrinting(PBOOL(1));
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
void setDuplex(QPrinter::DuplexMode duplex)
*/
HB_FUNC_STATIC(QPRINTER_SETDUPLEX)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDuplex((QPrinter::DuplexMode)hb_parni(1));
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
void setFontEmbeddingEnabled(bool enable)
*/
HB_FUNC_STATIC(QPRINTER_SETFONTEMBEDDINGENABLED)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFontEmbeddingEnabled(PBOOL(1));
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
void setFromTo(int from, int to)
*/
HB_FUNC_STATIC(QPRINTER_SETFROMTO)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setFromTo(PINT(1), PINT(2));
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
void setFullPage(bool fp)
*/
HB_FUNC_STATIC(QPRINTER_SETFULLPAGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setFullPage(PBOOL(1));
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
void setOrientation(QPrinter::Orientation orientation)
*/
HB_FUNC_STATIC(QPRINTER_SETORIENTATION)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOrientation((QPrinter::Orientation)hb_parni(1));
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
void setOutputFileName(const QString &fileName)
*/
HB_FUNC_STATIC(QPRINTER_SETOUTPUTFILENAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setOutputFileName(PQSTRING(1));
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
void setOutputFormat(QPrinter::OutputFormat format)
*/
HB_FUNC_STATIC(QPRINTER_SETOUTPUTFORMAT)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOutputFormat((QPrinter::OutputFormat)hb_parni(1));
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
void setPageMargins(qreal left, qreal top, qreal right, qreal bottom, QPrinter::Unit unit)
*/
HB_FUNC_STATIC(QPRINTER_SETPAGEMARGINS)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(5) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3) && HB_ISNUM(4) && HB_ISNUM(5))
    {
#endif
      obj->setPageMargins(PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), (QPrinter::Unit)hb_parni(5));
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
void setPageOrder(QPrinter::PageOrder pageOrder)
*/
HB_FUNC_STATIC(QPRINTER_SETPAGEORDER)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPageOrder((QPrinter::PageOrder)hb_parni(1));
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

HB_FUNC_STATIC(QPRINTER_SETPAPERSIZE)
{
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
    /*
    void setPaperSize(QPrinter::PaperSize newPaperSize)
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setPaperSize((QPrinter::PaperSize)hb_parni(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQSIZEF(1) && HB_ISNUM(2))
  {
    /*
    void setPaperSize(const QSizeF &paperSize, QPrinter::Unit unit)
    */
    QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setPaperSize(*PQSIZEF(1), (QPrinter::Unit)hb_parni(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPaperSource(QPrinter::PaperSource source)
*/
HB_FUNC_STATIC(QPRINTER_SETPAPERSOURCE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPaperSource((QPrinter::PaperSource)hb_parni(1));
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
void setPrintProgram(const QString &printProg)
*/
HB_FUNC_STATIC(QPRINTER_SETPRINTPROGRAM)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPrintProgram(PQSTRING(1));
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
void setPrintRange(QPrinter::PrintRange range)
*/
HB_FUNC_STATIC(QPRINTER_SETPRINTRANGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPrintRange((QPrinter::PrintRange)hb_parni(1));
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
void setPrinterName(const QString &name)
*/
HB_FUNC_STATIC(QPRINTER_SETPRINTERNAME)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setPrinterName(PQSTRING(1));
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
void setResolution(int dpi)
*/
HB_FUNC_STATIC(QPRINTER_SETRESOLUTION)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setResolution(PINT(1));
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
void setWinPageSize (int pageSize)
*/
HB_FUNC_STATIC(QPRINTER_SETWINPAGESIZE)
{
#ifdef Q_WS_WIN
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setWinPageSize(PINT(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}
/*
QList<PaperSource> supportedPaperSources () const
*/
HB_FUNC_STATIC(QPRINTER_SUPPORTEDPAPERSOURCES)
{
#ifdef Q_WS_WIN
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QPrinter::PaperSource> list = obj->supportedPaperSources();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      const int count = list.count();
      for (int i = 0; i < count; i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, static_cast<int>(list[i]));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
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
#endif
}
/*
QList<int> supportedResolutions() const
*/
HB_FUNC_STATIC(QPRINTER_SUPPORTEDRESOLUTIONS)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<int> list = obj->supportedResolutions();
      Qt4xHb::convert_qlist_int_to_array(list);
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
bool supportsMultipleCopies() const
*/
HB_FUNC_STATIC(QPRINTER_SUPPORTSMULTIPLECOPIES)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->supportsMultipleCopies());
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
int toPage() const
*/
HB_FUNC_STATIC(QPRINTER_TOPAGE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->toPage());
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
int winPageSize () const
*/
HB_FUNC_STATIC(QPRINTER_WINPAGESIZE)
{
#ifdef Q_WS_WIN
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->winPageSize());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}
/*
virtual QPaintEngine *paintEngine() const
*/
HB_FUNC_STATIC(QPRINTER_PAINTENGINE)
{
  QPrinter *obj = static_cast<QPrinter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPaintEngine *ptr = obj->paintEngine();
      Qt4xHb::createReturnClass(ptr, "QPAINTENGINE", false);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
