//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTWEBKIT_H
#define QT4XHB_MACROS_QTWEBKIT_H

#define ISQGRAPHICSWEBVIEW(n)                               Qt4xHb::isObjectDerivedFrom(n, "QGraphicsWebView")
#define ISQWEBDATABASE(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QWebDatabase")
#define ISQWEBELEMENT(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QWebElement")
#define ISQWEBELEMENTCOLLECTION(n)                          Qt4xHb::isObjectDerivedFrom(n, "QWebElementCollection")
#define ISQWEBFRAME(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QWebFrame")
#define ISQWEBHISTORY(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QWebHistory")
#define ISQWEBHISTORYINTERFACE(n)                           Qt4xHb::isObjectDerivedFrom(n, "QWebHistoryInterface")
#define ISQWEBHISTORYITEM(n)                                Qt4xHb::isObjectDerivedFrom(n, "QWebHistoryItem")
#define ISQWEBHITTESTRESULT(n)                              Qt4xHb::isObjectDerivedFrom(n, "QWebHitTestResult")
#define ISQWEBINSPECTOR(n)                                  Qt4xHb::isObjectDerivedFrom(n, "QWebInspector")
#define ISQWEBPAGE(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QWebPage")
#define ISQWEBPLUGINFACTORY(n)                              Qt4xHb::isObjectDerivedFrom(n, "QWebPluginFactory")
#define ISQWEBSECURITYORIGIN(n)                             Qt4xHb::isObjectDerivedFrom(n, "QWebSecurityOrigin")
#define ISQWEBSETTINGS(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QWebSettings")
#define ISQWEBVIEW(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QWebView")

#define PQGRAPHICSWEBVIEW(n)                                static_cast<QGraphicsWebView*>(Qt4xHb::itemGetPtr(n))
#define PQWEBDATABASE(n)                                    static_cast<QWebDatabase*>(Qt4xHb::itemGetPtr(n))
#define PQWEBELEMENT(n)                                     static_cast<QWebElement*>(Qt4xHb::itemGetPtr(n))
#define PQWEBELEMENTCOLLECTION(n)                           static_cast<QWebElementCollection*>(Qt4xHb::itemGetPtr(n))
#define PQWEBFRAME(n)                                       static_cast<QWebFrame*>(Qt4xHb::itemGetPtr(n))
#define PQWEBHISTORY(n)                                     static_cast<QWebHistory*>(Qt4xHb::itemGetPtr(n))
#define PQWEBHISTORYINTERFACE(n)                            static_cast<QWebHistoryInterface*>(Qt4xHb::itemGetPtr(n))
#define PQWEBHISTORYITEM(n)                                 static_cast<QWebHistoryItem*>(Qt4xHb::itemGetPtr(n))
#define PQWEBHITTESTRESULT(n)                               static_cast<QWebHitTestResult*>(Qt4xHb::itemGetPtr(n))
#define PQWEBINSPECTOR(n)                                   static_cast<QWebInspector*>(Qt4xHb::itemGetPtr(n))
#define PQWEBPAGE(n)                                        static_cast<QWebPage*>(Qt4xHb::itemGetPtr(n))
#define PQWEBPLUGINFACTORY(n)                               static_cast<QWebPluginFactory*>(Qt4xHb::itemGetPtr(n))
#define PQWEBSECURITYORIGIN(n)                              static_cast<QWebSecurityOrigin*>(Qt4xHb::itemGetPtr(n))
#define PQWEBSETTINGS(n)                                    static_cast<QWebSettings*>(Qt4xHb::itemGetPtr(n))
#define PQWEBVIEW(n)                                        static_cast<QWebView*>(Qt4xHb::itemGetPtr(n))

#define OPQGRAPHICSWEBVIEW(n, v)                            HB_ISNIL(n) ? v : static_cast<QGraphicsWebView*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBDATABASE(n, v)                                HB_ISNIL(n) ? v : static_cast<QWebDatabase*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBELEMENT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QWebElement*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBELEMENTCOLLECTION(n, v)                       HB_ISNIL(n) ? v : static_cast<QWebElementCollection*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBFRAME(n, v)                                   HB_ISNIL(n) ? v : static_cast<QWebFrame*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBHISTORY(n, v)                                 HB_ISNIL(n) ? v : static_cast<QWebHistory*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBHISTORYINTERFACE(n, v)                        HB_ISNIL(n) ? v : static_cast<QWebHistoryInterface*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBHISTORYITEM(n, v)                             HB_ISNIL(n) ? v : static_cast<QWebHistoryItem*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBHITTESTRESULT(n, v)                           HB_ISNIL(n) ? v : static_cast<QWebHitTestResult*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBINSPECTOR(n, v)                               HB_ISNIL(n) ? v : static_cast<QWebInspector*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBPAGE(n, v)                                    HB_ISNIL(n) ? v : static_cast<QWebPage*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBPLUGINFACTORY(n, v)                           HB_ISNIL(n) ? v : static_cast<QWebPluginFactory*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBSECURITYORIGIN(n, v)                          HB_ISNIL(n) ? v : static_cast<QWebSecurityOrigin*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBSETTINGS(n, v)                                HB_ISNIL(n) ? v : static_cast<QWebSettings*>(Qt4xHb::itemGetPtr(n))
#define OPQWEBVIEW(n, v)                                    HB_ISNIL(n) ? v : static_cast<QWebView*>(Qt4xHb::itemGetPtr(n))

#endif // QT4XHB_MACROS_QTWEBKIT_H
