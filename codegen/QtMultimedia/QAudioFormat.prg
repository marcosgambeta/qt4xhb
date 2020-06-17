%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioFormat ()
$internalConstructor=|new1|

$prototype=QAudioFormat ( const QAudioFormat & other )
$internalConstructor=|new2|const QAudioFormat &

/*
[1]QAudioFormat ()
[2]QAudioFormat ( const QAudioFormat & other )
*/

HB_FUNC_STATIC( QAUDIOFORMAT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAudioFormat_new1();
  }
  else if( ISNUMPAR(1) && ISQAUDIOFORMAT(1) )
  {
    QAudioFormat_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isValid() const

$prototype=void setFrequency(int frequency)
$method=|void|setFrequency|int

$prototypeV2=int frequency() const

$prototype=void setSampleRate ( int samplerate )
$method=|void|setSampleRate|int

$prototypeV2=int sampleRate() const

$prototype=void setChannels(int channels)
$method=|void|setChannels|int

$prototypeV2=int channels() const

$prototype=void setChannelCount(int channelCount)
$method=|void|setChannelCount|int

$prototypeV2=int channelCount() const

$prototype=void setSampleSize ( int sampleSize )
$method=|void|setSampleSize|int

$prototypeV2=int sampleSize() const

$prototype=void setCodec ( const QString & codec )
$method=|void|setCodec|const QString &

$prototypeV2=QString codec() const

$prototype=void setByteOrder ( QAudioFormat::Endian byteOrder )
$method=|void|setByteOrder|QAudioFormat::Endian

$prototypeV2=QAudioFormat::Endian byteOrder() const

$prototypeV2=QAudioFormat::SampleType sampleType() const

$prototype=void setSampleType ( QAudioFormat::SampleType sampleType )
$method=|void|setSampleType|QAudioFormat::SampleType

$extraMethods

#pragma ENDDUMP
