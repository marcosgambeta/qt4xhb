/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTSCRIPT_H
#define QT4XHB_MACROS_QTSCRIPT_H

#define ISQSCRIPTABLE(n)                                    Qt4xHb::isObjectDerivedFrom(n,"QScriptable")
#define ISQSCRIPTCLASS(n)                                   Qt4xHb::isObjectDerivedFrom(n,"QScriptClass")
#define ISQSCRIPTCLASSPROPERTYITERATOR(n)                   Qt4xHb::isObjectDerivedFrom(n,"QScriptClassPropertyIterator")
#define ISQSCRIPTCONTEXT(n)                                 Qt4xHb::isObjectDerivedFrom(n,"QScriptContext")
#define ISQSCRIPTCONTEXTINFO(n)                             Qt4xHb::isObjectDerivedFrom(n,"QScriptContextInfo")
#define ISQSCRIPTENGINE(n)                                  Qt4xHb::isObjectDerivedFrom(n,"QScriptEngine")
#define ISQSCRIPTENGINEAGENT(n)                             Qt4xHb::isObjectDerivedFrom(n,"QScriptEngineAgent")
#define ISQSCRIPTEXTENSIONPLUGIN(n)                         Qt4xHb::isObjectDerivedFrom(n,"QScriptExtensionPlugin")
#define ISQSCRIPTPROGRAM(n)                                 Qt4xHb::isObjectDerivedFrom(n,"QScriptProgram")
#define ISQSCRIPTSTRING(n)                                  Qt4xHb::isObjectDerivedFrom(n,"QScriptString")
#define ISQSCRIPTSYNTAXCHECKRESULT(n)                       Qt4xHb::isObjectDerivedFrom(n,"QScriptSyntaxCheckResult")
#define ISQSCRIPTVALUE(n)                                   Qt4xHb::isObjectDerivedFrom(n,"QScriptValue")
#define ISQSCRIPTVALUEITERATOR(n)                           Qt4xHb::isObjectDerivedFrom(n,"QScriptValueIterator")

#define PQSCRIPTABLE(n)                                     (QScriptable *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTCLASS(n)                                    (QScriptClass *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTCLASSPROPERTYITERATOR(n)                    (QScriptClassPropertyIterator *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTCONTEXT(n)                                  (QScriptContext *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTCONTEXTINFO(n)                              (QScriptContextInfo *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTENGINE(n)                                   (QScriptEngine *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTENGINEAGENT(n)                              (QScriptEngineAgent *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTEXTENSIONPLUGIN(n)                          (QScriptExtensionPlugin *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTPROGRAM(n)                                  (QScriptProgram *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTSTRING(n)                                   (QScriptString *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTSYNTAXCHECKRESULT(n)                        (QScriptSyntaxCheckResult *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTVALUE(n)                                    (QScriptValue *) Qt4xHb::itemGetPtr(n)
#define PQSCRIPTVALUEITERATOR(n)                            (QScriptValueIterator *) Qt4xHb::itemGetPtr(n)

#define OPQSCRIPTABLE(n,v)                                  ISNIL(n)? v : (QScriptable *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTCLASS(n,v)                                 ISNIL(n)? v : (QScriptClass *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTCLASSPROPERTYITERATOR(n,v)                 ISNIL(n)? v : (QScriptClassPropertyIterator *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTCONTEXT(n,v)                               ISNIL(n)? v : (QScriptContext *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTCONTEXTINFO(n,v)                           ISNIL(n)? v : (QScriptContextInfo *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTENGINE(n,v)                                ISNIL(n)? v : (QScriptEngine *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTENGINEAGENT(n,v)                           ISNIL(n)? v : (QScriptEngineAgent *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTEXTENSIONPLUGIN(n,v)                       ISNIL(n)? v : (QScriptExtensionPlugin *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTPROGRAM(n,v)                               ISNIL(n)? v : (QScriptProgram *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTSTRING(n,v)                                ISNIL(n)? v : (QScriptString *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTSYNTAXCHECKRESULT(n,v)                     ISNIL(n)? v : (QScriptSyntaxCheckResult *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTVALUE(n,v)                                 ISNIL(n)? v : (QScriptValue *) Qt4xHb::itemGetPtr(n)
#define OPQSCRIPTVALUEITERATOR(n,v)                         ISNIL(n)? v : (QScriptValueIterator *) Qt4xHb::itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTSCRIPT_H */
