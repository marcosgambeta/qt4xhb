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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextBlock>
#include <QtGui/QTextDocumentFragment>
#include <QtGui/QTextList>
#include <QtGui/QTextTable>
#include <QtGui/QTextDocument>

$prototype=QTextCursor ()
$internalConstructor=|new1|

$prototype=QTextCursor ( QTextDocument * document )
$internalConstructor=|new2|QTextDocument *

$prototype=QTextCursor ( QTextFrame * frame )
$internalConstructor=|new3|QTextFrame *

$prototype=QTextCursor ( const QTextBlock & block )
$internalConstructor=|new4|const QTextBlock &

$prototype=QTextCursor ( const QTextCursor & cursor )
$internalConstructor=|new5|const QTextCursor &

/*
[1]QTextCursor ()
[2]QTextCursor ( QTextDocument * document )
[3]QTextCursor ( QTextFrame * frame )
[4]QTextCursor ( const QTextBlock & block )
[5]QTextCursor ( const QTextCursor & cursor )
*/

HB_FUNC_STATIC( QTEXTCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextCursor_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
  {
    QTextCursor_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
  {
    QTextCursor_new4();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextCursor_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int anchor() const

$prototypeV2=bool atBlockEnd() const

$prototypeV2=bool atBlockStart() const

$prototypeV2=bool atEnd() const

$prototypeV2=bool atStart() const

$prototypeV2=void beginEditBlock()

$prototypeV2=QTextBlock block() const

$prototypeV2=QTextCharFormat blockCharFormat() const

$prototypeV2=QTextBlockFormat blockFormat() const

$prototypeV2=int blockNumber() const

$prototypeV2=QTextCharFormat charFormat() const

$prototypeV2=void clearSelection()

$prototypeV2=int columnNumber() const

$prototype=QTextList * createList ( const QTextListFormat & format )
$internalMethod=|QTextList *|createList,createList1|const QTextListFormat &

$prototype=QTextList * createList ( QTextListFormat::Style style )
$internalMethod=|QTextList *|createList,createList2|QTextListFormat::Style

/*
[1]QTextList * createList ( const QTextListFormat & format )
[2]QTextList * createList ( QTextListFormat::Style style )
*/

HB_FUNC_STATIC( QTEXTCURSOR_CREATELIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_createList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_createList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=createList

$prototypeV2=QTextFrame * currentFrame() const

$prototypeV2=QTextList * currentList() const

$prototypeV2=QTextTable * currentTable() const

$prototypeV2=void deleteChar()

$prototypeV2=void deletePreviousChar()

$prototypeV2=QTextDocument * document() const

$prototypeV2=void endEditBlock()

$prototypeV2=bool hasComplexSelection() const

$prototypeV2=bool hasSelection() const

$prototype=void insertBlock ()
$internalMethod=|void|insertBlock,insertBlock1|

$prototype=void insertBlock ( const QTextBlockFormat & format )
$internalMethod=|void|insertBlock,insertBlock2|const QTextBlockFormat &

$prototype=void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
$internalMethod=|void|insertBlock,insertBlock3|const QTextBlockFormat &,const QTextCharFormat &

/*
[1]void insertBlock ()
[2]void insertBlock ( const QTextBlockFormat & format )
[3]void insertBlock ( const QTextBlockFormat & format, const QTextCharFormat & charFormat )
*/

HB_FUNC_STATIC( QTEXTCURSOR_INSERTBLOCK )
{
  if( ISNUMPAR(0) )
  {
    QTextCursor_insertBlock1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBLOCKFORMAT(1) )
  {
    QTextCursor_insertBlock2();
  }
  else if( ISNUMPAR(2) && ISQTEXTBLOCKFORMAT(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertBlock3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertBlock

$prototypeV2=void insertFragment( const QTextDocumentFragment & fragment )

$prototypeV2=QTextFrame * insertFrame( const QTextFrameFormat & format )

$prototypeV2=void insertHtml( const QString & html )

$prototype=void insertImage ( const QTextImageFormat & format )
$internalMethod=|void|insertImage,insertImage1|const QTextImageFormat &

$prototype=void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
$internalMethod=|void|insertImage,insertImage2|const QTextImageFormat &,QTextFrameFormat::Position

$prototype=void insertImage ( const QString & name )
$internalMethod=|void|insertImage,insertImage3|const QString &

$prototype=void insertImage ( const QImage & image, const QString & name = QString() )
$internalMethod=|void|insertImage,insertImage4|const QImage &,const QString &=QString()

/*
[1]void insertImage ( const QTextImageFormat & format )
[2]void insertImage ( const QTextImageFormat & format, QTextFrameFormat::Position alignment )
[3]void insertImage ( const QString & name )
[4]void insertImage ( const QImage & image, const QString & name = QString() )
*/

HB_FUNC_STATIC( QTEXTCURSOR_INSERTIMAGE )
{
  if( ISNUMPAR(1) && ISQTEXTIMAGEFORMAT(1) )
  {
    QTextCursor_insertImage1();
  }
  else if( ISNUMPAR(2) && ISQTEXTIMAGEFORMAT(1) && ISNUM(2) )
  {
    QTextCursor_insertImage2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertImage3();
  }
  else if( ISBETWEEN(1,2) && ISQIMAGE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QTextCursor_insertImage4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertImage

$prototype=QTextList * insertList ( const QTextListFormat & format )
$internalMethod=|QTextList *|insertList,insertList1|const QTextListFormat &

$prototype=QTextList * insertList ( QTextListFormat::Style style )
$internalMethod=|QTextList *|insertList,insertList2|QTextListFormat::Style

/*
[1]QTextList * insertList ( const QTextListFormat & format )
[2]QTextList * insertList ( QTextListFormat::Style style )
*/

HB_FUNC_STATIC( QTEXTCURSOR_INSERTLIST )
{
  if( ISNUMPAR(1) && ISQTEXTLISTFORMAT(1) )
  {
    QTextCursor_insertList1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextCursor_insertList2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertList

$prototype=QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
$internalMethod=|QTextTable *|insertTable,insertTable1|int,int,const QTextTableFormat &

$prototype=QTextTable * insertTable ( int rows, int columns )
$internalMethod=|QTextTable *|insertTable,insertTable2|int,int

/*
[1]QTextTable * insertTable ( int rows, int columns, const QTextTableFormat & format )
[2]QTextTable * insertTable ( int rows, int columns )
*/

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTABLE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTEXTTABLEFORMAT(3) )
  {
    QTextCursor_insertTable1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextCursor_insertTable2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertTable

$prototype=void insertText ( const QString & text )
$internalMethod=|void|insertText,insertText1|const QString &

$prototype=void insertText ( const QString & text, const QTextCharFormat & format )
$internalMethod=|void|insertText,insertText2|const QString &,const QTextCharFormat &

/*
[1]void insertText ( const QString & text )
[2]void insertText ( const QString & text, const QTextCharFormat & format )
*/

HB_FUNC_STATIC( QTEXTCURSOR_INSERTTEXT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextCursor_insertText1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTCHARFORMAT(2) )
  {
    QTextCursor_insertText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertText

$prototypeV2=bool isCopyOf( const QTextCursor & other ) const

$prototypeV2=bool isNull() const

$prototypeV2=void joinPreviousEditBlock()

$prototypeV2=bool keepPositionOnInsert() const

$prototypeV2=void mergeBlockCharFormat( const QTextCharFormat & modifier )

$prototypeV2=void mergeBlockFormat( const QTextBlockFormat & modifier )

$prototypeV2=void mergeCharFormat( const QTextCharFormat & modifier )

$prototypeV2=bool movePosition( QTextCursor::MoveOperation operation, QTextCursor::MoveMode mode = QTextCursor::MoveAnchor, int n = 1 )

$prototypeV2=int position() const

$prototypeV2=int positionInBlock() const

$prototypeV2=void removeSelectedText()

$prototypeV2=void select( QTextCursor::SelectionType selection )

$prototypeV2=void selectedTableCells( int * firstRow, int * numRows, int * firstColumn, int * numColumns ) const

$prototypeV2=QString selectedText() const

$prototypeV2=QTextDocumentFragment selection() const

$prototypeV2=int selectionEnd() const

$prototypeV2=int selectionStart() const

$prototypeV2=void setBlockCharFormat( const QTextCharFormat & format )

$prototypeV2=void setBlockFormat( const QTextBlockFormat & format )

$prototypeV2=void setCharFormat( const QTextCharFormat & format )

$prototypeV2=void setKeepPositionOnInsert( bool b )

$prototypeV2=void setPosition( int pos, QTextCursor::MoveMode m = QTextCursor::MoveAnchor )

$prototypeV2=void setVerticalMovementX( int x )

$prototypeV2=void setVisualNavigation( bool b )

$prototypeV2=int verticalMovementX() const

$prototypeV2=bool visualNavigation() const

$extraMethods

#pragma ENDDUMP
