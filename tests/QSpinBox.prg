/*

  Qt4xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSpinBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oSpinBox := QSpinBox():new( oWindow )
   oSpinBox:move( 20, 20 )
   oSpinBox:setTooltip( "Eu sou um SpinBox" )
   oSpinBox:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
