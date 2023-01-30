/*

  Qt4xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oButton := QPushButton():new( "Clique aqui", oWindow )
   oButton:move( 20, 20 )
   oButton:onClicked( { || qout( "clicked" ) } )
   oButton:onPressed( { || qout( "pressed" ) } )
   oButton:onReleased( { || qout( "released" ) } )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
