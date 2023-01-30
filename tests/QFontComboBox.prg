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
   LOCAL oFontComboBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oFontComboBox := QFontComboBox():new(oWindow)
   oFontComboBox:move( 20, 20 )
   oFontComboBox:setTooltip( "Eu sou um FontComboBox" )
   oFontComboBox:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
