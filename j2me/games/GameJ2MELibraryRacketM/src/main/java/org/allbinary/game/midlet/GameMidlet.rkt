#lang racket/base
;;
;; AllBinary Open License Version 1
;; Copyright (c) 2011 AllBinary
;; 
;; By agreeing to this license you and any business entity you represent are
;; legally bound to the AllBinary Open License Version 1 legal agreement.
;; 
;; You may obtain the AllBinary Open License Version 1 legal agreement from
;; AllBinary or the root directory of AllBinary's AllBinary Platform repository.
;; 
;; Created By: Travis Berthelot
;;  
;; Generated Code Do Not Modify
;; package org.allbinary.game.midlet

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/util/Enumeration.rkt"
  "../../../../javax/microedition/lcdui/Canvas.rkt"
  "../../../../javax/microedition/lcdui/CommandListener.rkt"
  "../../../../org/allbinary/midlet/ProgressMidlet.rkt"
  "../../../../java/lang/Thread.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/business/advertisement/GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/canvas/FullScreenUtil.rkt" (FullScreenUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/canvas/GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/debug/DebugFactory.rkt" (DebugFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/GameInfo.rkt" (GameInfo.jnew_5)])
(lazy-require ["../../../../org/allbinary/game/GameMode.rkt" (GameMode.jstatic_SERVER)])
(lazy-require ["../../../../org/allbinary/game/GameStrings.rkt" (GameStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/GameTypeFactory.rkt" (GameTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/PlayerTypesFactory.rkt" (PlayerTypesFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/GameOptionsForm.rkt" (GameOptionsForm.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/configuration/GameOptionsFormFactory.rkt" (GameOptionsFormFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/InGameFeatures.rkt" (InGameFeatures.jnew_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/InGameOptionsForm.rkt" (InGameOptionsForm.jstatic_DISPLAY InGameOptionsForm.jstatic_DEFAULT)])
(lazy-require ["../../../../org/allbinary/game/configuration/InGameOptionsFormFactory.rkt" (InGameOptionsFormFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/LoadGameForm.rkt" (LoadGameForm.jnew_4)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler.rkt" (GameFeatureEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil.rkt" (GameFeatureFormUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/persistance/GamePersistanceSingleton.rkt" (GamePersistanceSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/BasicPaintablesCanvas.rkt" (BasicPaintablesCanvas.jnew_4)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/DemoCanvas.rkt" (DemoCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/GameEventHandlerUtil.rkt" (GameEventHandlerUtil.jm_removeAllListeners_0)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/GameInputMappingCanvas.rkt" (GameInputMappingCanvas.jnew_4 GameInputMappingCanvas.jstatic_DEFAULT GameInputMappingCanvas.jstatic_DISPLAY GameInputMappingCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.rkt" (GameInputMappingInstructionsCanvas.jnew_2 GameInputMappingInstructionsCanvas.jstatic_DISPLAY GameInputMappingInstructionsCanvas.jstatic_CLOSE)])
(lazy-require ["../../../../org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.rkt" (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)])
(lazy-require ["../../../../org/allbinary/game/input/TextNotificationUtil.rkt" (TextNotificationUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.rkt" (AllBinaryGameLayerManager.jnew_3)])
(lazy-require ["../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler.rkt" (GameNotificationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/score/HighScoreCommands.rkt" (HighScoreCommands.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/score/HighScoreCommandsFactory.rkt" (HighScoreCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/score/displayable/HighScoreTextBox.rkt" (HighScoreTextBox.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/score/displayable/HighScoreUtil.rkt" (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND)])
(lazy-require ["../../../../org/allbinary/game/score/displayable/HighScoresCanvas.rkt" (HighScoresCanvas.jclassValue)])
(lazy-require ["../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/ResizableListenerHandler.rkt" (ResizableListenerHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/color/ColorChangeEventHandler.rkt" (ColorChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/screen/AboutCommandProcessor.rkt" (AboutCommandProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/screen/AboutPaintableFactory.rkt" (AboutPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt" (CommandForm.jm_getNullCommandForm_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/screen/WebCommandProcessor.rkt" (WebCommandProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/AllBinarySensorManager.rkt" (AllBinarySensorManager.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/event/VirtualKeyboardEventHandler.rkt" (VirtualKeyboardEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.rkt" (BasicMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.rkt" (InApplicationPurchaseFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/system/security/licensing/LockableFeatureFactory.rkt" (LockableFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/media/audio/AllBinaryMediaManager.rkt" (AllBinaryMediaManager.jm_setMuted_1)])
(lazy-require ["../../../../org/allbinary/midlet/MidletStrings.rkt" (MidletStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/thread/NullThread.rkt" (NullThread.jstatic_NULL_THREAD)])
(lazy-require ["../../../../org/allbinary/thread/ThreadFactoryUtil.rkt" (ThreadFactoryUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/thread/ThreadUtil.rkt" (ThreadUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["../../../../org/allbinary/util/EnumerationUtil.rkt" (EnumerationUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./GameMidletStateFactory.rkt" (GameMidletStateFactory.jm_getInstance_0)])
(lazy-require ["./GameMidletEventHandler.rkt" (GameMidletEventHandler.jm_getInstance_0)])
(lazy-require ["./DemoGameMidletEvent.rkt" (DemoGameMidletEvent.jnew_2)])
(lazy-require ["./DemoGameMidletStateFactory.rkt" (DemoGameMidletStateFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define GameMidlet%
  (class ProgressMidlet%
    (super-new)
    (field [f_enumerationUtil JR.null])
    (field [f_basicColorFactory JR.null])
    (field [f_features JR.null])
    (field [f_midletStrings JR.null])
    (field [f_myCommandsFactory JR.null])
    (field [f_gameStrings JR.null])
    (field [f_gameAdStateFactory JR.null])
    (field [f_gameStateFactory JR.null])
    (field [f_tsUtil JR.null])
    (field [f_DISPLAYABLE JR.null])
    (field [f_COMMAND_NAME JR.null])
    (field [f_NO_COMMAND JR.null])
    (field [f_NO_DISPLAYABLE JR.null])
    (field [f_COMMAND_ACTION JR.null])
    (field [f_PAUSE_APP_BACKGROUND JR.null])
    (field [f_UN_PAUSE_APP_BACKGROUND JR.null])
    (field [f_aboutCommandProcessor JR.null])
    (field [f_webCommandProcessor JR.null])
    (field [f_gameMidletStateFactory JR.null])
    (field [f_gameStartTimeHelper JR.null])
    (field [f_fullScreenUtil JR.null])
    (field [f_debugInterface JR.null])
    (field [f_allbinaryGameCanvasRunnableInterface JR.null])
    (field [f_thread JR.null])
    (field [f_loadGameForm JR.null])
    (field [f_isFullScreen #f])
    (field [f_resized #f])
    (field [f_startedBefore #f])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_setDemo_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_createGame_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_mediaShutdown_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_stopAll_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_pauseApp_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (send this jm_pauseAppBackground_1 #t)
        (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
        (JR.className (send _gameAdState jm_getAdvertisements_0)))))
    (define/public (jm_pauseAppBackground_1 _background)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (if (not (eq? (get-field f_allbinaryGameCanvasRunnableInterface this) (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (begin
            (send (get-field f_allbinaryGameCanvasRunnableInterface this) jm_pause_0))
            (begin
            (JR.className (get-field f_logUtil this))))
        (send (AllBinarySensorManager.jm_getInstance_0) jm_shutdown_0))))
    (define/public (jm_unPauseApp_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (send this jm_unPauseAppBackground_1 #t)
        (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
        (JR.className (send _gameAdState jm_getAdvertisements_0)))))
    (define/public (jm_unPauseAppBackground_1 _background)
    (let ([_gameCanvasRunnableInterface JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send (AllBinarySensorManager.jm_getInstance_0) jm_init_0)
        (set! _gameCanvasRunnableInterface (get-field f_allbinaryGameCanvasRunnableInterface this))
        (if (not (eq? _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (begin
            (send _gameCanvasRunnableInterface jm_unPause_0))
            (begin
            (JR.className (get-field f_logUtil this)))))))
    (define/override (jm_destroyAppInRunnable_2 _unconditional _isProgress)
    (let ([_progressCanvas JR.null])
      (let/ec jreturn
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (when _isProgress
            (begin
            (send _progressCanvas jm_start_0)
            (send this jm_commandAction_2 (get-field f_SET_DISPLAYABLE (get-field f_myCommandsFactory this)) _progressCanvas)))
        (send this jm_destroyApp_1 _unconditional)
        (when _isProgress
            (begin
            (send _progressCanvas jm_end_0))))))
    (define/override (jm_destroyApp_1 _unconditional)
    (let ([_METHOD_NAME JR.null][_gameAdState JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "GameMidlet::destroyApp")
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (PreLogUtil.jm_put_3 (send (GameStatisticsFactory.jm_getInstance_0) jm_toString_0) this _METHOD_NAME)
            (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
            (JR.className (send _gameAdState jm_getAdvertisements_0))
            (if (not (send this jm_isDestroyed_0))
                (begin
                (send this jm_stopGameCanvasRunnableInterface_0)
                (send this jm_setGameCanvasRunnableInterface_1 (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
                (send this jm_mediaShutdown_0))
                (begin
                (JR.className (get-field f_logUtil this))))
            (super jm_destroyApp_1 #t)
            (PreLogUtil.jm_put_3 (get-field f_END (get-field f_commonStrings this)) this _METHOD_NAME))
        (JR.className (get-field f_logUtil this)))))
    (define/override (jm_startApp_0)
    (let ([_gameAdState JR.null][_START_APP JR.null][_gameCanvasRunnableInterface JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this))
            (send this jm_destroyApp_1 #f)
            (send this jm_notifyDestroyed_0))])
            (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
            (JR.className (send _gameAdState jm_getAdvertisements_0))
            (set! _START_APP "startApp")
            (JR.className (get-field f_logUtil this))
            (set! _gameCanvasRunnableInterface (get-field f_allbinaryGameCanvasRunnableInterface this))
            (if (eq? _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
                (begin
                (send (get-field f_gameMidletStateFactory this) jm_setCurrentGameState_1 (get-field f_NO_GAME_STATE (get-field f_gameStateFactory this)))
                (send this jm_setDemo_0))
                (begin
                (JR.className (get-field f_logUtil this))
                (if (eq? _gameCanvasRunnableInterface (send this jm_getCurrentDisplayable_0))
                    (begin
                    (send this jm_unPauseAppBackground_1 #f))
                    (begin
                    (JR.className (get-field f_logUtil this))))))))))
    (define/override (jm_commandAction_2 _command _displayable)
    (let ([_displayableAsString JR.null][_label JR.null][_gameCommandsFactory JR.null][_allbinaryGameCanvasRunnableInterface JR.null][_gameCanvasRunnableInterface JR.null][_mainFeatureFactory JR.null][_isFullScreen JR.null][_virtualKeyboardEventHandler JR.null][_highScoreTextBox JR.null][_keyValuePersistance JR.null][_loadGameForm JR.null][_index JR.null][_menuListener JR.null][_layerManager JR.null][_stringBuffer JR.null][_inGameOptionsForm JR.null][_progressCanvas JR.null][_inGameOptionsFormFactory JR.null][_tempDisplayable JR.null][_gameInputMappingCanvas JR.null][_highScoresCanvas JR.null][_gameCanvas JR.null][_inApplicationPurchaseFactory JR.null][_list JR.null][_lockableFeature JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this))
            (when (not (eq? _command (get-field f_EXIT_COMMAND (GameCommandsFactory.jm_getInstance_0))))
                (begin
                (send this jm_exitProgress_1 #f))))])
            (set! _displayableAsString (get-field f_NO_DISPLAYABLE this))
            (when (not (JR.null? _displayable))
                (begin
                (set! _displayableAsString (send _displayable jm_toString_0))))
            (set! _label (get-field f_NO_COMMAND this))
            (when (not (JR.null? _command))
                (begin
                (set! _label (send _command jm_getLabel_0))))
            (PreLogUtil.jm_put_3 (send (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_COMMAND_NAME this)) jm_append_1 _label) jm_append_1 (get-field f_DISPLAYABLE this)) jm_append_1 _displayableAsString) jm_toString_0) this (get-field f_COMMAND_ACTION this))
            (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
            (set! _allbinaryGameCanvasRunnableInterface (get-field f_allbinaryGameCanvasRunnableInterface this))
            (set! _gameCanvasRunnableInterface _allbinaryGameCanvasRunnableInterface)
            (if (eq? _command (get-field f_SHOW_GAME_CANVAS _gameCommandsFactory))
                (begin
                (when (and (not (eq? (JR.className (send this jm_getDisplay_0)) _gameCanvasRunnableInterface)) (not (= (send _allbinaryGameCanvasRunnableInterface jm_getType_0) (JR.className (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))))
                    (begin
                    (send this jm_setDisplay_1 _gameCanvasRunnableInterface)))
                (send this jm_unPauseAppBackground_1 #f))
                (if (eq? _command (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory))
                (begin
                (set! _menuListener _displayable)
                (send _menuListener jm_close_0)
                (send this jm_setDisplay_1 _gameCanvasRunnableInterface)
                (send this jm_unPauseAppBackground_1 #f))
                (if (eq? _command (get-field f_EXIT_COMMAND _gameCommandsFactory))
                (begin
                (when (= (JR.className (send (GameMidletEventHandler.jm_getInstance_0) jm_getEventListenerInterfaceListP_0)) 0)
                    (begin
                    (send this jm_exitProgress_1 #t)))
                (send (GameMidletEventHandler.jm_getInstance_0) jm_fireEvent_1 (DemoGameMidletEvent.jnew_2 this (get-field f_NONE (DemoGameMidletStateFactory.jm_getInstance_0)))))
                (if (eq? _command (get-field f_EXIT_WITHOUT_PROGRESS_COMMAND _gameCommandsFactory))
                (begin
                (send this jm_exitProgress_1 #f))
                (if (or (or (eq? _command (get-field f_START_COMMAND _gameCommandsFactory)) (eq? _command (get-field f_RESTART_COMMAND _gameCommandsFactory))) (eq? _command (get-field f_CONTINUE_COMMAND _gameCommandsFactory)))
                (begin
                (if (or (not (eq? (send (get-field f_gameMidletStateFactory this) jm_getCurrentGameState_0) (get-field f_PLAYING_GAME_STATE (get-field f_gameStateFactory this)))) (eq? _command (get-field f_RESTART_COMMAND _gameCommandsFactory)))
                    (begin
                    (if (send (get-field f_gameStartTimeHelper this) jm_isTimeTNT_0)
                        (begin
                        (if (and (eq? _command (get-field f_START_COMMAND _gameCommandsFactory)) (send this jm_isDemoLoading_0))
                            (begin
                            (JR.className (get-field f_logUtil this)))
                            (begin
                            (set-field! f_startedBefore this #t)
                            (send this jm_createGame_0)
                            (send (get-field f_gameMidletStateFactory this) jm_setCurrentGameState_1 (get-field f_PLAYING_GAME_STATE (get-field f_gameStateFactory this))))))
                        (begin
                        (JR.className (get-field f_logUtil this)))))
                    (begin
                    (JR.className (get-field f_logUtil this)))))
                (if (eq? _command (get-field f_BUY_COMMAND _gameCommandsFactory))
                (begin
                (set! _inApplicationPurchaseFactory (InApplicationPurchaseFactory.jm_getInstance_0))
                (set! _list (send (LockableFeatureFactory.jm_getInstance_0) jm_getList_0))
                (set! _lockableFeature (send _list jm_get_1 0))
                (if (and (> (send _list jm_size_0) 0) (not (send _inApplicationPurchaseFactory jm_isPurchased_1 _lockableFeature)))
                    (begin
                    (send _inApplicationPurchaseFactory jm_purchase_1 _lockableFeature))
                    (begin
                    (send (TextNotificationUtil.jm_getInstance_0) jm_fireSuccess_1 "Already Purchased"))))
                (if (eq? _command (get-field f_QUIT_COMMAND _gameCommandsFactory))
                (begin
                (when (send (get-field f_gameStartTimeHelper this) jm_isTimeTNT_0)
                    (begin
                    (when (is-a? _displayable (HighScoreTextBox.jclassValue))
                        (begin
                        (set! _menuListener _displayable)
                        (send _menuListener jm_close_0)))
                    (send this jm_stopGameCanvasRunnableInterface_0)
                    (send (get-field f_gameMidletStateFactory this) jm_setCurrentGameState_1 (get-field f_NO_GAME_STATE (get-field f_gameStateFactory this)))
                    (send this jm_setDemo_0))))
                (if (eq? _command (get-field f_RESUME_COMMAND (get-field f_myCommandsFactory this)))
                (begin
                (send this jm_unPauseAppBackground_1 #f))
                (if (eq? _command (get-field f_PAUSE_COMMAND (get-field f_myCommandsFactory this)))
                (begin
                (send this jm_pauseAppBackground_1 #f))
                (if (eq? _command (get-field f_SET_DISPLAYABLE (get-field f_myCommandsFactory this)))
                (begin
                (send this jm_pauseAppBackground_1 #f)
                (send this jm_setDisplay_1 _displayable))
                (if (eq? _command (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory))
                (begin
                (send this jm_pauseAppBackground_1 #f)
                (set! _menuListener _displayable)
                (send _menuListener jm_open_0)
                (send this jm_setDisplay_1 _displayable))
                (if (eq? _command (get-field f_START_TRACE _gameCommandsFactory))
                (begin
                (send (get-field f_debugInterface this) jm_start_0)
                (set! _gameCanvas _allbinaryGameCanvasRunnableInterface)
                (send _gameCanvas jm_addCommand_1 (get-field f_STOP_TRACE _gameCommandsFactory))
                (send _gameCanvas jm_removeCommand_1 (get-field f_START_TRACE _gameCommandsFactory)))
                (if (eq? _command (get-field f_STOP_TRACE _gameCommandsFactory))
                (begin
                (send this jm_pauseAppBackground_1 #f)
                (send (get-field f_debugInterface this) jm_stop_0)
                (send this jm_unPauseAppBackground_1 #f)
                (set! _gameCanvas _allbinaryGameCanvasRunnableInterface)
                (send _gameCanvas jm_addCommand_1 (get-field f_START_TRACE _gameCommandsFactory))
                (send _gameCanvas jm_removeCommand_1 (get-field f_STOP_TRACE _gameCommandsFactory)))
                (if (eq? _command (get-field f_DEFAULT_OPTIONS _gameCommandsFactory))
                (begin
                (set! _tempDisplayable _displayable)
                (when (is-a? _tempDisplayable (GameOptionsForm.jclassValue))
                    (begin
                    (send (GameFeatureFormUtil.jm_getInstance_0) jm_setDefault_1 _tempDisplayable))))
                (if (eq? _command (GameInputMappingInstructionsCanvas.jstatic_DISPLAY))
                (begin
                (set! _tempDisplayable _displayable)
                (when (is-a? _tempDisplayable (GameInputMappingCanvas.jclassValue))
                    (begin
                    (set! _gameInputMappingCanvas _tempDisplayable)
                    (send _gameInputMappingCanvas jm_update_0)))
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_getInputMappingInstructionsCanvas_0)))
                (if (send (HighScoreCommandsFactory.jm_getInstance_0) jm_isHighScoreCommand_1 _command)
                (begin
                (set! _tempDisplayable _displayable)
                (when (is-a? _tempDisplayable (HighScoresCanvas.jclassValue))
                    (begin
                    (set! _highScoresCanvas _tempDisplayable)
                    (send _highScoresCanvas jm_updateCommand_1 _command))))
                (if (eq? _command (get-field f_DISPLAY (HighScoreCommands.jm_getInstance_0)))
                (begin
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_createHighScoresCanvas_0)))
                (if (eq? _command (GameInputMappingInstructionsCanvas.jstatic_CLOSE))
                (begin
                (set! _menuListener _displayable)
                (send _menuListener jm_close_0)
                (send this jm_commandAction_2 (GameInputMappingCanvas.jstatic_DISPLAY) (NullCanvas.jstatic_NULL_CANVAS)))
                (if (eq? _command (GameInputMappingCanvas.jstatic_DISPLAY))
                (begin
                (when (J2MEUtil.jm_isHTML_0)
                    (begin
                    (send this jm_pauseAppBackground_1 #f)))
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_getInputMappingCanvas_0)))
                (if (eq? _command (GameInputMappingCanvas.jstatic_DEFAULT))
                (begin
                (set! _tempDisplayable _displayable)
                (when (is-a? _tempDisplayable (GameInputMappingCanvas.jclassValue))
                    (begin
                    (set! _gameInputMappingCanvas _tempDisplayable)
                    (send _gameInputMappingCanvas jm_setDefault_0))))
                (if (eq? _command (InGameOptionsForm.jstatic_DISPLAY))
                (begin
                (send this jm_pauseAppBackground_1 #f)
                (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
                (send _progressCanvas jm_addNormalPortion_2 50 "In Game Options")
                (set! _layerManager (send this jm_createGameLayerManager_0))
                (set! _inGameOptionsFormFactory (InGameOptionsFormFactory.jm_getInstance_0))
                (send _inGameOptionsFormFactory jm_init_5 this (InGameFeatures.jnew_0) "Options In Game" (send _layerManager jm_getBackgroundBasicColor_0) (send _layerManager jm_getForegroundBasicColor_0))
                (set! _inGameOptionsForm (send _inGameOptionsFormFactory jm_get_0))
                (send _inGameOptionsForm jm_setItemStateListener_1 _allbinaryGameCanvasRunnableInterface)
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) _inGameOptionsForm))
                (if (eq? _command (InGameOptionsForm.jstatic_DEFAULT))
                (begin
                (set! _inGameOptionsForm (send (InGameOptionsFormFactory.jm_getInstance_0) jm_get_0))
                (send (GameFeatureFormUtil.jm_getInstance_0) jm_setDefault_1 _inGameOptionsForm))
                (if (eq? _command (get-field f_DISPLAY_OPTIONS _gameCommandsFactory))
                (begin
                (AllBinaryMediaManager.jm_setMuted_1 #t)
                (send this jm_stopAll_0)
                (set! _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
                (set-field! f_isFullScreen this (send (get-field f_features this) jm_isFeature_1 (get-field f_FULL_SCREEN _mainFeatureFactory)))
                (send (ResizableListenerHandler.jm_getInstance_0) jm_fireEvent_1 #t)
                (send this jm_setResized_1 #f)
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_getGameOptionsForm_0)))
                (if (eq? _command (get-field f_CLOSE_OPTIONS _gameCommandsFactory))
                (begin
                (send (ResizableListenerHandler.jm_getInstance_0) jm_fireEvent_1 #f)
                (send this jm_commandAction_2 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory) _displayable)
                (set! _stringBuffer (StringMaker.jnew_0))
                (send _stringBuffer jm_append_1 "Close isFullScreen/change: ")
                (send _stringBuffer jm_appendboolean_1 (get-field f_isFullScreen this))
                (send _stringBuffer jm_appendboolean_1 (send (get-field f_fullScreenUtil this) jm_isScreenChange_1 (get-field f_isFullScreen this)))
                (send _stringBuffer jm_append_1 " isResized: ")
                (send _stringBuffer jm_appendboolean_1 (send this jm_isResized_0))
                (PreLogUtil.jm_put_3 (send _stringBuffer jm_toString_0) this (get-field f_COMMAND_ACTION this))
                (when (or (send this jm_isResized_0) (send (get-field f_fullScreenUtil this) jm_isScreenChange_1 (get-field f_isFullScreen this)))
                    (begin
                    (send this jm_updateFullScreen_0)))
                (AllBinaryMediaManager.jm_setMuted_1 #f))
                (if (eq? _command (get-field f_DISPLAY_LOAD_FORM _gameCommandsFactory))
                (begin
                (send this jm_pauseAppBackground_1 #f)
                (set! _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                (send _keyValuePersistance jm_clear_0)
                (send _keyValuePersistance jm_loadAll_1 (get-field f_abeClientInformation this))
                (if (eq? (send this jm_getLoadGameForm_0) (CommandForm.jm_getNullCommandForm_0))
                    (begin
                    (set! _layerManager (send this jm_createGameLayerManager_0))
                    (send this jm_setLoadGameForm_1 (LoadGameForm.jnew_4 this "Load Game" (send _layerManager jm_getBackgroundBasicColor_0) (send _layerManager jm_getForegroundBasicColor_0))))
                    (begin
                    (send (send this jm_getLoadGameForm_0) jm_update_0)))
                (send this jm_commandAction_2 (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_getLoadGameForm_0)))
                (if (eq? _command (get-field f_LOAD_FILE _gameCommandsFactory))
                (begin
                (set! _loadGameForm (send this jm_getLoadGameForm_0))
                (set! _index (send _loadGameForm jm_getSelectedId_0))
                (when (not (= _index (JR.i32 (- 1))))
                    (begin
                    (set! _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                    (send this jm_setStartStateHashtable_1 (send _keyValuePersistance jm_get_1 _index))
                    (set! _menuListener (send this jm_getLoadGameForm_0))
                    (send _menuListener jm_close_0)
                    (PreLogUtil.jm_put_3 (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_toString_0) this (get-field f_COMMAND_ACTION this))
                    (send this jm_commandAction_2 (get-field f_START_COMMAND _gameCommandsFactory) (NullCanvas.jstatic_NULL_CANVAS))
                    (PreLogUtil.jm_put_3 (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_toString_0) this (get-field f_COMMAND_ACTION this)))))
                (if (eq? _command (get-field f_DELETE_FILE _gameCommandsFactory))
                (begin
                (set! _loadGameForm (send this jm_getLoadGameForm_0))
                (set! _index (send _loadGameForm jm_getSelectedText_0))
                (when (not (= _index (JR.i32 (- 1))))
                    (begin
                    (set! _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                    (send _keyValuePersistance jm_delete_2 (get-field f_abeClientInformation this) _index)
                    (send _keyValuePersistance jm_clear_0)
                    (send _keyValuePersistance jm_loadAllSize_2 (get-field f_abeClientInformation this) 1)
                    (send (send this jm_getLoadGameForm_0) jm_update_0))))
                (if (eq? _command (get-field f_SAVE _gameCommandsFactory))
                (begin
                (set! _keyValuePersistance (GamePersistanceSingleton.jm_getInstance_0))
                (send this jm_pauseAppBackground_1 #f)
                (send _keyValuePersistance jm_save_2 (get-field f_abeClientInformation this) (send this jm_getCurrentStateHashtable_0))
                (send this jm_unPauseAppBackground_1 #f))
                (if (eq? _command (HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND))
                (begin
                (JR.className (get-field f_logUtil this))
                (when (is-a? _displayable (HighScoreTextBox.jclassValue))
                    (begin
                    (set! _highScoreTextBox _displayable)
                    (set-field! f_submitted _highScoreTextBox #t)))
                (send _allbinaryGameCanvasRunnableInterface jm_setHighScoreSubmitted_1 #t)
                (send this jm_commandAction_2 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory) _displayable))
                (if (eq? _command (get-field f_DISPLAY_ABOUT _gameCommandsFactory))
                (begin
                (send (get-field f_aboutCommandProcessor this) jm_process_3 this (get-field f_SET_MENU_DISPLAYABLE _gameCommandsFactory) (send this jm_getAboutCanvas_0)))
                (if (eq? _command (get-field f_OPEN_WEB_URL _gameCommandsFactory))
                (begin
                (send (get-field f_webCommandProcessor this) jm_process_3 this (get-field f_OPEN_WEB_URL _gameCommandsFactory) (NullCanvas.jstatic_NULL_CANVAS)))
                (if (eq? _command (get-field f_TOGGLE_KEYBOARD _gameCommandsFactory))
                (begin
                (set! _virtualKeyboardEventHandler (VirtualKeyboardEventHandler.jm_getInstance_0))
                (send _virtualKeyboardEventHandler jm_fireEvent_1 (get-field f_SHOW_EVENT _virtualKeyboardEventHandler)))
                (when (= (send (get-field f_tsUtil this) jm_compareTo_2 (send _command jm_getLabel_0) (JR.className (get-field f_TOGGLE_FULLSCREEN _gameCommandsFactory))) 0)
                (begin
                (set! _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
                (set! _isFullScreen (send (get-field f_features this) jm_isFeature_1 (get-field f_FULL_SCREEN _mainFeatureFactory)))
                (if _isFullScreen
                    (begin
                    (send (get-field f_features this) jm_removeDefault_1 (get-field f_FULL_SCREEN _mainFeatureFactory)))
                    (begin
                    (send (get-field f_features this) jm_addDefault_1 (get-field f_FULL_SCREEN _mainFeatureFactory))))
                (send this jm_updateFullScreen_0)))))))))))))))))))))))))))))))))))))))
    (define/public (jm_updateFullScreen_0)
    (let ([_mainFeatureFactory JR.null][_isFullScreen JR.null][_displayable JR.null][_canvas JR.null])
      (let/ec jreturn
        (set! _mainFeatureFactory (MainFeatureFactory.jm_getInstance_0))
        (set! _isFullScreen (send (get-field f_features this) jm_isFeature_1 (get-field f_FULL_SCREEN _mainFeatureFactory)))
        (set! _displayable (JR.className (send this jm_getDisplay_0)))
        (when (is-a? _displayable Canvas%)
            (begin
            (set! _canvas _displayable)
            (send _canvas jm_setFullScreenMode_1 _isFullScreen))))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_getInputMappingInstructionsCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInputMappingInstructionsCanvas.jnew_2 this (send this jm_createGameLayerManager_0))))))
    (define/public (jm_getInputMappingCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInputMappingCanvas.jnew_4 (get-field f_abeClientInformation this) this (send this jm_createGameLayerManager_0) (send this jm_getHelpPaintable_0))))))
    (define/public (jm_getAboutCanvas_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicPaintablesCanvas.jnew_4 this (get-field f_ABOUT (CanvasStrings.jm_getInstance_0)) (send this jm_createGameLayerManager_0) (get-field f_paintableArray (AboutPaintableFactory.jm_getInstance_0)))))))
    (define/public (jm_getHelpPaintable_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_createHighScoresCanvas_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_startGameCanvasRunnableInterface_0)
    (let ([_threadFactoryUtil JR.null])
      (let/ec jreturn
        (set! _threadFactoryUtil (ThreadFactoryUtil.jm_getInstance_0))
        (set-field! f_thread this (send _threadFactoryUtil jm_getInstanceGameCanvasRunnable_1 (get-field f_allbinaryGameCanvasRunnableInterface this)))
        (JR.className (get-field f_logUtil this))
        (send (get-field f_allbinaryGameCanvasRunnableInterface this) jm_setThread_1 (get-field f_thread this))
        (send _threadFactoryUtil jm_start_1 (get-field f_thread this)))))
    (define/public (jm_stopGameCanvasRunnableInterface_0)
    (let ([_gameCanvasRunnableInterface JR.null][_progressCanvas JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send (GameNotificationEventHandler.jm_getInstance_0) jm_removeAllListeners_0)
        (send (ColorChangeEventHandler.jm_getInstance_0) jm_removeAllListeners_0)
        (GameEventHandlerUtil.jm_removeAllListeners_0)
        (set! _gameCanvasRunnableInterface (get-field f_allbinaryGameCanvasRunnableInterface this))
        (if (not (eq? _gameCanvasRunnableInterface (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (begin
            (JR.className (get-field f_logUtil this))
            (send _gameCanvasRunnableInterface jm_setRunning_1 #f))
            (begin
            (JR.className (get-field f_logUtil this))))
        (send (ThreadUtil.jm_getInstance_0) jm_join_1 (get-field f_thread this))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (if (send (get-field f_features this) jm_isFeature_1 (get-field f_LOAD_ALL (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (send _progressCanvas jm_addNormalPortion_2 50 "Stopped Game Runnable"))
            (begin
            (send _progressCanvas jm_addNormalPortion_2 50 "Stopped Main Runnable")))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_getGameCanvasRunnableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_allbinaryGameCanvasRunnableInterface this)))))
    (define/public (jm_setGameCanvasRunnableInterface_1 _gameCanvasRunnableInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_allbinaryGameCanvasRunnableInterface this _gameCanvasRunnableInterface))))
    (define/public (jm_createGameLayerManager_0)
    (let ([_gameInfo JR.null])
      (let/ec jreturn
        (set! _gameInfo (GameInfo.jnew_5 (get-field f_SINGLE_PLAYER (GameTypeFactory.jm_getInstance_0)) (GameMode.jstatic_SERVER) (get-field f_PLAYER_TYPE_ONE (PlayerTypesFactory.jm_getInstance_0)) 1 1))
        (jreturn (AllBinaryGameLayerManager.jnew_3 (get-field f_BLACK (get-field f_basicColorFactory this)) (get-field f_WHITE (get-field f_basicColorFactory this)) _gameInfo)))))
    (define/public (jm_getGameOptionsForm_0)
    (let ([_layerManager JR.null])
      (let/ec jreturn
        (set! _layerManager (send this jm_createGameLayerManager_0))
        (jreturn (send (GameOptionsFormFactory.jm_getInstance_0) jm_init_4 this "Game Options" (send _layerManager jm_getBackgroundBasicColor_0) (send _layerManager jm_getForegroundBasicColor_0))))))
    (define/public (jm_save_0)
    (let ([_hashtable JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _hashtable (send this jm_getCurrentStateHashtable_0))
        (send (GamePersistanceSingleton.jm_getInstance_0) jm_save_2 (get-field f_abeClientInformation this) _hashtable))))
    (define/override (jm_getCurrentStateHashtable_0)
    (let ([_hashtable JR.null][_currentHashtable JR.null][_enumeration JR.null][_key JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _hashtable (send (StdUtil.jm_getInstance_0) jm_createHashtable_0))
        (when (not (eq? (get-field f_allbinaryGameCanvasRunnableInterface this) (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE)))
            (begin
            (set! _currentHashtable (send (get-field f_allbinaryGameCanvasRunnableInterface this) jm_getCurrentStateHashtable_0))
            (set! _enumeration (send _currentHashtable jm_keys_0))
            (set! _key JR.null)
            (let/ec jbreak (let jloop () (when (send (get-field f_enumerationUtil this) jm_hasMoreElements_1 _enumeration)
                    (let/ec jcontinue
                (set! _key (send (get-field f_enumerationUtil this) jm_nextElement_1 _enumeration))
                (send _hashtable jm_put_2 _key (send _currentHashtable jm_get_1 _key))) (jloop))))))
        (jreturn _hashtable))))
    (define/public (jm_setLoadGameForm_1 _loadGameForm)
    (let ()
      (let/ec jreturn
        (set-field! f_loadGameForm this _loadGameForm))))
    (define/public (jm_getLoadGameForm_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_loadGameForm this)))))
    (define/public (jm_setResized_1 _resized)
    (let ()
      (let/ec jreturn
        (set-field! f_resized this _resized))))
    (define/public (jm_isResized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_resized this)))))
    (define/public (jm_isDemoLoading_0)
    (let ([_displayable JR.null][_demoCanvas JR.null])
      (let/ec jreturn
        (when (get-field f_startedBefore this)
            (begin
            (jreturn #f)))
        (set! _displayable (JR.className (send this jm_getDisplay_0)))
        (when (is-a? _displayable (DemoCanvas.jclassValue))
            (begin
            (set! _demoCanvas _displayable)
            (when (send _demoCanvas jm_isDemoLoading_0)
                (begin
                (jreturn #t)))))
        (jreturn #f))))))
(define (GameMidlet.jclassValue) GameMidlet%)

(define (GameMidlet.jnew_1 _clientInformationFactory)
  (define this (new GameMidlet% [jclass "GameMidlet"]))
    (set-field! f_enumerationUtil this (EnumerationUtil.jm_getInstance_0))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
    (set-field! f_features this (Features.jm_getInstance_0))
    (set-field! f_midletStrings this (MidletStrings.jm_getInstance_0))
    (set-field! f_myCommandsFactory this (MyCommandsFactory.jm_getInstance_0))
    (set-field! f_gameStrings this (GameStrings.jm_getInstance_0))
    (set-field! f_gameAdStateFactory this (GameAdStateFactory.jm_getInstance_0))
    (set-field! f_gameStateFactory this (GameStateFactory.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_DISPLAYABLE this " Displayable: ")
    (set-field! f_COMMAND_NAME this "command Name/Label: ")
    (set-field! f_NO_COMMAND this "No Command")
    (set-field! f_NO_DISPLAYABLE this "No Displayable")
    (set-field! f_COMMAND_ACTION this (send (send (send (StringMaker.jnew_0) jm_append_1 "GameMidlet::") jm_append_1 (get-field f_COMMAND_ACTION (get-field f_midletStrings this))) jm_toString_0))
    (set-field! f_PAUSE_APP_BACKGROUND this "pauseAppBackground")
    (set-field! f_UN_PAUSE_APP_BACKGROUND this "unPauseAppBackground")
    (set-field! f_aboutCommandProcessor this (AboutCommandProcessor.jm_getInstance_0))
    (set-field! f_webCommandProcessor this (WebCommandProcessor.jm_getInstance_0))
    (set-field! f_gameMidletStateFactory this (GameMidletStateFactory.jm_getInstance_0))
    (set-field! f_gameStartTimeHelper this (TimeDelayHelper.jnew_1 240))
    (set-field! f_fullScreenUtil this (FullScreenUtil.jm_getInstance_0))
    
    (set-field! f_allbinaryGameCanvasRunnableInterface this (NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE))
    (set-field! f_thread this (NullThread.jstatic_NULL_THREAD))
    
    
    
    (set-field! f_startedBefore this #f)
    (let ([_progressCanvas JR.null])
      (let/ec jreturn
        (void)
        (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_initWithRange_2 #x291 6)
        (set-field! f_loadGameForm this (CommandForm.jm_getNullCommandForm_0))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_init_1 this)
        (send (GameFeatureEventHandler.jm_getInstance_0) jm_addListenerInterface_1 (ChangedGameFeatureListener.jm_getInstance_0))
        (send (GamePersistanceSingleton.jm_getInstance_0) jm_clear_0)
        (set-field! f_debugInterface this (DebugFactory.jm_getInstance_0))
        (send this jm_init_0)))
  this)



