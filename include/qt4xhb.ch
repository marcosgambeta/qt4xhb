/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT4XHB_CH
#define QT4XHB_CH

#include "QAbstractAnimation.ch"
#include "QAbstractFileEngine.ch"
#include "QAbstractFontEngine.ch"
#include "QAbstractItemDelegate.ch"
#include "QAbstractItemView.ch"
#include "QAbstractPrintDialog.ch"
#include "QAbstractSlider.ch"
#include "QAbstractSocket.ch"
#include "QAbstractSpinBox.ch"
#include "QAbstractVideoBuffer.ch"
#include "QAbstractVideoSurface.ch"
#include "QAccessible.ch"
#include "QAction.ch"
#include "QApplication.ch"
#include "QAudio.ch"
#include "QAudioFormat.ch"
#include "QAxFactory.ch"
#include "QAxScript.ch"
#include "QAxScriptEngine.ch"
#include "QBoxLayout.ch"
#include "QCalendarWidget.ch"
#include "QChar.ch"
#include "QClipboard.ch"
#include "QColor.ch"
#include "QColorDialog.ch"
#include "QColormap.ch"
#include "QComboBox.ch"
#include "QCompleter.ch"
#include "QContextMenuEvent.ch"
#include "QCoreApplication.ch"
#include "QCryptographicHash.ch"
#include "QDataStream.ch"
#include "QDataWidgetMapper.ch"
#include "QDate.ch"
#include "QDateTimeEdit.ch"
#include "QDeclarativeComponent.ch"
#include "QDeclarativeEngine.ch"
#include "QDeclarativeImageProvider.ch"
#include "QDeclarativeItem.ch"
#include "QDeclarativeProperty.ch"
#include "QDeclarativeView.ch"
#include "QDecoration.ch"
#include "QDesignerFormWindowCursorInterface.ch"
#include "QDesignerFormWindowInterface.ch"
#include "QDesktopServices.ch"
#include "QDialog.ch"
#include "QDialogButtonBox.ch"
#include "QDir.ch"
#include "QDirectPainter.ch"
#include "QDirIterator.ch"
#include "QDockWidget.ch"
#include "QDomImplementation.ch"
#include "QDomNode.ch"
#include "QDoubleValidator.ch"
#include "QEasingCurve.ch"
#include "QElapsedTimer.ch"
#include "QEvent.ch"
#include "QEventLoop.ch"
#include "QFile.ch"
#include "QFileDialog.ch"
#include "QFileIconProvider.ch"
#include "QFileSystemModel.ch"
#include "QFont.ch"
#include "QFontComboBox.ch"
#include "QFontDatabase.ch"
#include "QFontDialog.ch"
#include "QFormLayout.ch"
#include "QFrame.ch"
#include "QFtp.ch"
#include "QFutureInterfaceBase.ch"
#include "QGesture.ch"
#include "QGestureRecognizer.ch"
#include "QGLBuffer.ch"
#include "QGLContext.ch"
#include "QGLFormat.ch"
#include "QGLFramebufferObject.ch"
#include "QGLFunctions.ch"
#include "QGLShader.ch"
#include "QGradient.ch"
#include "QGraphicsBlurEffect.ch"
#include "QGraphicsEffect.ch"
#include "QGraphicsItem.ch"
#include "QGraphicsPixmapItem.ch"
#include "QGraphicsScene.ch"
#include "QGraphicsSceneContextMenuEvent.ch"
#include "QGraphicsView.ch"
#include "QHeaderView.ch"
#include "QHistoryState.ch"
#include "QHostAddress.ch"
#include "QHostInfo.ch"
#include "QhttpMultiPart.ch"
#include "QIcon.ch"
#include "QIconEngineV2.ch"
#include "QImage.ch"
#include "QImageIOHandler.ch"
#include "QImageIOPlugin.ch"
#include "QImageReader.ch"
#include "QImageWriter.ch"
#include "QInputContext.ch"
#include "QInputDialog.ch"
#include "QInputMethodEvent.ch"
#include "QIODevice.ch"
#include "QKeySequence.ch"
#include "QLayout.ch"
#include "QLCDNumber.ch"
#include "QLibrary.ch"
#include "QLibraryInfo.ch"
#include "QLineEdit.ch"
#include "QLineF.ch"
#include "QListView.ch"
#include "QListWidgetItem.ch"
#include "QLocale.ch"
#include "QLocalSocket.ch"
#include "QMainWindow.ch"
#include "QMdiArea.ch"
#include "QMdiSubWindow.ch"
#include "QMessageBox.ch"
#include "QMetaMethod.ch"
#include "QMetaType.ch"
#include "QMovie.ch"
#include "QMutex.ch"
#include "QNetworkAccessManager.ch"
#include "QNetworkConfiguration.ch"
#include "QNetworkConfigurationManager.ch"
#include "QNetworkCookie.ch"
#include "QNetworkInterface.ch"
#include "QNetworkProxy.ch"
#include "QNetworkReply.ch"
#include "QNetworkRequest.ch"
#include "QNetworkSession.ch"
#include "QPageSetupDialog.ch"
#include "QPaintDevice.ch"
#include "QPaintEngine.ch"
#include "QPainter.ch"
#include "QPainterPath.ch"
#include "QPalette.ch"
#include "QPixmap.ch"
#include "QPlainTextEdit.ch"
#include "QPlatformWindowFormat.ch"
#include "QPrintEngine.ch"
#include "QPrinter.ch"
#include "QPrintPreviewWidget.ch"
#include "QProcess.ch"
#include "QProgressBar.ch"
#include "QRawFont.ch"
#include "QReadWriteLock.ch"
#include "QRegExp.ch"
#include "QRegion.ch"
#include "QRubberBand.ch"
#include "QScriptClass.ch"
#include "QScriptContext.ch"
#include "QScriptContextInfo.ch"
#include "QScriptEngine.ch"
#include "QScriptEngineAgent.ch"
#include "QScriptEngineDebugger.ch"
#include "QScriptSyntaxCheckResult.ch"
#include "QScriptValue.ch"
#include "QSessionManager.ch"
#include "QSettings.ch"
#include "QSharedMemory.ch"
#include "QSizePolicy.ch"
#include "QSlider.ch"
#include "QSql.ch"
#include "QSqlDriver.ch"
#include "QSqlError.ch"
#include "QSqlField.ch"
#include "QSqlQuery.ch"
#include "QSqlRelationalTableModel.ch"
#include "QSqlResult.ch"
#include "QSqlTableModel.ch"
#include "QSsl.ch"
#include "QSslCertificate.ch"
#include "QSslError.ch"
#include "QSslSocket.ch"
#include "QStackedLayout.ch"
#include "QStandardItem.ch"
#include "QState.ch"
#include "QStateMachine.ch"
#include "QStaticText.ch"
#include "QStyle.ch"
#include "QStyleHintReturn.ch"
#include "QStyleHintReturnMask.ch"
#include "QStyleHintReturnVariant.ch"
#include "QStyleOption.ch"
#include "QStyleOptionButton.ch"
#include "QStyleOptionComboBox.ch"
#include "QStyleOptionComplex.ch"
#include "QStyleOptionDockWidget.ch"
#include "QStyleOptionFocusRect.ch"
#include "QStyleOptionFrame.ch"
#include "QStyleOptionFrameV2.ch"
#include "QStyleOptionGraphicsItem.ch"
#include "QStyleOptionGroupBox.ch"
#include "QStyleOptionHeader.ch"
#include "QStyleOptionMenuItem.ch"
#include "QStyleOptionProgressBar.ch"
#include "QStyleOptionRubberBand.ch"
#include "QStyleOptionSizeGrip.ch"
#include "QStyleOptionSlider.ch"
#include "QStyleOptionSpinBox.ch"
#include "QStyleOptionTab.ch"
#include "QStyleOptionTabBarBase.ch"
#include "QStyleOptionTabWidgetFrame.ch"
#include "QStyleOptionTitleBar.ch"
#include "QStyleOptionToolBar.ch"
#include "QStyleOptionToolBox.ch"
#include "QStyleOptionToolButton.ch"
#include "QStyleOptionViewItem.ch"
#include "QSwipeGesture.ch"
#include "QSysInfo.ch"
#include "QSystemLocale.ch"
#include "QSystemSemaphore.ch"
#include "QSystemTrayIcon.ch"
#include "Qt.ch"
#include "QTabBar.ch"
#include "QTabletEvent.ch"
#include "QTabWidget.ch"
#include "QTextBlockFormat.ch"
#include "QTextBoundaryFinder.ch"
#include "QTextCharFormat.ch"
#include "QTextCodec.ch"
#include "QTextCursor.ch"
#include "QTextDocument.ch"
#include "QTextEdit.ch"
#include "QTextFormat.ch"
#include "QTextFrameFormat.ch"
#include "QTextItem.ch"
#include "QTextLayout.ch"
#include "QTextLength.ch"
#include "QTextLine.ch"
#include "QTextListFormat.ch"
#include "QTextOption.ch"
#include "QTextStream.ch"
#include "QThread.ch"
#include "QToolButton.ch"
#include "QTouchEvent.ch"
#include "QTransform.ch"
#include "QTreeWidgetItem.ch"
#include "QTreeWidgetItemIterator.ch"
#include "QUdpSocket.ch"
#include "QUrl.ch"
#include "QUrlInfo.ch"
#include "QUuid.ch"
#include "QValidator.ch"
#include "QVariant.ch"
#include "QVideoFrame.ch"
#include "QVideoSurfaceFormat.ch"
#include "QWebElement.ch"
#include "QWebFrame.ch"
#include "QWebPage.ch"
#include "QWebSettings.ch"
#include "QWidget.ch"
#include "QWizard.ch"
#include "QX11EmbedContainer.ch"
#include "QX11EmbedWidget.ch"
#include "QXmlStreamReader.ch"

#endif /* QT4XHB_CH */
