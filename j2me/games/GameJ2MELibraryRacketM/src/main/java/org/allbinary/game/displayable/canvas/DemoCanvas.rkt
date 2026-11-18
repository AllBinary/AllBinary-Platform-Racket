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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/canvas/RunnableCanvas.rkt"
  "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener.rkt"
  "../../../../../java/lang/Thread.rkt"
  "./GameCanvasRunnableInterface.rkt"
  "./MenuListener.rkt"
  "./DemoPaintableInterface.rkt")
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../../org/allbinary/animation/special/SpecialAnimation.rkt" (SpecialAnimation.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/business/advertisement/GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/canvas/CustomGameMenuUtil.rkt" (CustomGameMenuUtil.jm_add_1)])
(lazy-require ["../../../../../org/allbinary/canvas/FullScreenUtil.rkt" (FullScreenUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/canvas/GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/init/GameInitializationUtil.rkt" (GameInitializationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventHandler.rkt" (GameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/SWTUtil.rkt" (SWTUtil.jstatic_isSWT)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoreCommands.rkt" (HighScoreCommands.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoresHelper.rkt" (HighScoresHelper.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoresPaintable.rkt" (HighScoresPaintable.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/ResizableListenerHandler.rkt" (ResizableListenerHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getLazyInstance_0 ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.rkt" (DisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory.rkt" (FullScreenPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.rkt" (CommandCurrentSelectionFormFactory.jm_getInstance_8)])
(lazy-require ["../../../../../org/allbinary/graphics/form/FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScrollSelectionForm.rkt" (ScrollSelectionForm.jm_getNullScrollSelectionForm_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.rkt" (ScrollSelectionFormNoneFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory.rkt" (CurrentDisplayableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLThreadUtil.rkt" (OpenGLThreadUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/StatePaintableFactory.rkt" (StatePaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.rkt" (BasicMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.rkt" (InApplicationPurchaseFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/security/licensing/LockableFeatureFactory.rkt" (LockableFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/AllBinaryMediaManager.rkt" (AllBinaryMediaManager.jm_init_1 AllBinaryMediaManager.jm_update_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/EarlySoundsFactory.rkt" (EarlySoundsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory.rkt" (PrimaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory.rkt" (SecondaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/thread/NullThread.rkt" (NullThread.jstatic_NULL_THREAD)])
(lazy-require ["../../../../../org/allbinary/thread/ThreadFactoryUtil.rkt" (ThreadFactoryUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/thread/ThreadUtil.rkt" (ThreadUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./FormUtil.rkt" (FormUtil.jm_getInstance_0)])
(lazy-require ["./NullGameCanvas.rkt" (NullGameCanvas.jm_getInstance_0 NullGameCanvas.jstatic_NO_GAME NullGameCanvas.jstatic_TYPE)])
(lazy-require ["./NoMenuInputProcessor.rkt" (NoMenuInputProcessor.jm_getInstance_0)])
(lazy-require ["./DemoGameStartupRunnable.rkt" (DemoGameStartupRunnable.jnew_1)])
(lazy-require ["./NullWaitGameRunnable.rkt" (NullWaitGameRunnable.jm_getInstance_0)])
(lazy-require ["./GameInputMappingCanvas.rkt" (GameInputMappingCanvas.jstatic_DISPLAY)])
(lazy-require ["./DemoLimitedCommandTextItemArrayFactory.rkt" (DemoLimitedCommandTextItemArrayFactory.jm_getInstance_0)])
(lazy-require ["./CommandFormInputProcessor.rkt" (CommandFormInputProcessor.jnew_4)])
(lazy-require ["./DemoCanvasProgressUtil.rkt" (DemoCanvasProgressUtil.jm_showProgress_1)])
(lazy-require ["./DemoGameRunnable.rkt" (DemoGameRunnable.jnew_1)])
(provide (all-defined-out))

(define DemoCanvas%
  (class RunnableCanvas%
    (super-new)
    (field [f_basicColorFactory JR.null])
    (field [f_myCommandsFactory JR.null])
    (field [f_gameAdStateFactory JR.null])
    (field [f_gameInputStrings JR.null])
    (field [f_gameStateFactory JR.null])
    (field [f_threadFactoryUtil JR.null])
    (field [f_formUtil JR.null])
    (field [f_fullscreenPaintable JR.null])
    (field [f_basicGameDemoPaintable JR.null])
    (field [f_specialAnimationInterface JR.null])
    (field [f_paintedSpecialAnimationInterface JR.null])
    (field [f_fullScreenUtil JR.null])
    (field [f_gameCanvas JR.null])
    (field [f_highScoresHelper JR.null])
    (field [f_realHighScoresPaintable JR.null])
    (field [f_highScoresPaintable JR.null])
    (field [f_state 0])
    (field [f_canvasThread JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_basicColor JR.null])
    (field [f_abeClientInformation JR.null])
    (field [f_highScoresFactoryInterface JR.null])
    (field [f_menuInputProcessor JR.null])
    (field [f_menuForm JR.null])
    (field [f_gameInitializationInterfaceFactoryInterface JR.null])
    (field [f_initialized #f])
    (field [f_demoGameRunnable JR.null])
    (field [f_defaultPaintableInterface JR.null])
    (field [f_paintableInterface JR.null])
    (field [f_overlayPaintable JR.null])
    (field [f_progressPaintable JR.null])
    (field [f_tempWait 0])
    (field [f_inputToGameKeyMapping JR.null])
    (field [f_gameRunnable JR.null])
    (field [f_isSingleKeyRepeatableProcessing #f])
    (field [f_NONE JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (field [f_lastKeyNotMapped 0])
    (field [f_SET_STATE JR.null])
    (field [f_baseGameStatistics JR.null])
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onDisplayChangeEvent_1 _displayChangeEvent)
    (let ([_scrollSelectionForm JR.null][_formType JR.null][_rectangle JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (set! _scrollSelectionForm (send this jm_getMenuForm_0))
            (when (not (JR.null? _scrollSelectionForm))
                (begin
                (set! _formType (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
                (set! _rectangle (send (get-field f_formUtil this) jm_createFormRectangle_0))
                (send _scrollSelectionForm jm_init_2 _rectangle _formType)))
            (send (get-field f_overlayPaintable this) jm_init_0)))))
    (define/public (jm_getCustomCommands_0)
    (let ([_gameCommandsFactory JR.null][_commandList JR.null][_inApplicationPurchaseFactory JR.null][_list JR.null][_isOverScan JR.null][_commandArray JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (if (J2MEUtil.jm_isHTML_0)
            (begin
            (set! _commandArray (vector (get-field f_START_COMMAND _gameCommandsFactory) (get-field f_DISPLAY (HighScoreCommands.jm_getInstance_0)) (GameInputMappingCanvas.jstatic_DISPLAY) (get-field f_DISPLAY_ABOUT _gameCommandsFactory)))
            (jreturn _commandArray))
            (begin
            (set! _commandList (BasicArrayListD.jnew_0))
            (send _commandList jm_add_1 (get-field f_START_COMMAND _gameCommandsFactory))
            (set! _inApplicationPurchaseFactory (InApplicationPurchaseFactory.jm_getInstance_0))
            (when (send _inApplicationPurchaseFactory jm_isEnabled_0)
                (begin
                (set! _list (send (LockableFeatureFactory.jm_getInstance_0) jm_getList_0))
                (when (and (> (send _list jm_size_0) 0) (not (send _inApplicationPurchaseFactory jm_isPurchased_1 (send _list jm_get_1 0))))
                    (begin
                    (send _commandList jm_add_1 (get-field f_BUY_COMMAND _gameCommandsFactory))))))
            (send _commandList jm_add_1 (get-field f_DISPLAY (HighScoreCommands.jm_getInstance_0)))
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (void))])
                (set! _isOverScan (JR.className (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0)))
                (if (SWTUtil.jstatic_isSWT)
                    (begin
                    (send _commandList jm_add_1 (GameInputMappingCanvas.jstatic_DISPLAY)))
                    (when (not _isOverScan)
                    (begin
                    (send _commandList jm_add_1 (get-field f_DISPLAY_OPTIONS _gameCommandsFactory))
                    (send _commandList jm_add_1 (get-field f_DISPLAY_LOAD_FORM _gameCommandsFactory))
                    (send _commandList jm_add_1 (GameInputMappingCanvas.jstatic_DISPLAY))))))
            (send _commandList jm_add_1 (get-field f_DISPLAY_ABOUT _gameCommandsFactory))
            (set! _commandArray (send _commandList jm_toArray_0))
            (jreturn _commandArray))))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ([_commandArray JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (set! _commandArray (send this jm_getCustomCommands_0))
        (set! _size (vector-length _commandArray))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send this jm_addCommand_1 (vector-ref _commandArray _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (CustomGameMenuUtil.jm_add_1 this)
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/public (jm_initPostPaint_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_mediaInit_0)
    (let ()
      (let/ec jreturn
        (AllBinaryMediaManager.jm_init_1 (EarlySoundsFactory.jm_getInstance_0)))))
    (define/public (jm_itemStateChanged_1 _item)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))
    (define/public (jm_initMenu_0)
    (let ([_commandTextItemArrayFactory JR.null][_items JR.null][_formType JR.null][_rectangle JR.null][_scrollSelectionForm JR.null][_formType2 JR.null][_rectangle2 JR.null])
      (let/ec jreturn
        (send this jm_close_0)
        (set! _commandTextItemArrayFactory (send (DemoLimitedCommandTextItemArrayFactory.jm_getInstance_0) jm_getCommandTextItemArrayFactory_0))
        (set! _items (send _commandTextItemArrayFactory jm_getInstance_3 (send this jm_getCommandStack_0) (get-field f_BLACK (get-field f_basicColorFactory this)) (get-field f_WHITE (get-field f_basicColorFactory this))))
        (set! _formType (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
        (set! _rectangle (send (get-field f_formUtil this) jm_createFormRectangle_0))
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_START_LABEL (get-field f_commonLabels this))) jm_append_1 (JR.toString (get-field f_displayInfo this))) jm_toString_0) this "initMenu")
        (set! _scrollSelectionForm (CommandCurrentSelectionFormFactory.jm_getInstance_8 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) _items _rectangle _formType 15 #t (get-field f_BLACK (get-field f_basicColorFactory this)) (get-field f_WHITE (get-field f_basicColorFactory this))))
        (send this jm_setMenuForm_1 _scrollSelectionForm)
        (set! _formType2 (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
        (set! _rectangle2 (send (get-field f_formUtil this) jm_createFormRectangle_0))
        (send _scrollSelectionForm jm_init_2 _rectangle2 _formType2)
        (when (not (eq? (send this jm_getMenuForm_0) (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (begin
            (send this jm_setMenuInputProcessor_1 (CommandFormInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this (send this jm_getMenuForm_0)))))
        (send this jm_open_0))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn
        (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_addListenerInterface_1 (send this jm_getMenuInputProcessor_0))
        (send (GameKeyEventHandler.jm_getInstance_0) jm_addListener_1 (send this jm_getMenuInputProcessor_0)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_removeListener_1 (send this jm_getMenuInputProcessor_0))
        (send (GameKeyEventHandler.jm_getInstance_0) jm_removeListener_1 (send this jm_getMenuInputProcessor_0)))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoCanvas.jstatic_id)))))
    (define/override (jm_keyPressed_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyPressedByDevice_2 _keyCode 0))))
    (define/override (jm_keyReleased_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyReleasedByDevice_2 _keyCode 0))))
    (define/override (jm_keyRepeated_1 _keyCode)
    (let ()
      (let/ec jreturn
        (send this jm_keyRepeatedByDevice_2 _keyCode 0))))
    (define/override (jm_keyPressedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (send this jm_addGameKeyEvent_2 _keyCode #f))))
    (define/override (jm_keyReleasedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (send this jm_removeGameKeyEvent_2 _keyCode #f))))
    (define/override (jm_keyRepeatedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (when (get-field f_isSingleKeyRepeatableProcessing this)
            (begin
            (send this jm_addGameKeyEvent_2 _keyCode #t))))))
    (define/public (jm_addGameKeyEvent_2 _keyCode _repeated)
    (let ([_gameKey JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 this _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE this)))
                (begin
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this _gameKey))
                (send (DownGameKeyEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameKeyEvent))
                (begin
                (when (not (= (get-field f_lastKeyNotMapped this) _keyCode))
                    (begin
                    (set-field! f_lastKeyNotMapped this _keyCode)
                    (JR.className (get-field f_logUtil this))))))))))
    (define/public (jm_removeGameKeyEvent_2 _keyCode _repeated)
    (let ([_gameKey JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 this _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE this)))
                (begin
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this _gameKey))
                (send (UpGameKeyEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameKeyEvent))
                (begin
                (JR.className (get-field f_logUtil this))))))))
    (define/override (jm_pause_0)
    (let ()
      (let/ec jreturn
        (send this jm_close_0)
        (send this jm_setPaused_1 #t)
        (set-field! f_gameRunnable this (NullWaitGameRunnable.jm_getInstance_0))
        (send (get-field f_gameCanvas this) jm_pause_0))))
    (define/override (jm_unPause_0)
    (let ()
      (let/ec jreturn
        (send this jm_open_0)
        (send (get-field f_gameCanvas this) jm_unPause_0)
        (set-field! f_gameRunnable this (get-field f_gameRunnable (get-field f_gameCanvas this)))
        (send this jm_setPaused_1 #f))))
    (define/override (jm_isPausable_0)
    (let ()
      (let/ec jreturn
        (if (eq? (send (CurrentDisplayableFactory.jm_getInstance_0) jm_getUsedRunnable_0) (NullWaitGameRunnable.jm_getInstance_0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_isGameOver_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn #f))))
    (define/public (jm_setLoadStateHashtable_1 _hashtable)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_getLoadStateHashtable_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn (get-field f_NULL_TABLE (get-field f_stdUtil this))))))
    (define/public (jm_getCurrentStateHashtable_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn (get-field f_NULL_TABLE (get-field f_stdUtil this))))))
    (define/public (jm_setHighScoreSubmitted_1 _isNotUsed)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_paintableInterface this) jm_paint_1 _graphics)
        (send (get-field f_paintedSpecialAnimationInterface this) jm_paintXY_3 _graphics 0 0)
        (send (get-field f_highScoresPaintable this) jm_paint_1 _graphics)
        (send (send this jm_getBasicGameDemoPaintable_0) jm_paint_1 _graphics)
        (send (get-field f_overlayPaintable this) jm_paint_1 _graphics)
        (send (get-field f_fullscreenPaintable this) jm_paint_1 _graphics)
        (send (get-field f_progressPaintable this) jm_paint_1 _graphics))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_paintableInterface this) jm_paintThreed_1 _graphics)
        (send (get-field f_paintedSpecialAnimationInterface this) jm_paintThreedXYZ_4 _graphics 0 0 0))))
    (define/public (jm_processGameOver_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_demoStateChange_0)
    (let ([_newState JR.null][_highScores JR.null])
      (let/ec jreturn
        (set! _newState (JR.i32 (+ (get-field f_state this) 1)))
        (if (> _newState 2)
            (begin
            (set! _newState 0))
            (when (= _newState 2)
            (begin
            (if (not (send (get-field f_highScoresHelper this) jm_isAnyHighScores_0))
                (begin
                (set! _newState 0))
                (begin
                (set! _highScores (send (get-field f_highScoresHelper this) jm_getNextHighScores_0))
                (if (eq? _highScores (NullHighScoresSingletonFactory.jm_getInstance_0))
                    (begin
                    (set! _newState 0))
                    (begin
                    (send (send this jm_getRealHighScoresPaintable_0) jm_setHighScores_1 _highScores))))))))
        (send this jm_setState_1 _newState)
        (send this jm_updateDemoState_0))))
    (define/public (jm_updateDemoState_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (JR.toString (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_createInstance_1 (get-field f_state this))) this (get-field f_SET_STATE this))
        (send (send this jm_getBasicGameDemoPaintable_0) jm_setState_1 (get-field f_state this))
        (if (= (get-field f_state this) 0)
            (begin
            (set-field! f_highScoresPaintable this (NullPaintable.jm_getInstance_0))
            (set-field! f_paintedSpecialAnimationInterface this (send this jm_getSpecialAnimationInterface_0))
            (when (and (not (send (get-field f_demoGameRunnable this) jm_isRunning_0)) (send (get-field f_gameCanvas this) jm_isInitialized_0))
                (begin
                (send (send this jm_getSpecialAnimationInterface_0) jm_reset_0))))
            (if (= (get-field f_state this) 1)
            (begin
            (set-field! f_paintedSpecialAnimationInterface this (SpecialAnimation.jm_getInstance_0)))
            (when (= (get-field f_state this) 2)
            (begin
            (set-field! f_highScoresPaintable this (send this jm_getRealHighScoresPaintable_0))))))
        (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
        (send _gameAdState jm_processPageAdState_0))))
    (define/public (jm_getNextRandom_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_createGameLayerManager_1 _randomValue)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_createRunnable_1 _randomLevel)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))
    (define/public (jm_create_0)
    (let ([_randomLevel JR.null][_gameInfo JR.null])
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (get-field f_START (get-field f_commonStrings this)) this "create")
        (set-field! f_highScoresPaintable this (NullPaintable.jm_getInstance_0))
        (set! _randomLevel (send this jm_getNextRandom_0))
        (set-field! f_gameCanvas this (send this jm_createRunnable_1 _randomLevel))
        (set-field! f_basicColor this (JR.className (send (get-field f_gameCanvas this) jm_getLayerManager_0)))
        (send (send this jm_getRealHighScoresPaintable_0) jm_setBasicColorP_1 (get-field f_basicColor this))
        (send (get-field f_gameCanvas this) jm_setGameCanvasStartListener_1 this)
        (set! _gameInfo (JR.className (send (get-field f_gameCanvas this) jm_getLayerManager_0)))
        (send (send this jm_getHighScoresFactoryInterface_0) jm_fetchHighScores_2 _gameInfo (get-field f_highScoresHelper this)))))
    (define/public (jm_start_0)
    (let ([_gameCanvas JR.null])
      (let/ec jreturn
        (set! _gameCanvas (get-field f_gameCanvas this))
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Game Thread in DemoCanvas: ") jm_append_1 (JR.toString (get-field f_stringUtil this))) jm_toString_0) this (get-field f_START (get-field f_commonStrings this)))
        (set-field! f_canvasThread this (send (get-field f_threadFactoryUtil this) jm_getInstanceGameCanvasRunnable_1 _gameCanvas))
        (send (get-field f_gameCanvas this) jm_setThread_1 (get-field f_canvasThread this))
        (send (get-field f_threadFactoryUtil this) jm_start_1 (get-field f_canvasThread this))
        (when (= (send this jm_getWait_0) (get-field f_WAIT (NullWaitGameRunnable.jm_getInstance_0)))
            (begin
            (send this jm_setWait_1 (send this jm_getTempWait_0)))))))
    (define/public (jm_preDemoProcess_0)
    (let ()
      (let/ec jreturn
        (when (or (not (send (get-field f_gameCanvas this) jm_isInitialized_0)) (eq? (send (get-field f_gameCanvas this) jm_getTitle_0) (NullGameCanvas.jstatic_NO_GAME)))
            (begin
            (when (AllBinaryMediaManager.jm_update_0)
                (begin
                (when (not (send (PrimaryPlayerQueueFactory.jm_getInstance_0) jm_process_0))
                    (begin
                    (send (SecondaryPlayerQueueFactory.jm_getInstance_0) jm_process_0)))))))
        (send (get-field f_overlayPaintable this) jm_update_0))))
    (define/override (jm_process_0)
    (let ([_indexedAnimationBehavior JR.null][_demoGameMidlet JR.null][_thread JR.null][_randomLevel JR.null][_gameInfo JR.null])
      (let/ec jreturn
        (super jm_process_0)
        (send (send this jm_getMenuInputProcessor_0) jm_processInputList_0)
        (send this jm_preDemoProcess_0)
        (when (= (get-field f_state this) 0)
            (begin
            (set! _indexedAnimationBehavior (send (send this jm_getSpecialAnimationInterface_0) jm_getAnimationBehavior_0))
            (when (< (get-field f_loopIndex _indexedAnimationBehavior) 1)
                (begin
                (send (get-field f_timeDelayHelper this) jm_setStartTimeTNT_0)))
            (set! _demoGameMidlet (send this jm_getCustomCommandListener_0))
            (if (and (not (eq? (get-field f_gameCanvas this) (NullGameCanvas.jm_getInstance_0))) (send (get-field f_gameCanvas this) jm_isGameOver_0))
                (begin
                (send this jm_stopGameDemo_0)
                (set! _randomLevel (send this jm_getNextRandom_0))
                (set! _gameInfo (JR.className (send (get-field f_gameCanvas this) jm_getLayerManager_0)))
                (send _gameInfo jm_setCurrentLevel_1 _randomLevel)
                (send (get-field f_gameCanvas this) jm_setGameOver_1 #f)
                (send this jm_start_0))
                (when (and (eq? (get-field f_gameCanvas this) (NullGameCanvas.jm_getInstance_0)) (send _demoGameMidlet jm_isReady_0))
                (begin
                (when (not (send (get-field f_demoGameRunnable this) jm_isRunning_0))
                    (begin
                    (send this jm_startDemoGame_0)
                    (send (get-field f_demoGameRunnable this) jm_setRunning_1 #t)
                    (set! _thread (send (get-field f_threadFactoryUtil this) jm_getInstanceForRunnable_1 (get-field f_demoGameRunnable this)))
                    (send (get-field f_demoGameRunnable this) jm_setThread_1 _thread)
                    (send (get-field f_threadFactoryUtil this) jm_start_1 _thread)))))))))))
    (define/public (jm_startDemoGame_0)
    (let ()
      (let/ec jreturn
        (DemoCanvasProgressUtil.jm_showProgress_1 this))))
    (define/public (jm_stopGameDemo_0)
    (let ()
      (let/ec jreturn
        (when (not (eq? (get-field f_gameCanvas this) (NullGameCanvas.jm_getInstance_0)))
            (begin
            (JR.className (get-field f_logUtil this))
            (send (get-field f_gameCanvas this) jm_setRunning_1 #f)))
        (send (ThreadUtil.jm_getInstance_0) jm_join_1 (get-field f_canvasThread this)))))
    (define/public (jm_showGamePaintable_0)
    (let ([_METHOD_NAME JR.null][_isDefault JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "showGamePaintable")
        (PreLogUtil.jm_put_3 (get-field f_START (get-field f_commonStrings this)) this _METHOD_NAME)
        (set! _isDefault (J2MEUtil.jm_isHTML_0))
        (if (and (and (not (eq? (get-field f_gameCanvas this) (NullGameCanvas.jm_getInstance_0))) (or (or (send (get-field f_gameCanvas this) jm_isRunning_0) _isDefault) (SWTUtil.jstatic_isSWT))) (not (eq? (send (get-field f_gameCanvas this) jm_getType_0) (NullGameCanvas.jstatic_TYPE))))
            (begin
            (set-field! f_gameRunnable this (get-field f_gameRunnable (get-field f_gameCanvas this)))
            (PreLogUtil.jm_put_3 "Showing Game" this _METHOD_NAME)
            (send this jm_setPaintableInterface_1 (get-field f_gameCanvas this)))
            (begin
            (set-field! f_gameRunnable this (NullWaitGameRunnable.jm_getInstance_0))
            (PreLogUtil.jm_put_3 "Not Showing Game" this _METHOD_NAME)
            (send this jm_setPaintableInterface_1 (send this jm_getDefaultPaintableInterface_0)))))))
    (define/public (jm_isReadyForStateChange_0)
    (let ()
      (let/ec jreturn
        (jreturn (and (not (send (get-field f_demoGameRunnable this) jm_isRunning_0)) (send (get-field f_gameCanvas this) jm_isInitialized_0))))))
    (define/public (jm_processGame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameRunnable this) jm_run_0)
        (when (and (not (send (get-field f_specialAnimationInterface this) jm_isComplete_0)) (send this jm_isReadyForStateChange_0))
            (begin
            (send (get-field f_specialAnimationInterface this) jm_nextFrame_0)))
        (if (and (send (get-field f_timeDelayHelper this) jm_isTimeTNT_0) (send this jm_isReadyForStateChange_0))
            (begin
            (send this jm_demoStateChange_0))
            (begin
            (send this jm_process_0))))))
    (define/override (jm_run_0)
    (let ([_progressCanvas JR.null][_features JR.null][_openGLFeatureFactory JR.null][_demoGameRunnable JR.null][_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (set! _features (Features.jm_getInstance_0))
            (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (send _progressCanvas jm_addNormalPortion_2 50 "Demo Thread")
            (send this jm_setCurrentThread_0)
            (send this jm_setRunning_1 #t)
            (if (send _features jm_isFeature_1 (get-field f_LOAD_ONDEMAND (MainFeatureFactory.jm_getInstance_0)))
                (begin
                (send _progressCanvas jm_end_0))
                (begin
                (send _progressCanvas jm_addNormalPortion_2 50 "Demo Thread Running")))
            (send (get-field f_fullScreenUtil this) jm_initOnRun_2 this (send this jm_getCustomCommandListener_0))
            (send this jm_initMenu_0)
            (send this jm_initPostPaint_0)
            (send this jm_updateDemoState_0)
            (when (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD _openGLFeatureFactory))
                (begin
                (let/ec jbreak (let jloop () (when (or (eq? (get-field f_gameCanvas this) (NullGameCanvas.jm_getInstance_0)) (not (send (get-field f_gameCanvas this) jm_isInitialized_0)))
                        (let/ec jcontinue
                    (JR.className (get-field f_loopTimeHelper this))
                    (send this jm_processGame_0)
                    (send this jm_processLoopSleep_0)) (jloop))))
                (set! _demoGameRunnable (DemoGameRunnable.jnew_1 this))
                (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                (send _currentDisplayableFactory jm_setRunnable_1 _demoGameRunnable)
                (send _currentDisplayableFactory jm_setMyCanvas_1 this)
                (send (OpenGLThreadUtil.jm_getInstance_0) jm_onResume_0)))
            (if (or (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD _openGLFeatureFactory)) (J2MEUtil.jm_isHTML_0))
                (begin
                (set! _demoGameRunnable (DemoGameRunnable.jnew_1 this))
                (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                (send _currentDisplayableFactory jm_setRunnable_1 _demoGameRunnable)
                (send _currentDisplayableFactory jm_setMyCanvas_1 this))
                (begin
                (let/ec jbreak (let jloop () (when (send this jm_isRunning_0)
                        (let/ec jcontinue
                    (send this jm_run3_0)) (jloop))))
                (send this jm_end_0))))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_run3_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_loopTimeHelper this))
        (send this jm_processGame_0)
        (send this jm_processLoopSleep_0))))
    (define/override (jm_setRunning_1 _running)
    (let ([_features JR.null][_openGLFeatureFactory JR.null][_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (super jm_setRunning_1 _running)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _features (Features.jm_getInstance_0))
            (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
            (if _running
                (begin
                (void))
                (begin
                (when (or (or (send _features jm_isDefault_1 (get-field f_OPENGL _openGLFeatureFactory)) (J2MEUtil.jm_isHTML_0)) (SWTUtil.jstatic_isSWT))
                    (begin
                    (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                    (send _currentDisplayableFactory jm_clearRunnable_0)
                    (send this jm_end_0)))))))))
    (define/public (jm_end_0)
    (let ([_progressCanvas JR.null][_features JR.null])
      (let/ec jreturn
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (set! _features (Features.jm_getInstance_0))
        (send (get-field f_baseGameStatistics this) jm_add_1 (send (send (send (send (StringMaker.jnew_0) jm_append_1 (DemoCanvas.jstatic_BOT_GAME_STATS)) jm_append_1 (send (get-field f_baseGameStatistics this) jm_toString_0)) jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0))) jm_toString_0))
        (send (get-field f_baseGameStatistics this) jm_init_0)
        (when (send _features jm_isFeature_1 (get-field f_LOAD_ONDEMAND (MainFeatureFactory.jm_getInstance_0)))
            (begin
            (send _progressCanvas jm_start_0)))
        (JR.className (get-field f_logUtil this))
        (send this jm_close_0)
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_removeListener_1 this)
        (send this jm_stopGameDemo_0))))
    (define/public (jm_setGameState_1 _gameState)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getGameState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_PLAYING_GAME_STATE (get-field f_gameStateFactory this))))))
    (define/public (jm_getGameCanvasRunnableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameCanvas this)))))
    (define/public (jm_isDemoLoading_0)
    (let ([_gameCanvas JR.null])
      (let/ec jreturn
        (set! _gameCanvas (get-field f_gameCanvas this))
        (if (eq? _gameCanvas (NullGameCanvas.jm_getInstance_0))
            (begin
            (jreturn #t))
            (when (send _gameCanvas jm_isInitialized_0)
            (begin
            (jreturn #f))))
        (jreturn #t))))
    (define/public (jm_getState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_state this)))))
    (define/public (jm_setState_1 _state)
    (let ()
      (let/ec jreturn
        (set-field! f_state this _state))))
    (define/public (jm_isHighScoreSubmitted_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn #f))))
    (define/public (jm_getRealHighScoresPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_realHighScoresPaintable this)))))
    (define/public (jm_setSpecialAnimationInterface_1 _specialAnimationInterface)
    (let ()
      (let/ec jreturn
        (send _specialAnimationInterface jm_setFrame_1 0)
        (set-field! f_specialAnimationInterface this _specialAnimationInterface))))
    (define/public (jm_getSpecialAnimationInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_specialAnimationInterface this)))))
    (define/public (jm_setPaintableInterface_1 _paintableInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_paintableInterface this _paintableInterface))))
    (define/public (jm_getPaintableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_paintableInterface this)))))
    (define/public (jm_setDefaultPaintableInterface_1 _defaultPaintableInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_defaultPaintableInterface this _defaultPaintableInterface))))
    (define/public (jm_getDefaultPaintableInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_defaultPaintableInterface this)))))
    (define/public (jm_getHighScoresFactoryInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoresFactoryInterface this)))))
    (define/public (jm_setMenuInputProcessor_1 _menuInputProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_menuInputProcessor this _menuInputProcessor))))
    (define/public (jm_getMenuInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_menuInputProcessor this)))))
    (define/public (jm_getMenuForm_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_menuForm this)))))
    (define/public (jm_setMenuForm_1 _menuForm)
    (let ()
      (let/ec jreturn
        (set-field! f_menuForm this _menuForm))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))
    (define/public (jm_getOverlayPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_overlayPaintable this)))))
    (define/public (jm_setBasicGameDemoPaintable_1 _basicGameDemoPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_basicGameDemoPaintable this _basicGameDemoPaintable))))
    (define/public (jm_getBasicGameDemoPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_basicGameDemoPaintable this)))))
    (define/public (jm_setTempWait_1 _tempWait)
    (let ()
      (let/ec jreturn
        (set-field! f_tempWait this _tempWait))))
    (define/public (jm_getTempWait_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_tempWait this)))))
    (define/override (jm_isSingleThread_0)
    (let ()
      (let/ec jreturn
        (jreturn (or (send (OpenGLFeatureUtil.jm_getInstance_0) jm_isAnyThreed_0) (SWTUtil.jstatic_isSWT))))))
    (define/public (jm_isRunningInAnotherThread_0)
    (let ([_features JR.null][_openGLFeatureFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _openGLFeatureFactory (OpenGLFeatureFactory.jm_getInstance_0))
        (if (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD _openGLFeatureFactory))
            (begin
            (jreturn #t))
            (begin
            (jreturn (send this jm_isRunning_0)))))))
    (define/public (jm_getGameInitializationInterfaceFactoryInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInitializationInterfaceFactoryInterface this)))))
    (define/override (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (DemoCanvas.jstatic_TYPE)))))
    (define/override (jm_getTitle_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getTitle_0)))))
    (define/override (jm_isPaused_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_isPaused_0)))))))
