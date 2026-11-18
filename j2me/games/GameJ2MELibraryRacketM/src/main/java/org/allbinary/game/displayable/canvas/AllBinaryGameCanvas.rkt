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
  "../../../../../javax/microedition/lcdui/ChoiceGroup.rkt"
  "../../../../../org/allbinary/canvas/RunnableCanvas.rkt"
  "../../../../../org/allbinary/game/IntermissionCompositeInterface.rkt"
  "../../../../../org/allbinary/game/IntermissionEnableListenerInterface.rkt"
  "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../java/lang/Integer.rkt"
  "../../../../../java/lang/Thread.rkt"
  "./AllBinaryGameCanvasInterface.rkt"
  "./GameCanvasRunnableInterface.rkt"
  "./MenuListener.rkt"
  "./PopupMenuInterface.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(lazy-require ["../../../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../../../org/allbinary/business/advertisement/GameAdStateFactory.rkt" (GameAdStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/canvas/GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/canvas/Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/debug/DebugFactory.rkt" (DebugFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/debug/NoDebug.rkt" (NoDebug.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/GameInfo.rkt" (GameInfo.jnew_5 GameInfo.jstatic_LEVEL_NAME)])
(lazy-require ["../../../../../org/allbinary/game/GameStrings.rkt" (GameStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/GameTypeFactory.rkt" (GameTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/Intermission.rkt" (Intermission.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/PlayerTypesFactory.rkt" (PlayerTypesFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/InGameFeatures.rkt" (InGameFeatures.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/InGameOptionsForm.rkt" (InGameOptionsForm.jstatic_DISPLAY)])
(lazy-require ["../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener.rkt" (ChangedGameFeatureListener.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler.rkt" (GameInitializedEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory.rkt" (GameFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil.rkt" (GameFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory.rkt" (MainFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory.rkt" (TouchFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory.rkt" (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory.rkt" (BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY)])
(lazy-require ["../../../../../org/allbinary/game/init/GameInitializationUtil.rkt" (GameInitializationUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/NoPlayerGameInput.rkt" (NoPlayerGameInput.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventHandler.rkt" (GameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager.rkt" (AllBinaryGameLayerManager.jm_getNullInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/layer/SWTUtil.rkt" (SWTUtil.jstatic_isSWT)])
(lazy-require ["../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.rkt" (ColorFillPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory.rkt" (ResourceLoadingLevelFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScore.rkt" (HighScore.jnew_4)])
(lazy-require ["../../../../../org/allbinary/game/score/HighScoresPaintable.rkt" (HighScoresPaintable.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory.rkt" (NullHighScoresSingletonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/score/displayable/HighScoreTextBox.rkt" (HighScoreTextBox.jnew_9)])
(lazy-require ["../../../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/GraphicsStrings.rkt" (GraphicsStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/ScreenCaptureFactory.rkt" (ScreenCaptureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.rkt" (ProgressCanvasFactory.jm_getLazyInstance_0 ProgressCanvasFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorSetUtil.rkt" (BasicColorSetUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.rkt" (GameTickDisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory.rkt" (MyCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.rkt" (DisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultCharWidth_1 MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.rkt" (CommandCurrentSelectionFormFactory.jm_getInstance_8)])
(lazy-require ["../../../../../org/allbinary/graphics/form/FormPaintable.rkt" (FormPaintable.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScrollSelectionForm.rkt" (ScrollSelectionForm.jm_getNullScrollSelectionForm_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.rkt" (ScrollSelectionFormNoneFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory.rkt" (CurrentDisplayableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory.rkt" (OpenGLFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil.rkt" (OpenGLFeatureUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/opengles/OpenGLThreadUtil.rkt" (OpenGLThreadUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullInitUpdatePaintable.rkt" (NullInitUpdatePaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/image/opengles/OpenGLImageSpecificFactory.rkt" (OpenGLImageSpecificFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/gyro/SingleSensorGameUpdateProcessor.rkt" (SingleSensorGameUpdateProcessor.jnew_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/button/NoButtonsTouchInputFactory.rkt" (NoButtonsTouchInputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/button/TouchButtonFactory.rkt" (TouchButtonFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/button/TouchButtonsPaintableFactory.rkt" (TouchButtonsPaintableFactory.jm_getInstance_1)])
(lazy-require ["../../../../../org/allbinary/input/motion/button/TouchScreenFactory.rkt" (TouchScreenFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.rkt" (BasicMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystemFactory.rkt" (OperatingSystemFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/AllBinaryMediaManager.rkt" (AllBinaryMediaManager.jm_update_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory.rkt" (PrimaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory.rkt" (SecondaryPlayerQueueFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/media/audio/SelectSound.rkt" (SelectSound.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/thread/SecondaryThreadPool.rkt" (SecondaryThreadPool.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./GameCanvasRunnable.rkt" (GameCanvasRunnable.jnew_1)])
(lazy-require ["./GameCanvasPauseRunnable.rkt" (GameCanvasPauseRunnable.jnew_1)])
(lazy-require ["./FormUtil.rkt" (FormUtil.jm_getInstance_0)])
(lazy-require ["./MyFormUtil.rkt" (MyFormUtil.jm_getInstance_0)])
(lazy-require ["./EndGameInfo.rkt" (EndGameInfo.jnew_0)])
(lazy-require ["./NoMenuInputProcessor.rkt" (NoMenuInputProcessor.jm_getInstance_0)])
(lazy-require ["./DemoGameBehavior.rkt" (DemoGameBehavior.jm_getInstance_0)])
(lazy-require ["./BaseMenuBehavior.rkt" (BaseMenuBehavior.jm_getInstance_0)])
(lazy-require ["./BaseGameBehavior.rkt" (BaseGameBehavior.jm_getInstance_0)])
(lazy-require ["./BasicPopupMenuPaintable.rkt" (BasicPopupMenuPaintable.jnew_3)])
(lazy-require ["./PopupMenuInputProcessor.rkt" (PopupMenuInputProcessor.jnew_4)])
(lazy-require ["./InGameMenuBehavior.rkt" (InGameMenuBehavior.jm_getInstance_0)])
(lazy-require ["./GameLimitedCommandTextItemArrayFactory.rkt" (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0)])
(lazy-require ["./PopupCommandFormInputProcessor.rkt" (PopupCommandFormInputProcessor.jnew_5)])
(lazy-require ["./NullWaitGameRunnable.rkt" (NullWaitGameRunnable.jm_getInstance_0)])
(lazy-require ["./GameProcessor.rkt" (GameProcessor.jnew_1)])
(lazy-require ["./CheatGameInputProcessor.rkt" (CheatGameInputProcessor.jnew_1)])
(lazy-require ["./EndGameProcessor.rkt" (EndGameProcessor.jnew_1)])
(lazy-require ["./StartIntermissionProcessor.rkt" (StartIntermissionProcessor.jnew_1)])
(lazy-require ["./EndGamePaintable.rkt" (EndGamePaintable.jnew_1)])
(lazy-require ["./NullDemoPaintable.rkt" (NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE)])
(lazy-require ["./GameCanvasInputProcessor.rkt" (GameCanvasInputProcessor.jnew_1)])
(lazy-require ["./FormInputProcessor.rkt" (FormInputProcessor.jnew_1)])
(lazy-require ["./SaveHighScoreRunnable.rkt" (SaveHighScoreRunnable.jnew_2)])
(provide (all-defined-out))

(define AllBinaryGameCanvas%
  (class RunnableCanvas%
    (super-new)
    (inherit/super jm_setCurrentThreadFake_0 jm_process_0)
    (field [f_basicColorFactory JR.null])
    (field [f_basicSetColorUtil JR.null])
    (field [f_touchFeatureFactory JR.null])
    (field [f_openGLFeatureFactory JR.null])
    (field [f_touchButtonFactory JR.null])
    (field [f_gameAdStateFactory JR.null])
    (field [f_gameStrings JR.null])
    (field [f_gameInputStrings JR.null])
    (field [f_gameStateFactory JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (field [f_gameTickDisplayInfoSingleton JR.null])
    (field [f_gameRunnable JR.null])
    (field [f_gamePauseRunnable JR.null])
    (field [f_formUtil JR.null])
    (field [f_myFormUtil JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_gameSpecificPaintable JR.null])
    (field [f_sensorGameUpdateProcessor JR.null])
    (field [f_endGameInfo JR.null])
    (field [f_startIntermissionInterface JR.null])
    (field [f_endLevelIntermissionInterface JR.null])
    (field [f_gameLayerManager JR.null])
    (field [f_gameState JR.null])
    (field [f_gameOver #f])
    (field [f_initialized #f])
    (field [f_gameStateTimeHelper JR.null])
    (field [f_highScoresHelper JR.null])
    (field [f_highScoreSubmitted #f])
    (field [f_realHighScoresPaintable JR.null])
    (field [f_highScoresPaintable JR.null])
    (field [f_localPlayerGameInputList JR.null])
    (field [f_isCheating #f])
    (field [f_hashtable JR.null])
    (field [f_isSingleKeyRepeatableProcessing #f])
    (field [f_gameInitializationInterfaceFactoryInterface JR.null])
    (field [f_touchButtonsPaintable JR.null])
    (field [f_touchPaintable JR.null])
    (field [f_cheatProcessor JR.null])
    (field [f_gameInputProcessor JR.null])
    (field [f_endGameProcessor JR.null])
    (field [f_realEndGameProcessor JR.null])
    (field [f_startIntermissionProcessor JR.null])
    (field [f_realStartIntermissionProcessor JR.null])
    (field [f_endGamePaintable JR.null])
    (field [f_endGameStatePaintable JR.null])
    (field [f_nonBotPaintable JR.null])
    (field [f_intermissionPaintable JR.null])
    (field [f_startIntermissionPaintable JR.null])
    (field [f_mainStateProcessor JR.null])
    (field [f_processGameProcessor JR.null])
    (field [f_highScoresFactoryInterface JR.null])
    (field [f_startLevel 0])
    (field [f_mainMenuInputProcessor JR.null])
    (field [f_popupMenuInputProcessor JR.null])
    (field [f_menuInputProcessor JR.null])
    (field [f_menuForm JR.null])
    (field [f_formPaintable JR.null])
    (field [f_openMenuPaintable JR.null])
    (field [f_menuPaintable JR.null])
    (field [f_currentTouchInputFactory JR.null])
    (field [f_colorFillPaintable JR.null])
    (field [f_baseGameStatistics JR.null])
    (field [f_primaryPlayerQueue JR.null])
    (field [f_secondaryPlayerQueue JR.null])
    (field [f_BUILD_GAME JR.null])
    (field [f_gameTypeFactory JR.null])
    (field [f_screenCapture JR.null])
    (field [f_basicMotionGesturesHandler JR.null])
    (field [f_gameKeyEventHandler JR.null])
    (field [f_gameBehavior JR.null])
    (field [f_menuBehavior JR.null])
    (field [f_progressPaintable JR.null])
    (field [f_fontHeightP 0])
    (field [f_gameCanvasStartListener JR.null])
    (field [f_rawGameInputProcessor JR.null])
    (field [f_rawInputProcessor JR.null])
    (field [f_inputProcessor JR.null])
    (field [f_YIELD_SLEEP 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_popupMenuRectangle JR.null][_basicPopupMenuPaintable JR.null][_popupMenuInputProcessor JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _font (send _graphics jm_getFont_0))
            (JR.className (get-field f_logUtil this))
            (set-field! f_fontHeightP this (send _font jm_getHeight_0))
            (send (get-field f_myFormUtil this) jm_updateMeasurement_1 _graphics)
            (set! _popupMenuRectangle (send (get-field f_myFormUtil this) jm_getPopupMenuRectangle_0))
            (set! _basicPopupMenuPaintable (send this jm_getOpenMenuPaintable_0))
            (send _basicPopupMenuPaintable jm_init_1 _popupMenuRectangle)
            (when (not (eq? (send this jm_getPopupMenuInputProcessor_0) (NoMenuInputProcessor.jm_getInstance_0)))
                (begin
                (set! _popupMenuInputProcessor (send this jm_getPopupMenuInputProcessor_0))
                (send _popupMenuInputProcessor jm_init_1 _popupMenuRectangle)))
            (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0))))))
    (define/public (jm_getInGameMenuBehavior_0)
    (let ()
      (let/ec jreturn
        (jreturn (InGameMenuBehavior.jm_getInstance_0)))))
    (define/override (jm_setCurrentThread_0)
    (let ()
      (let/ec jreturn
        (if (J2MEUtil.jm_isHTML_0)
            (begin
            (super jm_setCurrentThreadFake_0))
            (begin
            (super jm_setCurrentThread_0))))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onDisplayChangeEvent_1 _displayChangeEvent)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
            (send (get-field f_menuBehavior this) jm_onDisplayChangeEvent_2 this _displayChangeEvent)))))
    (define/public (jm_updateMenuFromEvent_1 _displayChangeEvent)
    (let ([_formType JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _formType (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
        (set! _rectangle (send (get-field f_formUtil this) jm_createFormRectangle_0))
        (send (get-field f_menuForm this) jm_init_2 _rectangle _formType)
        (when (not (eq? (get-field f_currentTouchInputFactory this) (NoButtonsTouchInputFactory.jm_getInstance_0)))
            (begin
            (send (get-field f_touchButtonFactory this) jm_toggle_2 (send this jm_isPaused_0) (send (get-field f_currentTouchInputFactory this) jm_getList_0))))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/override (jm_processSleep_0)
    (let ()
      (let/ec jreturn
        (super jm_processSleep_0)
        (when (AllBinaryMediaManager.jm_update_0)
            (begin
            (when (not (send (get-field f_primaryPlayerQueue this) jm_process_0))
                (begin
                (send (get-field f_secondaryPlayerQueue this) jm_process_0)))))
        (when (not (= (send (get-field f_menuInputProcessor this) jm_processInputList_0) (JR.i32 (- 1))))
            (begin
            (JR.className (get-field f_runnableCanvasRefreshHelper this)))))))
    (define/public (jm_initPopupMenu_0)
    (let ([_features JR.null][_popupMenuRectangle JR.null])
      (let/ec jreturn
        (if (eq? (get-field f_popupMenuInputProcessor this) (NoMenuInputProcessor.jm_getInstance_0))
            (begin
            (set! _features (Features.jm_getInstance_0))
            (set! _popupMenuRectangle (send (get-field f_myFormUtil this) jm_getPopupMenuRectangle_0))
            (when (send _features jm_isFeature_1 (get-field f_TOUCH_ENABLED (get-field f_touchFeatureFactory this)))
                (begin
                (send this jm_setOpenMenuPaintable_1 (BasicPopupMenuPaintable.jnew_3 _popupMenuRectangle (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0) (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
                (send this jm_setPopupMenuInputProcessor_1 (PopupMenuInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _popupMenuRectangle)))))
            (begin
            (void))))))
    (define/public (jm_initMenu_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (send (get-field f_menuBehavior this) jm_initMenu_1 this)))))
    (define/public (jm_initMenu2_0)
    (let ([_formType JR.null][_gameLimitedCommandTextItemArrayFactory JR.null][_commandTextItemArrayFactory JR.null][_items JR.null][_rectangle JR.null][_scrollSelectionForm JR.null][_features JR.null])
      (let/ec jreturn
        (send this jm_closeMenu_0)
        (set! _formType (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
        (set! _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0))
        (set! _commandTextItemArrayFactory (send _gameLimitedCommandTextItemArrayFactory jm_getCommandTextItemArrayFactory_0))
        (set! _items (send _commandTextItemArrayFactory jm_getInstance_3 (send this jm_getCommandStack_0) (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0) (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
        (set! _rectangle (send (get-field f_formUtil this) jm_createFormRectangle_0))
        (send this jm_setMenuForm_1 (CommandCurrentSelectionFormFactory.jm_getInstance_8 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) _items _rectangle _formType 25 #f (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0) (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
        (set! _scrollSelectionForm (send this jm_getMenuForm_0))
        (set! _features (Features.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_TOUCH_ENABLED (get-field f_touchFeatureFactory this)))
            (begin
            (set-field! f_mainMenuInputProcessor this (PopupCommandFormInputProcessor.jnew_5 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _scrollSelectionForm (send this jm_getPopupMenuInputProcessor_0))))
            (begin
            (void)))
        (send this jm_setMenuInputProcessor_1 (send this jm_getPopupMenuInputProcessor_0))
        (if (not (eq? _scrollSelectionForm (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (begin
            (send this jm_setFormPaintable_1 (FormPaintable.jnew_1 _scrollSelectionForm)))
            (begin
            (void)))
        (send this jm_closeMenu_0))))
    (define/public (jm_updateMenu_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (send (get-field f_menuBehavior this) jm_updateMenu_1 this)))))
    (define/public (jm_updateMenu2_0)
    (let ([_scrollSelectionForm JR.null][_gameLimitedCommandTextItemArrayFactory JR.null][_commandTextItemArrayFactory JR.null][_items JR.null][_size JR.null][_index JR.null][_formType JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _scrollSelectionForm (send this jm_getMenuForm_0))
        (send _scrollSelectionForm jm_deleteAll_0)
        (set! _gameLimitedCommandTextItemArrayFactory (GameLimitedCommandTextItemArrayFactory.jm_getInstance_0))
        (set! _commandTextItemArrayFactory (send _gameLimitedCommandTextItemArrayFactory jm_getCommandTextItemArrayFactory_0))
        (set! _items (send _commandTextItemArrayFactory jm_getInstance_3 (send this jm_getCommandStack_0) (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0) (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
        (set! _size (vector-length _items))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _scrollSelectionForm jm_append_1 (vector-ref _items _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _formType (send (FormTypeFactory.jm_getInstance_0) jm_getFormType_0))
        (set! _rectangle (send (get-field f_formUtil this) jm_createFormRectangle_0))
        (send _scrollSelectionForm jm_init_2 _rectangle _formType))))
    (define/override (jm_pause_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_pause_1 this)
        (send this jm_closeMenu_0)
        (super jm_pause_0)
        (send (get-field f_touchButtonFactory this) jm_toggle_2 (send this jm_isPaused_0) (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
        (JR.className (get-field f_tsUtil this)))))
    (define/override (jm_unPause_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send this jm_closeMenu_0)
        (JR.className (get-field f_tsUtil this))
        (super jm_unPause_0)
        (send (get-field f_touchButtonFactory this) jm_toggle_2 (send this jm_isPaused_0) (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
        (send (get-field f_gameBehavior this) jm_unPause_1 this))))
    (define/override (jm_isPausable_0)
    (let ()
      (let/ec jreturn
        (if (eq? (send (CurrentDisplayableFactory.jm_getInstance_0) jm_getUsedRunnable_0) (NullWaitGameRunnable.jm_getInstance_0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_popupMenu_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_menuBehavior this) jm_popupMenu_1 this))))
    (define/public (jm_popupMenu2_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_primaryPlayerQueue this) jm_add_1 (SelectSound.jm_getInstance_0))
        (send this jm_setMenuPaintable_1 (send this jm_getFormPaintable_0))
        (send this jm_setMenuInputProcessor_1 (get-field f_mainMenuInputProcessor this))
        (send (get-field f_basicMotionGesturesHandler this) jm_addListenerInterface_1 (get-field f_mainMenuInputProcessor this))
        (send (get-field f_gameKeyEventHandler this) jm_addListener_1 (get-field f_mainMenuInputProcessor this)))))
    (define/public (jm_toggleMenu_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (if (eq? (send this jm_getMenuPaintable_0) (send this jm_getOpenMenuPaintable_0))
            (begin
            (send this jm_pause_0)
            (send this jm_updateMenu_0)
            (send this jm_popupMenu_0))
            (when (eq? (send this jm_getMenuPaintable_0) (send this jm_getFormPaintable_0))
            (begin
            (send (get-field f_primaryPlayerQueue this) jm_add_1 (SelectSound.jm_getInstance_0))
            (send this jm_unPause_0)))))))
    (define/public (jm_closeMenu_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_menuBehavior this) jm_closeMenu_1 this))))
    (define/public (jm_closeMenu2_0)
    (let ()
      (let/ec jreturn
        (send this jm_setMenuPaintable_1 (send this jm_getOpenMenuPaintable_0))
        (send (get-field f_basicMotionGesturesHandler this) jm_removeListener_1 (get-field f_mainMenuInputProcessor this))
        (send (get-field f_gameKeyEventHandler this) jm_removeListener_1 (get-field f_mainMenuInputProcessor this))
        (send this jm_setMenuInputProcessor_1 (send this jm_getPopupMenuInputProcessor_0)))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicMotionGesturesHandler this) jm_addListenerInterface_1 (get-field f_menuInputProcessor this))
        (send (get-field f_gameKeyEventHandler this) jm_addListener_1 (get-field f_menuInputProcessor this)))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicMotionGesturesHandler this) jm_removeListener_1 (get-field f_menuInputProcessor this))
        (send (get-field f_gameKeyEventHandler this) jm_removeListener_1 (get-field f_menuInputProcessor this))
        (send (get-field f_primaryPlayerQueue this) jm_clear_0)
        (send (get-field f_secondaryPlayerQueue this) jm_clear_0))))
    (define/public (jm_processorInit_0)
    (let ()
      (let/ec jreturn
        (send this jm_setMainStateProcessor_1 (Processor.jm_getInstance_0))
        (send this jm_setProcessGameProcessorInit_0))))
    (define/public (jm_setProcessGameProcessorInit_0)
    (let ()
      (let/ec jreturn
        (send this jm_setProcessGameProcessor_1 (GameProcessor.jnew_1 this)))))
    (define/public (jm_initSpecialPaint_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_menuBehavior this) jm_initSpecialPaint_1 this))))
    (define/public (jm_init_2 _gameLayerManager _buffered)
    (let ([_BUFF_MESSAGE JR.null][_features JR.null])
      (let/ec jreturn
        (send (get-field f_gameStateTimeHelper this) jm_setStartTimeTNT_0)
        (send this jm_setHighScoreSubmitted_1 #f)
        (send this jm_setLayerManager_1 _gameLayerManager)
        (if (not _buffered)
            (begin
            (set! _BUFF_MESSAGE "XXX Not Buffering Causes Concurrency Issues XXX")
            (JR.className (get-field f_logUtil this)))
            (begin
            (raise (JR.newException "Exception" "Buffering is disabled"))))
        (send this jm_setGameInputProcessor_1 (Processor.jm_getInstance_0))
        (set! _features (Features.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_CHEATING (GameFeatureFactory.jm_getInstance_0)))
            (begin
            (set-field! f_isCheating this #t)
            (set-field! f_cheatProcessor this (CheatGameInputProcessor.jnew_1 this))
            (send (get-field f_gameKeyEventHandler this) jm_addListener_1 (get-field f_cheatProcessor this)))
            (begin
            (set-field! f_isCheating this #f)
            (set-field! f_cheatProcessor this (NoPlayerGameInput.jm_getInstance_0))))
        (set-field! f_realEndGameProcessor this (EndGameProcessor.jnew_1 this))
        (send this jm_setEndGameProcessor_1 (Processor.jm_getInstance_0))
        (set-field! f_realStartIntermissionProcessor this (StartIntermissionProcessor.jnew_1 this))
        (set-field! f_startIntermissionProcessor this (Processor.jm_getInstance_0))
        (send this jm_setEndGameStatePaintable_1 (EndGamePaintable.jnew_1 this))
        (send this jm_setEndGamePaintable_1 (NullPaintable.jm_getInstance_0))
        (send this jm_setIntermissionPaintable_1 (NullPaintable.jm_getInstance_0))
        (send (send this jm_getStartIntermissionInterface_0) jm_setListener_1 this))))
    (define/public (jm_notifyIntermission_1 _enable)
    (let ()
      (let/ec jreturn
        (if _enable
            (begin
            (set-field! f_startIntermissionProcessor this (get-field f_realStartIntermissionProcessor this)))
            (begin
            (set-field! f_startIntermissionProcessor this (Processor.jm_getInstance_0))))
        (if _enable
            (begin
            (send this jm_setIntermissionPaintable_1 (send this jm_getStartIntermissionPaintable_0)))
            (begin
            (send this jm_setIntermissionPaintable_1 (NullPaintable.jm_getInstance_0)))))))
    (define/public (jm_mediaInit_0)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))
    (define/public (jm_initConfigurable_1 _abeClientInformation)
    (let ([_progressCanvas JR.null][_gameFeatureFactory JR.null][_changedGameFeatureListener JR.null][_features JR.null][_sensorFeatureFactory JR.null][_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_addNormalPortion_2 50 "Setting Configurables")
        (send (GameInitializationUtil.jm_getInstance_0) jm_initGame_3 _abeClientInformation this (get-field f_gameInitializationInterfaceFactoryInterface this))
        (set! _gameFeatureFactory (GameFeatureFactory.jm_getInstance_0))
        (set! _changedGameFeatureListener (ChangedGameFeatureListener.jm_getInstance_0))
        (when (send _changedGameFeatureListener jm_isChangedFeature_1 (get-field f_SOUND _gameFeatureFactory))
            (begin
            (set! _features (Features.jm_getInstance_0))
            (JR.className (get-field f_logUtil this))
            (send this jm_mediaInit_0)
            (send _changedGameFeatureListener jm_remove_1 (get-field f_SOUND _gameFeatureFactory))))
        (set! _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (when (or (or (send _changedGameFeatureListener jm_isChangedFeature_1 (get-field f_ORIENTATION_SENSORS _sensorFeatureFactory)) (send _changedGameFeatureListener jm_isChangedFeature_1 (get-field f_NO_ORIENTATION _sensorFeatureFactory))) (send _changedGameFeatureListener jm_isChangedFeature_1 (get-field f_SIMULATED_ORIENTATION_SENSORS _sensorFeatureFactory)))
            (begin
            (send _changedGameFeatureListener jm_remove_1 (get-field f_NO_ORIENTATION _sensorFeatureFactory))
            (send _changedGameFeatureListener jm_remove_1 (get-field f_ORIENTATION_SENSORS _sensorFeatureFactory))
            (send _changedGameFeatureListener jm_remove_1 (get-field f_SIMULATED_ORIENTATION_SENSORS _sensorFeatureFactory))))
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (send this jm_loadResourceLoadingLevel_1 (get-field f_LOAD_GAME _resourceLoadingLevelFactory)))))
    (define/public (jm_initApp_1 _abeClientInformation)
    (let ()
      (let/ec jreturn
        (send this jm_initConfigurable_1 _abeClientInformation)
        (send this jm_processorInit_0)
        (send (get-field f_sensorGameUpdateProcessor this) jm_process_1 (get-field f_gameLayerManager this))
        (send (get-field f_sensorGameUpdateProcessor this) jm_sendNotifications_1 (get-field f_gameLayerManager this))
        (send this jm_initTouch_0))))
    (define/public (jm_initTouch_0)
    (let ([_gameInitializedEvent JR.null][_resourceLoadingLevelFactory JR.null])
      (let/ec jreturn
        (set! _gameInitializedEvent (get-field f_EVENT (GameInitializationUtil.jm_getInstance_0)))
        (set! _resourceLoadingLevelFactory (ResourceLoadingLevelFactory.jm_getInstance_0))
        (send _gameInitializedEvent jm_setResourceLoadingLevel_1 (get-field f_LOAD_TOUCH _resourceLoadingLevelFactory))
        (send (GameInitializedEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameInitializedEvent)
        (send (get-field f_touchButtonFactory this) jm_defaultList_0)
        (send this jm_updateTouch_0)
        (send this jm_postInitTouch_0))))
    (define/public (jm_updateCurrentTouchInputFactory_1 _nextTouchInput)
    (let ()
      (let/ec jreturn
        (when (not (eq? _nextTouchInput (get-field f_currentTouchInputFactory this)))
            (begin
            (set-field! f_currentTouchInputFactory this _nextTouchInput)
            (PreLogUtil.jm_put_3 (send (get-field f_currentTouchInputFactory this) jm_toString_0) this (get-field f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY (get-field f_gameInputStrings this)))
            (send (get-field f_touchButtonFactory this) jm_toggle_2 (send this jm_isPaused_0) (send (get-field f_currentTouchInputFactory this) jm_getList_0)))))))
    (define/public (jm_updateTouch_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_updateTouch_1 this))))
    (define/public (jm_updateTouch2_0)
    (let ([_features JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (when (send _features jm_isFeature_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS (get-field f_touchFeatureFactory this)))
            (begin
            (when (= (JR.i32 (- (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)) (send this jm_getStartLevel_0))) 1)
                (begin
                (send this jm_setTouchPaintableP_1 (NullPaintable.jm_getInstance_0)))))))))
    (define/public (jm_postInitTouch_0)
    (let ()
      (let/ec jreturn
        (send this jm_setTouchButtonsPaintable_1 (TouchButtonsPaintableFactory.jm_getInstance_1 (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
        (send this jm_updateScreenButtonPaintable_0))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommands_0)
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/public (jm_addCommands_0)
    (let ([_gameCommandsFactory JR.null][_myCommandsFactory JR.null][_isOverScan JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (set! _myCommandsFactory (MyCommandsFactory.jm_getInstance_0))
        (when (not (eq? (DebugFactory.jm_getInstance_0) (NoDebug.jm_getInstance_0)))
            (begin
            (send this jm_addCommand_1 (get-field f_START_TRACE _gameCommandsFactory))))
        (send this jm_addCommand_1 (get-field f_RESTART_COMMAND _gameCommandsFactory))
        (send this jm_addCommand_1 (get-field f_PAUSE_COMMAND _myCommandsFactory))
        (send this jm_addCommand_1 (get-field f_QUIT_COMMAND _gameCommandsFactory))
        (set! _isOverScan (JR.className (send (OperatingSystemFactory.jm_getInstance_0) jm_getOperatingSystemInstance_0)))
        (if (J2MEUtil.jm_isHTML_0)
            (begin
            (void))
            (if (SWTUtil.jstatic_isSWT)
            (begin
            (void))
            (when (not _isOverScan)
            (begin
            (when (and (send (TouchScreenFactory.jm_getInstance_0) jm_isTouch_0) (send (InGameFeatures.jnew_0) jm_isAny_0))
                (begin
                (send this jm_addCommand_1 (InGameOptionsForm.jstatic_DISPLAY))))
            (send this jm_addCommand_1 (get-field f_SAVE _gameCommandsFactory))
            (send this jm_addCommand_1 (get-field f_DISPLAY_LOAD_FORM _gameCommandsFactory)))))))))
    (define/public (jm_itemStateChanged_1 _item)
    (let ([_itemLabel JR.null][_gameFeatureUtil JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _itemLabel (send _item jm_getLabel_0))
            (JR.className (get-field f_logUtil this))
            (when (is-a? _item ChoiceGroup%)
                (begin
                (set! _gameFeatureUtil (GameFeatureUtil.jm_getInstance_0))
                (if (send _gameFeatureUtil jm_isExclusive_1 _itemLabel)
                    (begin
                    (send _gameFeatureUtil jm_updateExclusiveForChoiceGroup_1 _item))
                    (begin
                    (send _gameFeatureUtil jm_updateMultiple_1 _item)))))
            (send (get-field f_sensorGameUpdateProcessor this) jm_process_1 (get-field f_gameLayerManager this))
            (send this jm_updateTouch_0)
            (send this jm_updateScreenButtonPaintable_0)
            (send (get-field f_sensorGameUpdateProcessor this) jm_sendNotifications_1 (get-field f_gameLayerManager this))))))
    (define/public (jm_updateScreenButtonPaintable_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_updateScreenButtonPaintable_1 this))))
    (define/public (jm_updateScreenButtonPaintable2_0)
    (let ([_features JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_AUTO_HIDE_SHOW_SCREEN_BUTTONS (get-field f_touchFeatureFactory this)))
            (begin
            (send this jm_setTouchPaintableP_1 (send this jm_getTouchButtonsPaintable_0))
            (send this jm_setStartLevel_1 (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0))))
            (if (send _features jm_isFeature_1 (get-field f_SHOW_SCREEN_BUTTONS (get-field f_touchFeatureFactory this)))
            (begin
            (send this jm_setTouchPaintableP_1 (send this jm_getTouchButtonsPaintable_0)))
            (if (send _features jm_isFeature_1 (get-field f_HIDE_SCREEN_BUTTONS (get-field f_touchFeatureFactory this)))
            (begin
            (send this jm_setTouchPaintableP_1 (NullPaintable.jm_getInstance_0)))
            (begin
            (send this jm_setTouchPaintableP_1 (NullPaintable.jm_getInstance_0)))))))))
    (define/public (jm_getLayerManager_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameLayerManager this)))))
    (define/public (jm_setLayerManager_1 _layerManager)
    (let ()
      (let/ec jreturn
        (set-field! f_gameLayerManager this _layerManager))))
    (define/public (jm_isGameOver_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameOver this)))))
    (define/public (jm_setGameOver_1 _gameOver)
    (let ()
      (let/ec jreturn
        (set-field! f_gameOver this _gameOver))))
    (define/public (jm_processGameOver_0)
    (let ()
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_SET_GAME_OVER (get-field f_gameStrings this)))
        (send this jm_setGameOver_1 #t)
        (send this jm_removePauseCommand_0)
        (send this jm_setGameState_1 (get-field f_SHOW_END_RESULT_GAME_STATE (get-field f_gameStateFactory this)))
        (send this jm_setEndGamePaintable_1 (send this jm_getEndGameStatePaintable_0)))))
    (define/public (jm_isHighScoreSubmitted_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoreSubmitted this)))))
    (define/public (jm_setHighScoreSubmitted_1 _highScoreSubmitted)
    (let ()
      (let/ec jreturn
        (set-field! f_highScoreSubmitted this _highScoreSubmitted)
        (when _highScoreSubmitted
            (begin
            (send (get-field f_highScoresHelper this) jm_setSelectedHighScores_1 (NullHighScoresSingletonFactory.jm_getInstance_0))))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_getGameState_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameState this)))))
    (define/public (jm_setGameState_1 _gameState)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set-field! f_gameState this _gameState)
        (send (get-field f_gameStateTimeHelper this) jm_setStartTimeTNT_0)
        (send this jm_updateEndGameProcessor_0)
        (send this jm_updateGameKeyEventProcessor_0)
        (send (get-field f_gameBehavior this) jm_setGameState_1 this))))
    (define/public (jm_updateGameState_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
        (send _gameAdState jm_processAdState_2 (get-field f_gameState this) (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)))
        (when (not (eq? (get-field f_gameState this) (get-field f_PLAYING_GAME_STATE (get-field f_gameStateFactory this))))
            (begin
            (send _gameAdState jm_processPageAdState_0))))))
    (define/public (jm_updateGameKeyEventProcessor_0)
    (let ()
      (let/ec jreturn
        (if (or (not (eq? (send this jm_getGameState_0) (get-field f_PLAYING_GAME_STATE (get-field f_gameStateFactory this)))) (get-field f_isCheating this))
            (begin
            (void))
            (begin
            (void))))))
    (define/public (jm_removeAllGameKeyInputListenersOnBuild_0)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllGameKeyInputListeners_0))))
    (define/public (jm_removeAllGameKeyInputListeners_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_removeAllGameKeyInputListeners_1 this))))
    (define/public (jm_removeAllGameKeyInputListeners2_0)
    (let ([_playerGameInput JR.null][_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (begin
            (set! _index (JR.i32 (- (send (get-field f_localPlayerGameInputList this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _playerGameInput (send (get-field f_localPlayerGameInputList this) jm_get_1 _index))
            (send this jm_removeKeyInputListener_1 _playerGameInput)
            (send _playerGameInput jm_removeNonAIInputGameKeyEvents_0))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/public (jm_removeKeyInputListener_1 _playerGameInput)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameKeyEventHandler this) jm_removeListener_1 _playerGameInput))))
    (define/public (jm_updateEndGameProcessor_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_updateEndGameProcessor_1 this))))
    (define/public (jm_updateEndGameProcessor2_0)
    (let ()
      (let/ec jreturn
        (if (or (eq? (send this jm_getGameState_0) (get-field f_SHOW_END_RESULT_GAME_STATE (get-field f_gameStateFactory this))) (eq? (send this jm_getGameState_0) (get-field f_SHOW_HIGH_SCORE_GAME_STATE (get-field f_gameStateFactory this))))
            (begin
            (send this jm_setEndGameProcessor_1 (get-field f_realEndGameProcessor this)))
            (begin
            (send this jm_setEndGameProcessor_1 (Processor.jm_getInstance_0)))))))
    (define/public (jm_buildGameInit_1 _isPortion)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_cleanupGame_0)
    (let ([_progressCanvas JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (send _progressCanvas jm_addNormalPortion_2 10 "Cleaning Up")
        (send (get-field f_primaryPlayerQueue this) jm_clear_0)
        (send (get-field f_secondaryPlayerQueue this) jm_clear_0)
        (send (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0) jm_clear_0))))
    (define/public (jm_loadResourceLoadingLevel_1 _resourceLoadingLevel)
    (let ([_gameInitializedEvent JR.null])
      (let/ec jreturn
        (set! _gameInitializedEvent (get-field f_EVENT (GameInitializationUtil.jm_getInstance_0)))
        (send _gameInitializedEvent jm_setResourceLoadingLevel_1 _resourceLoadingLevel)
        (send (GameInitializedEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameInitializedEvent))))
    (define/public (jm_loadResources_1 _level)
    (let ([_gameInitializedEvent JR.null])
      (let/ec jreturn
        (set! _gameInitializedEvent (get-field f_EVENT (GameInitializationUtil.jm_getInstance_0)))
        (send _gameInitializedEvent jm_setLevel_1 _level)
        (send (GameInitializedEventHandler.jm_getInstance_0) jm_fireEvent_1 _gameInitializedEvent))))
    (define/public (jm_updateColor_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_buildGame_1 _portion)
    (let ([_progressCanvas JR.null][_features JR.null])
      (let/ec jreturn
        (send (get-field f_screenCapture this) jm_endRecording_0)
        (send (get-field f_screenCapture this) jm_startRecording_0)
        (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
        (set! _features (Features.jm_getInstance_0))
        (send _progressCanvas jm_addNormalPortion_2 _portion "Generic Build")
        (send this jm_removeAllGameKeyInputListenersOnBuild_0)
        (send this jm_updateTouch_0)
        (send _progressCanvas jm_addNormalPortion_2 _portion "High Scores")
        (send (get-field f_highScoresFactoryInterface this) jm_fetchHighScores_2 (send (get-field f_gameLayerManager this) jm_getGameInfo_0) (get-field f_highScoresHelper this))
        (send this jm_setHighScoresPaintable_1 (NullPaintable.jm_getInstance_0))
        (send _progressCanvas jm_addNormalPortion_2 _portion "Finishing.")
        (send (send this jm_getEndGameInfoP_0) jm_update_2 (send (send this jm_getLayerManager_0) jm_getGameInfo_0) this)
        (set-field! f_isSingleKeyRepeatableProcessing this (send _features jm_isFeature_1 (get-field f_SINGLE_KEY_REPEAT_PRESS (InputFeatureFactory.jm_getInstance_0))))
        (send this jm_setGameOver_1 #f)
        (send _progressCanvas jm_addNormalPortion_2 _portion "Finishing..")
        (send this jm_updateColor_0)
        (send (send this jm_getStartIntermissionPaintable_0) jm_update_0)
        (when (not (send this jm_isRunningInAnotherThread_0))
            (begin
            (jreturn (void))))
        (send _progressCanvas jm_addNormalPortion_2 _portion "Finishing...")
        (when (or (send this jm_isMainCanvas_0) (not (send this jm_isInitialized_0)))
            (begin
            (if (send _features jm_isFeature_1 (get-field f_LOAD_ONDEMAND (MainFeatureFactory.jm_getInstance_0)))
                (begin
                (when (not (JR.null? (send this jm_getCustomCommandListener_0)))
                    (begin
                    (send _progressCanvas jm_end_0))))
                (begin
                (send _progressCanvas jm_end_0)))
            (send this jm_setInitialized_1 #t)))
        (if (eq? (send this jm_getCustomCommandListener_0) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
            (begin
            (JR.className (get-field f_logUtil this))
            (send (get-field f_gameCanvasStartListener this) jm_showGamePaintable_0))
            (begin
            (JR.className (get-field f_logUtil this))))
        (send (get-field f_colorFillPaintable this) jm_setBasicColorP_1 (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0))
        (send (get-field f_gameBehavior this) jm_buildGame_1 this))))
    (define/public (jm_buildGame2_0)
    (let ([_playerGameInput JR.null][_index JR.null])
      (let/ec jreturn
        (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_ENABLE_PLAYER_GAME_INPUTS (get-field f_gameInputStrings this))) jm_appendint_1 (send (get-field f_localPlayerGameInputList this) jm_size_0)) jm_toString_0) this (get-field f_BUILD_GAME this))
        (set! _playerGameInput JR.null)
        (begin
            (set! _index (JR.i32 (- (send (get-field f_localPlayerGameInputList this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _playerGameInput (send (get-field f_localPlayerGameInputList this) jm_get_1 _index))
            (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_ENABLE_PLAYER_GAME_INPUT (get-field f_gameInputStrings this))) jm_append_1 (send _playerGameInput jm_toString_0)) jm_toString_0) this (get-field f_BUILD_GAME this))
            (send _playerGameInput jm_removeNonAIInputGameKeyEvents_0)
            (send this jm_addKeyInputListener_1 _playerGameInput))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/public (jm_addKeyInputListener_1 _playerGameInput)
    (let ()
      (let/ec jreturn
        (send (GameKeyEventHandler.jm_getInstance_0) jm_addListenerForPlayer_2 _playerGameInput (send _playerGameInput jm_getPlayerInputId_0)))))
    (define/public (jm_setGameCanvasStartListener_1 _gameCanvasStartListener)
    (let ()
      (let/ec jreturn
        (set-field! f_gameCanvasStartListener this _gameCanvasStartListener))))
    (define/public (jm_loadState_0)
    (let ([_hashtable JR.null][_levelAsString JR.null][_level JR.null][_gameInfo JR.null])
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set! _hashtable (send this jm_getLoadStateHashtable_0))
        (when (and (not (JR.null? _hashtable)) (> (send _hashtable jm_size_0) 0))
            (begin
            (set! _levelAsString (send _hashtable jm_get_1 (GameInfo.jstatic_LEVEL_NAME)))
            (set! _level (JR.className _levelAsString))
            (set! _gameInfo (send (get-field f_gameLayerManager this) jm_getGameInfo_0))
            (send _gameInfo jm_setCurrentLevel_1 _level))))))
    (define/public (jm_getLoadStateHashtable_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (jreturn (get-field f_hashtable this)))))
    (define/public (jm_setLoadStateHashtable_1 _hashtable)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set-field! f_hashtable this _hashtable))))
    (define/public (jm_getCurrentStateHashtable_0)
    (let ([_hashtable JR.null][_level JR.null])
      (let/ec jreturn
        (set! _hashtable (JR.className (get-field f_stdUtil this)))
        (set! _level (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)))
        (send _hashtable jm_put_2 (JR.toString (GameInfo.jstatic_LEVEL_NAME)) (JR.str _level))
        (JR.className (get-field f_logUtil this))
        (jreturn _hashtable))))
    (define/public (jm_paintGameOver_1 _graphics)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))
    (define/override (jm_draw_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics)
        (send (get-field f_basicSetColorUtil this) jm_setBasicColorP_2 _graphics (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0))
        (send (get-field f_gameSpecificPaintable this) jm_paint_1 _graphics))))
    (define/public (jm_clear_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_baseGameStatistics this) jm_nextRefresh_0)
        (send this jm_draw_1 _graphics)
        (send (get-field f_menuPaintable this) jm_paint_1 _graphics)
        (send (get-field f_progressPaintable this) jm_paint_1 _graphics))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processEndLevelIntermissionGameState_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_nonBotPaint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_endGamePaintable this) jm_paint_1 _graphics)
        (send (get-field f_intermissionPaintable this) jm_paint_1 _graphics)
        (send this jm_paintIntermission_1 _graphics)
        (send (get-field f_touchPaintable this) jm_paint_1 _graphics))))
    (define/public (jm_paintIntermission_1 _graphics)
    (let ()
      (let/ec jreturn (void))))
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
        (send (get-field f_inputProcessor this) jm_keyPressedByDevice_2 _keyCode _deviceId))))
    (define/override (jm_keyRepeatedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (when (get-field f_isSingleKeyRepeatableProcessing this)
            (begin
            (send (get-field f_inputProcessor this) jm_keyPressedByDevice_2 _keyCode _deviceId))))))
    (define/override (jm_keyReleasedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (send (get-field f_inputProcessor this) jm_keyReleasedByDevice_3 this _keyCode _deviceId))))
    (define/public (jm_handleRawKey_3 _keyCode _deviceId _repeated)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_endProgress_1 _isProgress)
    (let ([_portion JR.null][_myCommandsFactory JR.null][_progressCanvas JR.null])
      (let/ec jreturn
        (set! _portion 30)
        (when (and _isProgress (send this jm_isMainCanvas_0))
            (begin
            (set! _myCommandsFactory (MyCommandsFactory.jm_getInstance_0))
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (send _progressCanvas jm_start_0)
            (JR.className (send this jm_getCustomCommandListener_0))
            (set! _portion 4)))
        (jreturn _portion))))
    (define/public (jm_processPlayingGame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_cheatProcessor this) jm_update_0)
        (JR.className (send (get-field f_sensorGameUpdateProcessor this) jm_getInputSensor_0))
        (send (get-field f_gameInputProcessor this) jm_process_0)
        (send (get-field f_gameLayerManager this) jm_process_0)
        (send (get-field f_startIntermissionProcessor this) jm_process_0))))
    (define/public (jm_threadInit_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_processGame_0)
    (let ()
      (let/ec jreturn
        (super jm_process_0)
        (when (AllBinaryMediaManager.jm_update_0)
            (begin
            (when (not (send (get-field f_primaryPlayerQueue this) jm_process_0))
                (begin
                (send (get-field f_secondaryPlayerQueue this) jm_process_0)))))
        (send (get-field f_mainStateProcessor this) jm_process_0)
        (send (get-field f_menuInputProcessor this) jm_processInputList_0)
        (send (get-field f_endGameProcessor this) jm_process_0)
        (send (get-field f_baseGameStatistics this) jm_nextFrame_0))))
    (define/public (jm_notifyDonePainting_0)
    (let ()
      (let/ec jreturn
        (begin
            (JR.className (get-field f_threadObjectUtil this))))))
    (define/public (jm_shouldWait_0)
    (let ([_features JR.null][_openGLImageSpecificFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (if (AndroidUtil.jm_isAndroid_0)
            (begin
            (void))
            (if (send _features jm_isFeature_1 (get-field f_OPENGL_2D (get-field f_openGLFeatureFactory this)))
            (begin
            (void))
            (begin
            (when (send _features jm_isDefault_1 (get-field f_OPENGL (get-field f_openGLFeatureFactory this)))
                (begin
                (set! _openGLImageSpecificFactory (OpenGLImageSpecificFactory.jm_getInstance_0))
                (let/ec jbreak (let jloop () (when (get-field f_updating _openGLImageSpecificFactory)
                        (let/ec jcontinue
                    (Thread.jm_sleep_1 (get-field f_YIELD_SLEEP this))) (jloop))))))))))))
    (define/override (jm_run_0)
    (let ([_progressCanvas JR.null][_gameAdState JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (set! _progressCanvas (ProgressCanvasFactory.jm_getInstance_0))
            (send _progressCanvas jm_addNormalPortion_2 50 "Game Thread")
            (send this jm_setCurrentThread_0)
            (send this jm_setRunning_1 #t)
            (when (eq? (send this jm_getCustomCommandListener_0) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
                (begin
                (Thread.jm_sleep_1 (get-field f_YIELD_SLEEP this))))
            (send this jm_shouldWait_0)
            (send this jm_threadInit_0)
            (when (eq? (send this jm_getCustomCommandListener_0) (NullCommandListener.jstatic_NULL_COMMAND_LISTENER))
                (begin
                (Thread.jm_sleep_1 (get-field f_YIELD_SLEEP this))))
            (send this jm_open_0)
            (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
            (send _gameAdState jm_init_0)
            (send _gameAdState jm_setGameIsReady_1 #t)
            (send (get-field f_gameBehavior this) jm_run_1 this)
            (JR.className (get-field f_logUtil this))))))
    (define/public (jm_run2_0)
    (let ([_features JR.null][_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (if (or (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD (get-field f_openGLFeatureFactory this))) (J2MEUtil.jm_isHTML_0))
            (begin
            (when (send _features jm_isDefault_1 (get-field f_OPENGL_AS_GAME_THREAD (get-field f_openGLFeatureFactory this)))
                (begin
                (JR.className (get-field f_logUtil this))))
            (when (J2MEUtil.jm_isHTML_0)
                (begin
                (JR.className (get-field f_logUtil this))))
            (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
            (send _currentDisplayableFactory jm_setRunnable_1 (get-field f_gameRunnable this))
            (send _currentDisplayableFactory jm_setDisplayable_1 this)
            (send (OpenGLThreadUtil.jm_getInstance_0) jm_onResume_0))
            (if (send _features jm_isDefault_1 (get-field f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS (get-field f_openGLFeatureFactory this)))
            (begin
            (JR.className (get-field f_logUtil this))
            (send (OpenGLThreadUtil.jm_getInstance_0) jm_onResume_0)
            (let/ec jbreak (let jloop () (when (send this jm_isRunning_0)
                    (let/ec jcontinue
                (send this jm_run3_0)) (jloop))))
            (send this jm_end_0))
            (begin
            (JR.className (get-field f_logUtil this))
            (let/ec jbreak (let jloop () (when (send this jm_isRunning_0)
                    (let/ec jcontinue
                (send this jm_run3_0)) (jloop))))
            (send this jm_end_0)))))))
    (define/public (jm_run3_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_loopTimeHelper this))
        (send (get-field f_gameTickDisplayInfoSingleton this) jm_update_0)
        (send this jm_processGame_0)
        (send this jm_processLoopSleep_0))))
    (define/override (jm_setRunning_1 _running)
    (let ([_features JR.null][_currentDisplayableFactory JR.null])
      (let/ec jreturn
        (super jm_setRunning_1 _running)
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _features (Features.jm_getInstance_0))
            (if _running
                (begin
                (void))
                (begin
                (when (or (send _features jm_isDefault_1 (get-field f_OPENGL (get-field f_openGLFeatureFactory this))) (SWTUtil.jstatic_isSWT))
                    (begin
                    (when (not (eq? (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)) (get-field f_BOT (get-field f_gameTypeFactory this))))
                        (begin
                        (set! _currentDisplayableFactory (CurrentDisplayableFactory.jm_getInstance_0))
                        (send _currentDisplayableFactory jm_clearRunnable_0)))
                    (send this jm_end_0)))))))))
    (define/public (jm_end_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_screenCapture this) jm_endRecording_0)
        (send (get-field f_baseGameStatistics this) jm_add_1 (send (send (send (StringMaker.jnew_0) jm_append_1 (send (get-field f_baseGameStatistics this) jm_toString_0)) jm_append_1 (get-field f_NEW_LINE (CommonSeps.jm_getInstance_0))) jm_toString_0))
        (send (get-field f_baseGameStatistics this) jm_init_0)
        (send (get-field f_gameKeyEventHandler this) jm_removeListener_1 (get-field f_cheatProcessor this))
        (send this jm_close_0)
        (send this jm_removeAllGameKeyInputListeners_0)
        (send this jm_endGameThread_0))))
    (define/public (jm_endGameThread_0)
    (let ([_gameAdState JR.null])
      (let/ec jreturn
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_removeListener_1 this)
        (send (GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0) jm_clear_0)
        (set! _gameAdState (send (get-field f_gameAdStateFactory this) jm_getCurrentInstance_0))
        (send _gameAdState jm_notPlayingAdState_0))))
    (define/public (jm_createHighScore_1 _score)
    (let ([_gameInfo JR.null])
      (let/ec jreturn
        (set! _gameInfo (send (get-field f_gameLayerManager this) jm_getGameInfo_0))
        (jreturn (HighScore.jnew_4 0 "NONE" (GameInfo.jnew_5 (send _gameInfo jm_getGameType_0) (send _gameInfo jm_getGameMode_0) (get-field f_PLAYER_TYPE_ONE (PlayerTypesFactory.jm_getInstance_0)) 0 0) _score)))))
    (define/public (jm_setHighScore_5 _abeClientInformation _name _score _autoSubmit _isLast)
    (let ()
      (let/ec jreturn
        (send (get-field f_gameBehavior this) jm_setHighScore_6 _abeClientInformation this _name _score _autoSubmit _isLast))))
    (define/public (jm_setHighScore2_5 _abeClientInformation _name _score _autoSubmit _isLast)
    (let ([_highScore JR.null][_textBox JR.null])
      (let/ec jreturn
        (set! _highScore (send this jm_createHighScore_1 _score))
        (set! _textBox (HighScoreTextBox.jnew_9 (get-field f_highScoresFactoryInterface this) (get-field f_highScoresHelper this) _abeClientInformation (send (get-field f_gameLayerManager this) jm_getGameInfo_0) (send this jm_getCustomCommandListener_0) _name _highScore (send (get-field f_gameLayerManager this) jm_getBackgroundBasicColor_0) (send (get-field f_gameLayerManager this) jm_getForegroundBasicColor_0)))
        (when _isLast
            (begin
            (JR.className (send this jm_getCustomCommandListener_0))))
        (when _autoSubmit
            (begin
            (send (SecondaryThreadPool.jm_getInstance_0) jm_runTask_1 (SaveHighScoreRunnable.jnew_2 _isLast _textBox)))))))
    (define/public (jm_getGameStateTimeHelper_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameStateTimeHelper this)))))
    (define/public (jm_setInitialized_1 _initialized)
    (let ()
      (let/ec jreturn
        (set-field! f_initialized this _initialized))))
    (define/public (jm_isInitialized_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_initialized this)))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryGameCanvas.jstatic_id)))))
    (define/public (jm_setProgressPaintable_1 _paintable)
    (let ()
      (let/ec jreturn
        (set-field! f_progressPaintable this _paintable))))
    (define/public (jm_getStartIntermissionInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startIntermissionInterface this)))))
    (define/public (jm_getEndLevelIntermissionInterface_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_endLevelIntermissionInterface this)))))
    (define/public (jm_setTouchPaintableP_1 _paintable)
    (let ()
      (let/ec jreturn
        (set-field! f_touchPaintable this _paintable))))
    (define/public (jm_getTouchPaintableP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touchPaintable this)))))
    (define/public (jm_setEndGamePaintable_1 _endGamePaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_endGamePaintable this _endGamePaintable))))
    (define/public (jm_getEndGamePaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_endGamePaintable this)))))
    (define/public (jm_setIntermissionPaintable_1 _intermissionPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_intermissionPaintable this _intermissionPaintable))))
    (define/public (jm_getIntermissionPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_intermissionPaintable this)))))
    (define/public (jm_getEndGameInfoP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_endGameInfo this)))))
    (define/public (jm_setHighScoresPaintable_1 _highScoresPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_highScoresPaintable this _highScoresPaintable))))
    (define/public (jm_getHighScoresPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_highScoresPaintable this)))))
    (define/public (jm_getRealHighScoresPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_realHighScoresPaintable this)))))
    (define/public (jm_clearPlayerGameInputList_0)
    (let ([_playerGameInput JR.null][_index JR.null])
      (let/ec jreturn
        (set! _playerGameInput JR.null)
        (begin
            (set! _index (JR.i32 (- (send (get-field f_localPlayerGameInputList this) jm_size_0) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _playerGameInput (send (get-field f_localPlayerGameInputList this) jm_get_1 _index))
            (send (get-field f_gameKeyEventHandler this) jm_removeListener_1 _playerGameInput))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (send (get-field f_localPlayerGameInputList this) jm_clear_0))))
    (define/public (jm_addPlayerGameInput_1 _playerGameInput)
    (let ()
      (let/ec jreturn
        (send (get-field f_localPlayerGameInputList this) jm_add_1 _playerGameInput))))
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
    (define/public (jm_getStartLevel_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startLevel this)))))
    (define/public (jm_setStartLevel_1 _startLevel)
    (let ()
      (let/ec jreturn
        (set-field! f_startLevel this _startLevel))))
    (define/public (jm_setTouchButtonsPaintable_1 _touchButtonsPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_touchButtonsPaintable this _touchButtonsPaintable))))
    (define/public (jm_getTouchButtonsPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_touchButtonsPaintable this)))))
    (define/public (jm_setGameInputProcessor_1 _gameInputProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_gameInputProcessor this _gameInputProcessor))))
    (define/public (jm_getGameInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameInputProcessor this)))))
    (define/public (jm_setEndGameProcessor_1 _endGameProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_endGameProcessor this _endGameProcessor))))
    (define/public (jm_getEndGameProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_endGameProcessor this)))))
    (define/public (jm_setEndGameStatePaintable_1 _endGameStatePaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_endGameStatePaintable this _endGameStatePaintable))))
    (define/public (jm_getEndGameStatePaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_endGameStatePaintable this)))))
    (define/public (jm_setNonBotPaintableP_1 _nonBotPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_nonBotPaintable this _nonBotPaintable))))
    (define/public (jm_getNonBotPaintableP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_nonBotPaintable this)))))
    (define/public (jm_setStartIntermissionPaintable_1 _startIntermissionPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_startIntermissionPaintable this _startIntermissionPaintable))))
    (define/public (jm_getStartIntermissionPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_startIntermissionPaintable this)))))
    (define/public (jm_setMainStateProcessor_1 _mainStateProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_mainStateProcessor this _mainStateProcessor))))
    (define/public (jm_getMainStateProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_mainStateProcessor this)))))
    (define/public (jm_setProcessGameProcessor_1 _processGameProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_processGameProcessor this _processGameProcessor))))
    (define/public (jm_getProcessGameProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_processGameProcessor this)))))
    (define/public (jm_setOpenMenuPaintable_1 _openMenuPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_openMenuPaintable this _openMenuPaintable))))
    (define/public (jm_getOpenMenuPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_openMenuPaintable this)))))
    (define/public (jm_setPopupMenuInputProcessor_1 _popupMenuInputProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_popupMenuInputProcessor this _popupMenuInputProcessor))))
    (define/public (jm_getPopupMenuInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_popupMenuInputProcessor this)))))
    (define/public (jm_getSensorGameUpdateProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_sensorGameUpdateProcessor this)))))
    (define/public (jm_getRawGameInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rawGameInputProcessor this)))))
    (define/public (jm_getRawInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_rawInputProcessor this)))))
    (define/public (jm_setInputProcessor_1 _inputProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_inputProcessor this _inputProcessor))))
    (define/public (jm_getInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputProcessor this)))))
    (define/public (jm_setMenuPaintable_1 _menuPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_menuPaintable this _menuPaintable))))
    (define/public (jm_getMenuPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_menuPaintable this)))))
    (define/public (jm_setFormPaintable_1 _formPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_formPaintable this _formPaintable))))
    (define/public (jm_getFormPaintable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_formPaintable this)))))
    (define/public (jm_setGameSpecificPaintableP_1 _gameSpecificPaintable)
    (let ()
      (let/ec jreturn
        (set-field! f_gameSpecificPaintable this _gameSpecificPaintable))))
    (define/public (jm_getGameSpecificPaintableP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_gameSpecificPaintable this)))))
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
    (define/override (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryGameCanvas.jstatic_TYPE)))))
    (define/override (jm_getTitle_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_getTitle_0)))))
    (define/override (jm_isPaused_0)
    (let ()
      (let/ec jreturn
        (jreturn (super jm_isPaused_0)))))))
