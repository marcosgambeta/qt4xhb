/*

  Qt4xHb Project - Test Program

  Copyright (C) 2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de di�logo",oWindow)
   oButton:move(20,20)
   oButton:show()
   oButton:onClicked({|w|dialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

STATIC FUNCTION dialog (oWindow)

   LOCAL oFileDialog

   oFileDialog := QFileDialog():new(oWindow)

   oFileDialog:onFileSelected({|w,f|qout(w),qout(f)})

   oFileDialog:exec()
   
   oFileDialog:onFileSelected()

   oFileDialog:delete()

RETURN NIL