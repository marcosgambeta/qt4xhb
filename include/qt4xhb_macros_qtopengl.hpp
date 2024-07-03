//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTOPENGL_H
#define QT4XHB_MACROS_QTOPENGL_H

#define ISQGLBUFFER(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QGLBuffer")
#define ISQGLCOLORMAP(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QGLColormap")
#define ISQGLCONTEXT(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QGLContext")
#define ISQGLFORMAT(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QGLFormat")
#define ISQGLFRAMEBUFFEROBJECT(n)                           Qt4xHb::isObjectDerivedFrom(n, "QGLFramebufferObject")
#define ISQGLFRAMEBUFFEROBJECTFORMAT(n)                     Qt4xHb::isObjectDerivedFrom(n, "QGLFramebufferObjectFormat")
#define ISQGLFUNCTIONS(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QGLFunctions")
#define ISQGLPIXELBUFFER(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QGLPixelBuffer")
#define ISQGLSHADER(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QGLShader")
#define ISQGLSHADERPROGRAM(n)                               Qt4xHb::isObjectDerivedFrom(n, "QGLShaderProgram")
#define ISQGLWIDGET(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QGLWidget")

#define PQGLBUFFER(n)                                       static_cast<QGLBuffer*>(Qt4xHb::itemGetPtr(n))
#define PQGLCOLORMAP(n)                                     static_cast<QGLColormap*>(Qt4xHb::itemGetPtr(n))
#define PQGLCONTEXT(n)                                      static_cast<QGLContext*>(Qt4xHb::itemGetPtr(n))
#define PQGLFORMAT(n)                                       static_cast<QGLFormat*>(Qt4xHb::itemGetPtr(n))
#define PQGLFRAMEBUFFEROBJECT(n)                            static_cast<QGLFramebufferObject*>(Qt4xHb::itemGetPtr(n))
#define PQGLFRAMEBUFFEROBJECTFORMAT(n)                      static_cast<QGLFramebufferObjectFormat*>(Qt4xHb::itemGetPtr(n))
#define PQGLFUNCTIONS(n)                                    static_cast<QGLFunctions*>(Qt4xHb::itemGetPtr(n))
#define PQGLPIXELBUFFER(n)                                  static_cast<QGLPixelBuffer*>(Qt4xHb::itemGetPtr(n))
#define PQGLSHADER(n)                                       static_cast<QGLShader*>(Qt4xHb::itemGetPtr(n))
#define PQGLSHADERPROGRAM(n)                                static_cast<QGLShaderProgram*>(Qt4xHb::itemGetPtr(n))
#define PQGLWIDGET(n)                                       static_cast<QGLWidget*>(Qt4xHb::itemGetPtr(n))

#define OPQGLBUFFER(n, v)                                   HB_ISNIL(n) ? v : static_cast<QGLBuffer*>(Qt4xHb::itemGetPtr(n))
#define OPQGLCOLORMAP(n, v)                                 HB_ISNIL(n) ? v : static_cast<QGLColormap*>(Qt4xHb::itemGetPtr(n))
#define OPQGLCONTEXT(n, v)                                  HB_ISNIL(n) ? v : static_cast<QGLContext*>(Qt4xHb::itemGetPtr(n))
#define OPQGLFORMAT(n, v)                                   HB_ISNIL(n) ? v : static_cast<QGLFormat*>(Qt4xHb::itemGetPtr(n))
#define OPQGLFRAMEBUFFEROBJECT(n, v)                        HB_ISNIL(n) ? v : static_cast<QGLFramebufferObject*>(Qt4xHb::itemGetPtr(n))
#define OPQGLFRAMEBUFFEROBJECTFORMAT(n, v)                  HB_ISNIL(n) ? v : static_cast<QGLFramebufferObjectFormat*>(Qt4xHb::itemGetPtr(n))
#define OPQGLFUNCTIONS(n, v)                                HB_ISNIL(n) ? v : static_cast<QGLFunctions*>(Qt4xHb::itemGetPtr(n))
#define OPQGLPIXELBUFFER(n, v)                              HB_ISNIL(n) ? v : static_cast<QGLPixelBuffer*>(Qt4xHb::itemGetPtr(n))
#define OPQGLSHADER(n, v)                                   HB_ISNIL(n) ? v : static_cast<QGLShader*>(Qt4xHb::itemGetPtr(n))
#define OPQGLSHADERPROGRAM(n, v)                            HB_ISNIL(n) ? v : static_cast<QGLShaderProgram*>(Qt4xHb::itemGetPtr(n))
#define OPQGLWIDGET(n, v)                                   HB_ISNIL(n) ? v : static_cast<QGLWidget*>(Qt4xHb::itemGetPtr(n))

#endif // QT4XHB_MACROS_QTOPENGL_H
