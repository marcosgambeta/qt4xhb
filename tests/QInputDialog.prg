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
   oWindow:resize( 640, 480 )
   oWindow:show()

   oButton := QPushButton():new( "Mostrar janela de di�logo", oWindow )
   oButton:move( 20, 20 )
   oButton:show()
   oButton:onClicked( { || dialog( oWindow ) } )

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog( oWindow )

   LOCAL oInputDialog := QInputDialog():new( oWindow )

   oInputDialog:exec()

   oInputDialog:delete()

RETURN NIL
