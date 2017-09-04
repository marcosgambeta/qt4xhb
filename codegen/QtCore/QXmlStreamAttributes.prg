$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamAttributes

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append1
   METHOD append2
   METHOD append3
   METHOD append
   METHOD hasAttribute1
   METHOD hasAttribute2
   METHOD hasAttribute3
   METHOD hasAttribute
   METHOD value1
   METHOD value2
   METHOD value3
   METHOD value4
   METHOD value5
   METHOD value
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlStreamAttributes
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlStreamAttributes>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QXmlStreamAttributes()
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_NEW )
{
  QXmlStreamAttributes * o = new QXmlStreamAttributes ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_DELETE )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void append(const QString & namespaceUri, const QString & name, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void append(const QXmlStreamAttribute & attribute)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( *PQXMLSTREAMATTRIBUTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void append(const QString & qualifiedName, const QString & value)
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->append ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void append(const QString & namespaceUri, const QString & name, const QString & value)
//[2]void append(const QXmlStreamAttribute & attribute)
//[3]void append(const QString & qualifiedName, const QString & value)

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_APPEND )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMATTRIBUTE(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_APPEND3 );
  }
}

/*
bool hasAttribute(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttribute ( PQSTRING(1) ) );
  }
}


/*
bool hasAttribute(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->hasAttribute ( *par1 ) );
  }
}


/*
bool hasAttribute(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAttribute ( PQSTRING(1), PQSTRING(2) ) );
  }
}


//[1]bool hasAttribute(const QString & qualifiedName) const
//[2]bool hasAttribute(QLatin1String qualifiedName) const
//[3]bool hasAttribute(const QString & namespaceUri, const QString & name) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE1 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_HASATTRIBUTE3 );
  }
}

/*
QStringRef value(const QString & namespaceUri, const QString & name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE1 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(const QString & namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE2 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par2 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1), *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE3 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLatin1String * par2 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( *par1, *par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(const QString & qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE4 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value ( PQSTRING(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


/*
QStringRef value(QLatin1String qualifiedName) const
*/
HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE5 )
{
  QXmlStreamAttributes * obj = (QXmlStreamAttributes *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLatin1String * par1 = (QLatin1String *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QStringRef * ptr = new QStringRef( obj->value ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}


//[1]QStringRef value(const QString & namespaceUri, const QString & name) const
//[2]QStringRef value(const QString & namespaceUri, QLatin1String name) const
//[3]QStringRef value(QLatin1String namespaceUri, QLatin1String name) const
//[4]QStringRef value(const QString & qualifiedName) const
//[5]QStringRef value(QLatin1String qualifiedName) const

HB_FUNC_STATIC( QXMLSTREAMATTRIBUTES_VALUE )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE2 );
  }
  else if( ISNUMPAR(2) && ISQLATIN1STRING(1) && ISQLATIN1STRING(2) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE4 );
  }
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QXMLSTREAMATTRIBUTES_VALUE5 );
  }
}

$extraMethods

#pragma ENDDUMP
