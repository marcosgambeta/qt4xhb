//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTHELP_H
#define QT4XHB_MACROS_QTHELP_H

#define ISQHELPCONTENTITEM(n)                               Qt4xHb::isObjectDerivedFrom(n, "QHelpContentItem")
#define ISQHELPCONTENTMODEL(n)                              Qt4xHb::isObjectDerivedFrom(n, "QHelpContentModel")
#define ISQHELPCONTENTWIDGET(n)                             Qt4xHb::isObjectDerivedFrom(n, "QHelpContentWidget")
#define ISQHELPENGINE(n)                                    Qt4xHb::isObjectDerivedFrom(n, "QHelpEngine")
#define ISQHELPENGINECORE(n)                                Qt4xHb::isObjectDerivedFrom(n, "QHelpEngineCore")
#define ISQHELPINDEXMODEL(n)                                Qt4xHb::isObjectDerivedFrom(n, "QHelpIndexModel")
#define ISQHELPINDEXWIDGET(n)                               Qt4xHb::isObjectDerivedFrom(n, "QHelpIndexWidget")
#define ISQHELPSEARCHENGINE(n)                              Qt4xHb::isObjectDerivedFrom(n, "QHelpSearchEngine")
#define ISQHELPSEARCHQUERY(n)                               Qt4xHb::isObjectDerivedFrom(n, "QHelpSearchQuery")
#define ISQHELPSEARCHQUERYWIDGET(n)                         Qt4xHb::isObjectDerivedFrom(n, "QHelpSearchQueryWidget")
#define ISQHELPSEARCHRESULTWIDGET(n)                        Qt4xHb::isObjectDerivedFrom(n, "QHelpSearchResultWidget")

#define PQHELPCONTENTITEM(n)                                static_cast<QHelpContentItem *>(Qt4xHb::itemGetPtr(n))
#define PQHELPCONTENTMODEL(n)                               static_cast<QHelpContentModel *>(Qt4xHb::itemGetPtr(n))
#define PQHELPCONTENTWIDGET(n)                              static_cast<QHelpContentWidget *>(Qt4xHb::itemGetPtr(n))
#define PQHELPENGINE(n)                                     static_cast<QHelpEngine *>(Qt4xHb::itemGetPtr(n))
#define PQHELPENGINECORE(n)                                 static_cast<QHelpEngineCore *>(Qt4xHb::itemGetPtr(n))
#define PQHELPINDEXMODEL(n)                                 static_cast<QHelpIndexModel *>(Qt4xHb::itemGetPtr(n))
#define PQHELPINDEXWIDGET(n)                                static_cast<QHelpIndexWidget *>(Qt4xHb::itemGetPtr(n))
#define PQHELPSEARCHENGINE(n)                               static_cast<QHelpSearchEngine *>(Qt4xHb::itemGetPtr(n))
#define PQHELPSEARCHQUERY(n)                                static_cast<QHelpSearchQuery *>(Qt4xHb::itemGetPtr(n))
#define PQHELPSEARCHQUERYWIDGET(n)                          static_cast<QHelpSearchQueryWidget *>(Qt4xHb::itemGetPtr(n))
#define PQHELPSEARCHRESULTWIDGET(n)                         static_cast<QHelpSearchResultWidget *>(Qt4xHb::itemGetPtr(n))

#define OPQHELPCONTENTITEM(n, v)                            HB_ISNIL(n) ? v : static_cast<QHelpContentItem *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPCONTENTMODEL(n, v)                           HB_ISNIL(n) ? v : static_cast<QHelpContentModel *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPCONTENTWIDGET(n, v)                          HB_ISNIL(n) ? v : static_cast<QHelpContentWidget *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPENGINE(n, v)                                 HB_ISNIL(n) ? v : static_cast<QHelpEngine *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPENGINECORE(n, v)                             HB_ISNIL(n) ? v : static_cast<QHelpEngineCore *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPINDEXMODEL(n, v)                             HB_ISNIL(n) ? v : static_cast<QHelpIndexModel *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPINDEXWIDGET(n, v)                            HB_ISNIL(n) ? v : static_cast<QHelpIndexWidget *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPSEARCHENGINE(n, v)                           HB_ISNIL(n) ? v : static_cast<QHelpSearchEngine *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPSEARCHQUERY(n, v)                            HB_ISNIL(n) ? v : static_cast<QHelpSearchQuery *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPSEARCHQUERYWIDGET(n, v)                      HB_ISNIL(n) ? v : static_cast<QHelpSearchQueryWidget *>(Qt4xHb::itemGetPtr(n))
#define OPQHELPSEARCHRESULTWIDGET(n, v)                     HB_ISNIL(n) ? v : static_cast<QHelpSearchResultWidget *>(Qt4xHb::itemGetPtr(n))

#endif // QT4XHB_MACROS_QTHELP_H
