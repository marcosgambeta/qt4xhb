//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTimer

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oWindow:show()

   oTimer := QTimer():new(oWindow)
   ? oTimer:onTimeout({||qout("timer executado")})
   oTimer:setInterval(1000)
   oTimer:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
