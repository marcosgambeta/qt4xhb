%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text2
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QImage>
#include <QMimeData>
#include <QPixmap>

$prototype=void clear ( Mode mode = Clipboard )
$method=|void|clear|QClipboard::Mode=QClipboard::Clipboard

$prototype=QImage image ( Mode mode = Clipboard ) const
$method=|QImage|image|QClipboard::Mode=QClipboard::Clipboard

$prototype=const QMimeData * mimeData ( Mode mode = Clipboard ) const
$method=|const QMimeData *|mimeData|QClipboard::Mode=QClipboard::Clipboard

$prototype=bool ownsClipboard () const
$method=|bool|ownsClipboard|

$prototype=bool ownsFindBuffer () const
$method=|bool|ownsFindBuffer|

$prototype=bool ownsSelection () const
$method=|bool|ownsSelection|

$prototype=QPixmap pixmap ( Mode mode = Clipboard ) const
$method=|QPixmap|pixmap|QClipboard::Mode=QClipboard::Clipboard

$prototype=void setImage ( const QImage & image, Mode mode = Clipboard )
$method=|void|setImage|const QImage &,QClipboard::Mode=QClipboard::Clipboard

$prototype=void setMimeData ( QMimeData * src, Mode mode = Clipboard )
$method=|void|setMimeData|QMimeData *,QClipboard::Mode=QClipboard::Clipboard

$prototype=void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
$method=|void|setPixmap|const QPixmap &,QClipboard::Mode=QClipboard::Clipboard

$prototype=void setText ( const QString & text, Mode mode = Clipboard )
$method=|void|setText|const QString &,QClipboard::Mode=QClipboard::Clipboard

$prototype=bool supportsFindBuffer () const
$method=|bool|supportsFindBuffer|

$prototype=bool supportsSelection () const
$method=|bool|supportsSelection|

$prototype=QString text ( Mode mode = Clipboard ) const
$internalMethod=|QString|text,text1|QClipboard::Mode=QClipboard::Clipboard

$prototype=QString text ( QString & subtype, Mode mode = Clipboard ) const
%% TODO: implementar
HB_FUNC_STATIC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString par1 = hb_parc(1);
    RQSTRING( obj->text ( par1, (QClipboard::Mode) hb_parni(2) ) );
  }
}

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$beginSignals
$signal=|changed(QClipboard::Mode)
$signal=|dataChanged()
$signal=|findBufferChanged()
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
