/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QVARIANT
#endif

CLASS QSettings INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allKeys
   METHOD applicationName
   METHOD beginGroup
   METHOD beginReadArray
   METHOD beginWriteArray
   METHOD childGroups
   METHOD childKeys
   METHOD clear
   METHOD contains
   METHOD endArray
   METHOD endGroup
   METHOD fallbacksEnabled
   METHOD fileName
   METHOD format
   METHOD group
   METHOD iniCodec
   METHOD isWritable
   METHOD organizationName
   METHOD remove
   METHOD scope
   METHOD setArrayIndex
   METHOD setFallbacksEnabled
   METHOD setIniCodec
   METHOD setValue
   METHOD status
   METHOD sync
   METHOD value
   METHOD defaultFormat
   METHOD setDefaultFormat
   METHOD setPath

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSettings
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSettings>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new1 ()
{
  QSettings * o = new QSettings ( PQSTRING(1), OPQSTRING(2,QString()), OPQOBJECT(3,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new2 ()
{
  QSettings * o = new QSettings ( (QSettings::Scope) hb_parni(1), PQSTRING(2), OPQSTRING(3,QString()), OPQOBJECT(4,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
*/
void QSettings_new3 ()
{
  QSettings * o = new QSettings ( (QSettings::Format) hb_parni(1), (QSettings::Scope) hb_parni(2), PQSTRING(3), OPQSTRING(4,QString()), OPQOBJECT(5,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
*/
void QSettings_new4 ()
{
  QSettings * o = new QSettings ( PQSTRING(1), (QSettings::Format) hb_parni(2), OPQOBJECT(3,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QSettings ( QObject * parent = 0 )
*/
void QSettings_new5 ()
{
  QSettings * o = new QSettings ( OPQOBJECT(1,0) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QSettings ( const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[2]QSettings ( Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[3]QSettings ( Format format, Scope scope, const QString & organization, const QString & application = QString(), QObject * parent = 0 )
//[4]QSettings ( const QString & fileName, Format format, QObject * parent = 0 )
//[5]QSettings ( QObject * parent = 0 )

HB_FUNC_STATIC( QSETTINGS_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QSettings_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QSettings_new2();
  }
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISNUM(2) && ISCHAR(3) && (ISCHAR(4)||ISNIL(4)) && (ISQOBJECT(5)||ISNIL(5)) )
  {
    QSettings_new3();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && (ISQOBJECT(3)||ISNIL(3)) )
  {
    QSettings_new4();
  }
  else if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSettings_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSETTINGS_DELETE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QStringList allKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_ALLKEYS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->allKeys () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString applicationName () const
*/
HB_FUNC_STATIC( QSETTINGS_APPLICATIONNAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->applicationName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void beginGroup ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINGROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->beginGroup ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int beginReadArray ( const QString & prefix )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINREADARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RINT( obj->beginReadArray ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void beginWriteArray ( const QString & prefix, int size = -1 )
*/
HB_FUNC_STATIC( QSETTINGS_BEGINWRITEARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
    {
      obj->beginWriteArray ( PQSTRING(1), OPINT(2,-1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList childGroups () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDGROUPS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->childGroups () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList childKeys () const
*/
HB_FUNC_STATIC( QSETTINGS_CHILDKEYS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRINGLIST( obj->childKeys () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSETTINGS_CLEAR )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clear ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QSETTINGS_CONTAINS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->contains ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void endArray ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDARRAY )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->endArray ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void endGroup ()
*/
HB_FUNC_STATIC( QSETTINGS_ENDGROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->endGroup ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool fallbacksEnabled () const
*/
HB_FUNC_STATIC( QSETTINGS_FALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->fallbacksEnabled () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QSETTINGS_FILENAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->fileName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Format format () const
*/
HB_FUNC_STATIC( QSETTINGS_FORMAT )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->format () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString group () const
*/
HB_FUNC_STATIC( QSETTINGS_GROUP )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->group () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QTextCodec * iniCodec () const
*/
HB_FUNC_STATIC( QSETTINGS_INICODEC )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QTextCodec * ptr = obj->iniCodec ();
      _qt4xhb_createReturnClass ( ptr, "QTEXTCODEC", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWritable () const
*/
HB_FUNC_STATIC( QSETTINGS_ISWRITABLE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isWritable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString organizationName () const
*/
HB_FUNC_STATIC( QSETTINGS_ORGANIZATIONNAME )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->organizationName () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void remove ( const QString & key )
*/
HB_FUNC_STATIC( QSETTINGS_REMOVE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->remove ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Scope scope () const
*/
HB_FUNC_STATIC( QSETTINGS_SCOPE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->scope () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setArrayIndex ( int i )
*/
HB_FUNC_STATIC( QSETTINGS_SETARRAYINDEX )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setArrayIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFallbacksEnabled ( bool b )
*/
HB_FUNC_STATIC( QSETTINGS_SETFALLBACKSENABLED )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setFallbacksEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIniCodec ( QTextCodec * codec )
*/
void QSettings_setIniCodec1 ()
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setIniCodec ( PQTEXTCODEC(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIniCodec ( const char * codecName )
*/
void QSettings_setIniCodec2 ()
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setIniCodec ( PCONSTCHAR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setIniCodec ( QTextCodec * codec )
//[2]void setIniCodec ( const char * codecName )

HB_FUNC_STATIC( QSETTINGS_SETINICODEC )
{
  if( ISNUMPAR(1) && ISQTEXTCODEC(1) )
  {
    QSettings_setIniCodec1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSettings_setIniCodec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QSETTINGS_SETVALUE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
    {
      obj->setValue ( PQSTRING(1), *PQVARIANT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Status status () const
*/
HB_FUNC_STATIC( QSETTINGS_STATUS )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->status () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void sync ()
*/
HB_FUNC_STATIC( QSETTINGS_SYNC )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->sync ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVariant value ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QSETTINGS_VALUE )
{
  QSettings * obj = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
    {
      QVariant * ptr = new QVariant( obj->value ( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static Format defaultFormat ()
*/
HB_FUNC_STATIC( QSETTINGS_DEFAULTFORMAT )
{
    if( ISNUMPAR(0) )
  {
      RENUM( QSettings::defaultFormat () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setDefaultFormat ( Format format )
*/
HB_FUNC_STATIC( QSETTINGS_SETDEFAULTFORMAT )
{
    if( ISNUMPAR(1) && ISNUM(1) )
  {
      QSettings::setDefaultFormat ( (QSettings::Format) hb_parni(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setPath ( Format format, Scope scope, const QString & path )
*/
HB_FUNC_STATIC( QSETTINGS_SETPATH )
{
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISCHAR(3) )
  {
      QSettings::setPath ( (QSettings::Format) hb_parni(1), (QSettings::Scope) hb_parni(2), PQSTRING(3) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
