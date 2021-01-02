/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 320, 240 )

   oButton1 := QPushButton():new( "PushButton 1", oWindow )
   oButton1:move( 20, 20 )
   oButton1:onClicked( {||qout("clicked-1")} )
   oButton1:onPressed( {||qout("pressed-1")} )
   oButton1:onReleased( {||qout("released-1")} )

   oButton2 := QPushButton():new( "PushButton 2", oWindow )
   oButton2:move( 20, 70 )
   oButton2:onClicked( {||qout("clicked-2")} )
   oButton2:onPressed( {||qout("pressed-2")} )
   oButton2:onReleased( {||qout("released-2")} )

   oButton3 := QPushButton():new( "PushButton 3", oWindow )
   oButton3:move( 20, 120 )
   oButton3:onClicked( {||qout("clicked-3")} )
   oButton3:onPressed( {||qout("pressed-3")} )
   oButton3:onReleased( {||qout("released-3")} )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
