#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QAbstractVideoSurfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtMultimedia/QAbstractVideoSurfaceSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioInputSlotsMoc.cpp           : $(QT4XHB_SRC_DIR)/QtMultimedia/QAudioInputSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioOutputSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/QtMultimedia/QAudioOutputSlots.hpp
	$(MOC) $^ -o $@
