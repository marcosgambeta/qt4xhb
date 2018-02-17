%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QTemporaryFile INHERIT QFile

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
%%    METHOD createNativeFile
   METHOD createLocalFile

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTemporaryFile()
$internalConstructor=|new1|

$prototype=QTemporaryFile(const QString & templateName)
$internalConstructor=|new2|const QString &

$prototype=QTemporaryFile(QObject * parent)
$internalConstructor=|new3|QObject *

$prototype=QTemporaryFile(const QString & templateName, QObject * parent)
$internalConstructor=|new4|const QString &,QObject *

//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryFile_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_new2();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QTemporaryFile_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QTemporaryFile_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool autoRemove() const
$method=|bool|autoRemove|

$prototype=QString fileTemplate() const
$method=|QString|fileTemplate|

$prototype=bool open()
$method=|bool|open|

$prototype=void setAutoRemove(bool b)
$method=|void|setAutoRemove|bool

$prototype=void setFileTemplate(const QString & name)
$method=|void|setFileTemplate|const QString &

$prototype=virtual QString fileName() const
$virtualMethod=|QString|fileName|

%% TODO: verificar se 'native' ou 'local'

%% $prototype=static QTemporaryFile * createNativeFile(QFile & file)
%% $internalStaticMethod=|QTemporaryFile *|createNativeFile,createNativeFile1|QFile &

%% $prototype=static QTemporaryFile * createNativeFile(const QString & fileName)
%% $internalStaticMethod=|QTemporaryFile *|createNativeFile,createNativeFile2|const QString &

%% //[1]static QTemporaryFile * createNativeFile(QFile & file)
%% //[2]static QTemporaryFile * createNativeFile(const QString & fileName)

%% HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
%% {
%%   if( ISNUMPAR(1) && ISQFILE(1) )
%%   {
%%     QTemporaryFile_createNativeFile1();
%%   }
%%   else if( ISNUMPAR(1) && ISCHAR(1) )
%%   {
%%     QTemporaryFile_createNativeFile2();
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

$prototype=static QTemporaryFile * createLocalFile(QFile & file)
$internalStaticMethod=|QTemporaryFile *|createLocalFile,createLocalFile1|QFile &

$prototype=static QTemporaryFile * createLocalFile(const QString & fileName)
$internalStaticMethod=|QTemporaryFile *|createLocalFile,createLocalFile2|const QString &

//[1]static QTemporaryFile * createLocalFile(QFile & file)
//[2]static QTemporaryFile * createLocalFile(const QString & fileName)

HB_FUNC_STATIC( QTEMPORARYFILE_CREATELOCALFILE )
{
  if( ISNUMPAR(1) && ISQFILE(1) )
  {
    QTemporaryFile_createLocalFile1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryFile_createLocalFile2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