(define (AllBinaryGameCanvas.jclassValue) AllBinaryGameCanvas%)

(define AllBinaryGameCanvas.jcell_id 'jnone)
(define (AllBinaryGameCanvas.jstatic_id)
  (when (eq? AllBinaryGameCanvas.jcell_id 'jnone) (set! AllBinaryGameCanvas.jcell_id 0))
  AllBinaryGameCanvas.jcell_id)
(define (AllBinaryGameCanvas.jsetstatic_id value) (set! AllBinaryGameCanvas.jcell_id value))

(define AllBinaryGameCanvas.jcell_TYPE 'jnone)
(define (AllBinaryGameCanvas.jstatic_TYPE)
  (when (eq? AllBinaryGameCanvas.jcell_TYPE 'jnone) (set! AllBinaryGameCanvas.jcell_TYPE 2))
  AllBinaryGameCanvas.jcell_TYPE)
(define (AllBinaryGameCanvas.jsetstatic_TYPE value) (set! AllBinaryGameCanvas.jcell_TYPE value))

(define (AllBinaryGameCanvas.jnew_5 _commandListener _gameLayerManager _highScoresFactoryInterface _gameInitializationInterfaceFactoryInterface _buffered)
  (define this (new AllBinaryGameCanvas% [jclass "AllBinaryGameCanvas"]))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
    (set-field! f_basicSetColorUtil this (BasicColorSetUtil.jm_getInstance_0))
    (set-field! f_touchFeatureFactory this (TouchFeatureFactory.jm_getInstance_0))
    (set-field! f_openGLFeatureFactory this (OpenGLFeatureFactory.jm_getInstance_0))
    (set-field! f_touchButtonFactory this (TouchButtonFactory.jm_getInstance_0))
    (set-field! f_gameAdStateFactory this (GameAdStateFactory.jm_getInstance_0))
    (set-field! f_gameStrings this (GameStrings.jm_getInstance_0))
    (set-field! f_gameInputStrings this (GameInputStrings.jm_getInstance_0))
    (set-field! f_gameStateFactory this (GameStateFactory.jm_getInstance_0))
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (set-field! f_gameTickDisplayInfoSingleton this (GameTickDisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_gameRunnable this (GameCanvasRunnable.jnew_1 this))
    (set-field! f_gamePauseRunnable this (GameCanvasPauseRunnable.jnew_1 this))
    (set-field! f_formUtil this (FormUtil.jm_getInstance_0))
    (set-field! f_myFormUtil this (MyFormUtil.jm_getInstance_0))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_gameSpecificPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_sensorGameUpdateProcessor this (SingleSensorGameUpdateProcessor.jnew_0))
    (set-field! f_endGameInfo this (EndGameInfo.jnew_0))
    (set-field! f_startIntermissionInterface this (Intermission.jnew_0))
    (set-field! f_endLevelIntermissionInterface this (Intermission.jnew_0))
    (set-field! f_gameLayerManager this (AllBinaryGameLayerManager.jm_getNullInstance_0))
    (set-field! f_gameState this (get-field f_NO_GAME_STATE (get-field f_gameStateFactory this)))
    
    
    (set-field! f_gameStateTimeHelper this (TimeDelayHelper.jnew_1 0))
    
    
    (set-field! f_realHighScoresPaintable this (HighScoresPaintable.jnew_0))
    (set-field! f_highScoresPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_localPlayerGameInputList this (BasicArrayListD.jnew_0))
    
    (set-field! f_hashtable this (get-field f_NULL_TABLE (get-field f_stdUtil this)))
    
    (set-field! f_gameInitializationInterfaceFactoryInterface this (BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY))
    (set-field! f_touchButtonsPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_touchPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_cheatProcessor this (NoPlayerGameInput.jm_getInstance_0))
    (set-field! f_gameInputProcessor this (Processor.jm_getInstance_0))
    (set-field! f_endGameProcessor this (Processor.jm_getInstance_0))
    (set-field! f_realEndGameProcessor this (Processor.jm_getInstance_0))
    (set-field! f_startIntermissionProcessor this (Processor.jm_getInstance_0))
    (set-field! f_realStartIntermissionProcessor this (Processor.jm_getInstance_0))
    (set-field! f_endGamePaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_endGameStatePaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_nonBotPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_intermissionPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_startIntermissionPaintable this (NullInitUpdatePaintable.jm_getInstance_0))
    (set-field! f_mainStateProcessor this (Processor.jm_getInstance_0))
    (set-field! f_processGameProcessor this (Processor.jm_getInstance_0))
    
    
    (set-field! f_mainMenuInputProcessor this (NoMenuInputProcessor.jm_getInstance_0))
    (set-field! f_popupMenuInputProcessor this (NoMenuInputProcessor.jm_getInstance_0))
    (set-field! f_menuInputProcessor this (NoMenuInputProcessor.jm_getInstance_0))
    (set-field! f_menuForm this (ScrollSelectionForm.jm_getNullScrollSelectionForm_0))
    (set-field! f_formPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_openMenuPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_menuPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_currentTouchInputFactory this (NoButtonsTouchInputFactory.jm_getInstance_0))
    (set-field! f_colorFillPaintable this (send (ColorFillPaintableFactory.jm_getInstance_0) jm_getInstance_2 (get-field f_BLACK (get-field f_basicColorFactory this)) #t))
    (set-field! f_baseGameStatistics this (GameStatisticsFactory.jm_getInstance_0))
    (set-field! f_primaryPlayerQueue this (PrimaryPlayerQueueFactory.jm_getInstance_0))
    (set-field! f_secondaryPlayerQueue this (SecondaryPlayerQueueFactory.jm_getInstance_0))
    (set-field! f_BUILD_GAME this "buildGame")
    (set-field! f_gameTypeFactory this (GameTypeFactory.jm_getInstance_0))
    (set-field! f_screenCapture this (ScreenCaptureFactory.jm_getInstance_0))
    (set-field! f_basicMotionGesturesHandler this (BasicMotionGesturesHandler.jm_getInstance_0))
    (set-field! f_gameKeyEventHandler this (GameKeyEventHandler.jm_getInstance_0))
    
    
    (set-field! f_progressPaintable this (ProgressCanvasFactory.jm_getLazyInstance_0))
    
    (set-field! f_gameCanvasStartListener this (NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE))
    (set-field! f_rawGameInputProcessor this (GameCanvasInputProcessor.jnew_1 this))
    (set-field! f_rawInputProcessor this (FormInputProcessor.jnew_1 this))
    (set-field! f_inputProcessor this (send this jm_getRawGameInputProcessor_0))
    (set-field! f_YIELD_SLEEP this 100)
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_highScoresHelper this (send _highScoresFactoryInterface jm_createHighScoresHelper_0))
        (set-field! f_gameInitializationInterfaceFactoryInterface this _gameInitializationInterfaceFactoryInterface)
        (send this jm_init_2 _gameLayerManager _buffered)
        (set-field! f_highScoresFactoryInterface this _highScoresFactoryInterface)
        (if (or (eq? (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)) (get-field f_BOT (get-field f_gameTypeFactory this))) (eq? (JR.className (send (get-field f_gameLayerManager this) jm_getGameInfo_0)) (get-field f_NONE (get-field f_gameTypeFactory this))))
            (begin
            (set-field! f_gameBehavior this (DemoGameBehavior.jm_getInstance_0))
            (set-field! f_menuBehavior this (BaseMenuBehavior.jm_getInstance_0)))
            (begin
            (set-field! f_gameBehavior this (BaseGameBehavior.jm_getInstance_0))
            (set-field! f_menuBehavior this (send this jm_getInGameMenuBehavior_0))))
        (send this jm_initPopupMenu_0)
        (send this jm_initMenu_0)
        (send this jm_initSpecialPaint_0)
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this)))
  this)



