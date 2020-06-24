%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPixmap

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QVariant>

$prototype=QBitmap ()
$internalConstructor=|new1|

$prototype=QBitmap ( const QPixmap & pixmap )
$internalConstructor=|new2|const QPixmap &

$prototype=QBitmap ( int width, int height )
$internalConstructor=|new3|int,int

$prototype=QBitmap ( const QSize & size )
$internalConstructor=|new4|const QSize &

$prototype=QBitmap ( const QString & fileName, const char * format = 0 )
$internalConstructor=|new5|const QString &,const char *=0

/*
[1]QBitmap ()
[2]QBitmap ( const QPixmap & pixmap )
[3]QBitmap ( int width, int height )
[4]QBitmap ( const QSize & size )
[5]QBitmap ( const QString & fileName, const char * format = 0 )
*/

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBitmap_new1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBitmap_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBitmap_new3();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QBitmap_new4();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QBitmap_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=QBitmap transformed( const QTransform & matrix ) const

$prototypeV2=static QBitmap fromData( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )

$prototypeV2=static QBitmap fromImage( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )

$variantMethods

#pragma ENDDUMP
