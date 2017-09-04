$header

#include "hbclass.ch"


CLASS QDomComment INHERIT QDomCharacterData

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDomComment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomComment ()
*/
HB_FUNC_STATIC( QDOMCOMMENT_NEW1 )
{
  QDomComment * o = new QDomComment ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDomComment ( const QDomComment & x )
*/
HB_FUNC_STATIC( QDOMCOMMENT_NEW2 )
{
  QDomComment * o = new QDomComment ( *PQDOMCOMMENT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QDomComment ()
//[2]QDomComment ( const QDomComment & x )

HB_FUNC_STATIC( QDOMCOMMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCOMMENT(1) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () cons
*/
HB_FUNC_STATIC( QDOMCOMMENT_NODETYPE )
{
  QDomComment * obj = (QDomComment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType () );
  }
}




#pragma ENDDUMP
