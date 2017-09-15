$header

#include "hbclass.ch"

CLASS QEventLoop INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents1
   METHOD processEvents2
   METHOD processEvents
   METHOD wakeUp
   METHOD quit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEventLoop>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEventLoop ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
int exec ( ProcessEventsFlags flags = AllEvents )
*/
$method=|int|exec|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

/*
void exit ( int returnCode = 0 )
*/
$method=|void|exit|int=0

/*
bool isRunning () const
*/
$method=|bool|isRunning|

/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
$method=|bool|processEvents,processEvents1|QEventLoop::ProcessEventsFlags=QEventLoop::AllEvents

/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
$method=|void|processEvents,processEvents2|QEventLoop::ProcessEventsFlags,int

//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS2 );
  }
}

/*
void wakeUp ()
*/
$method=|void|wakeUp|

/*
void quit ()
*/
$method=|void|quit|

#pragma ENDDUMP