(define (DemoCanvas.jclassValue) DemoCanvas%)

(define DemoCanvas.jcell_id 'jnone)
(define (DemoCanvas.jstatic_id)
  (when (eq? DemoCanvas.jcell_id 'jnone) (set! DemoCanvas.jcell_id 0))
  DemoCanvas.jcell_id)
(define (DemoCanvas.jsetstatic_id value) (set! DemoCanvas.jcell_id value))

(define DemoCanvas.jcell_BOT_GAME_STATS 'jnone)
(define (DemoCanvas.jstatic_BOT_GAME_STATS)
  (when (eq? DemoCanvas.jcell_BOT_GAME_STATS 'jnone) (set! DemoCanvas.jcell_BOT_GAME_STATS "Bot Game Statistics: "))
  DemoCanvas.jcell_BOT_GAME_STATS)
(define (DemoCanvas.jsetstatic_BOT_GAME_STATS value) (set! DemoCanvas.jcell_BOT_GAME_STATS value))

(define DemoCanvas.jcell_TYPE 'jnone)
(define (DemoCanvas.jstatic_TYPE)
  (when (eq? DemoCanvas.jcell_TYPE 'jnone) (set! DemoCanvas.jcell_TYPE 3))
  DemoCanvas.jcell_TYPE)
(define (DemoCanvas.jsetstatic_TYPE value) (set! DemoCanvas.jcell_TYPE value))

(define (DemoCanvas.jnew_7 _abeClientInformation _commandListener _highScoresFactoryInterface _paintable _overlayPaintable _gameInitializationInterfaceFactoryInterface _isContinue)
  (define this (new DemoCanvas% [jclass "DemoCanvas"]))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
    (set-field! f_myCommandsFactory this (MyCommandsFactory.jm_getInstance_0))
    (set-field! f_gameAdStateFactory this (GameAdStateFactory.jm_getInstance_0))
    (set-field! f_gameInputStrings this (GameInputStrings.jm_getInstance_0))
    (set-field! f_gameStateFactory this (GameStateFactory.jm_getInstance_0))
    (set-field! f_threadFactoryUtil this (ThreadFactoryUtil.jm_getInstance_0))
    (set-field! f_formUtil this (FormUtil.jm_getInstance_0))
    (set-field! f_fullscreenPaintable this (get-field f_paintable (FullScreenPaintableFactory.jm_getInstance_0)))
    (set-field! f_basicGameDemoPaintable this (StatePaintableFactory.jm_getInstance_0))
    (set-field! f_specialAnimationInterface this (SpecialAnimation.jm_getInstance_0))
    (set-field! f_paintedSpecialAnimationInterface this (SpecialAnimation.jm_getInstance_0))
    (set-field! f_fullScreenUtil this (FullScreenUtil.jm_getInstance_0))
    (set-field! f_gameCanvas this (NullGameCanvas.jm_getInstance_0))
    (set-field! f_highScoresHelper this (HighScoresHelper.jnew_0))
    (set-field! f_realHighScoresPaintable this (HighScoresPaintable.jnew_0))
    (set-field! f_highScoresPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_state this 0)
    (set-field! f_canvasThread this (NullThread.jstatic_NULL_THREAD))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 6000))
    (set-field! f_basicColor this (get-field f_RED (get-field f_basicColorFactory this)))
    
    
    (set-field! f_menuInputProcessor this (NoMenuInputProcessor.jm_getInstance_0))
    (set-field! f_menuForm this (ScrollSelectionForm.jm_getNullScrollSelectionForm_0))
    
    
    
    (set-field! f_defaultPaintableInterface this (NullPaintable.jm_getInstance_0))
    (set-field! f_paintableInterface this (NullPaintable.jm_getInstance_0))
    
    (set-field! f_progressPaintable this (ProgressCanvasFactory.jm_getLazyInstance_0))
    (set-field! f_tempWait this (get-field f_WAIT (NullWaitGameRunnable.jm_getInstance_0)))
    (set-field! f_inputToGameKeyMapping this (JR.className (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0)))
    (set-field! f_gameRunnable this (NullWaitGameRunnable.jm_getInstance_0))
    (set-field! f_isSingleKeyRepeatableProcessing this (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_SINGLE_KEY_REPEAT_PRESS (InputFeatureFactory.jm_getInstance_0))))
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (set-field! f_lastKeyNotMapped this (JR.i32 (- 1)))
    (set-field! f_SET_STATE this "setState")
    (set-field! f_baseGameStatistics this (GameStatisticsFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_abeClientInformation this _abeClientInformation)
        (send this jm_setWait_1 (get-field f_WAIT (NullWaitGameRunnable.jm_getInstance_0)))
        (set-field! f_gameInitializationInterfaceFactoryInterface this _gameInitializationInterfaceFactoryInterface)
        (send (GameInitializationUtil.jm_getInstance_0) jm_initDemo_3 _abeClientInformation this _gameInitializationInterfaceFactoryInterface)
        (send (ResizableListenerHandler.jm_getInstance_0) jm_fireEvent_1 #f)
        (set-field! f_overlayPaintable this _overlayPaintable)
        (set-field! f_highScoresFactoryInterface this _highScoresFactoryInterface)
        (send this jm_setDefaultPaintableInterface_1 _paintable)
        (send this jm_setPaintableInterface_1 (send this jm_getDefaultPaintableInterface_0))
        (when _isContinue
            (begin
            (send this jm_addCommand_1 (get-field f_CONTINUE_COMMAND (GameCommandsFactory.jm_getInstance_0)))))
        (when (send (ChangedGameFeatureListener.jm_getInstance_0) jm_isChangedFeature_1 (get-field f_SOUND (GameFeatureFactory.jm_getInstance_0)))
            (begin
            (send this jm_mediaInit_0)))
        (set-field! f_demoGameRunnable this (DemoGameStartupRunnable.jnew_1 this))
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)))
  this)



