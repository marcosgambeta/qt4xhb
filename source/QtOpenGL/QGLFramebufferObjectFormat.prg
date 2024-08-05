//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QGLFramebufferObjectFormat INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD attachment
   METHOD internalTextureFormat
   METHOD samples
   METHOD setAttachment
   METHOD setInternalTextureFormat
   METHOD setSamples
   METHOD setTextureTarget
   METHOD textureTarget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGLFramebufferObjectFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtOpenGL/QGLFramebufferObjectFormat>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_NEW)
{
  if (ISNUMPAR(0))
  {
    // QGLFramebufferObjectFormat()
    QGLFramebufferObjectFormat *obj = new QGLFramebufferObjectFormat();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQGLFRAMEBUFFEROBJECTFORMAT(1))
  {
    // QGLFramebufferObjectFormat(const QGLFramebufferObjectFormat &other)
    QGLFramebufferObjectFormat *obj = new QGLFramebufferObjectFormat(*PQGLFRAMEBUFFEROBJECTFORMAT(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_DELETE)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// QGLFramebufferObject::Attachment attachment() const
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_ATTACHMENT)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->attachment());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// GLenum internalTextureFormat() const
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_INTERNALTEXTUREFORMAT)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLENUM(obj->internalTextureFormat());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// int samples() const
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_SAMPLES)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->samples());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setAttachment(QGLFramebufferObject::Attachment attachment)
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_SETATTACHMENT)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAttachment((QGLFramebufferObject::Attachment)hb_parni(1));
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

// void setInternalTextureFormat(GLenum internalTextureFormat)
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_SETINTERNALTEXTUREFORMAT)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setInternalTextureFormat(PGLENUM(1));
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

// void setSamples(int samples)
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_SETSAMPLES)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSamples(PINT(1));
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

// void setTextureTarget(GLenum target)
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_SETTEXTURETARGET)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setTextureTarget(PGLENUM(1));
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

// GLenum textureTarget() const
HB_FUNC_STATIC(QGLFRAMEBUFFEROBJECTFORMAT_TEXTURETARGET)
{
  QGLFramebufferObjectFormat *obj = static_cast<QGLFramebufferObjectFormat *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RGLENUM(obj->textureTarget());
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
