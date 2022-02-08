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
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste da classe QWebView" )
   oWindow:resize( 800, 600 )
   oWindow:show()

   oWebView := QWebView():new( oWindow )
   oWebView:setUrl(QUrl():new( "https://github.com/marcosgambeta") )
   oWebView:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
