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
  "../../../../../org/allbinary/graphics/displayable/MyCanvas.rkt"
  "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "./MenuListener.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/displayable/RepaintBehavior.rkt" (RepaintBehavior.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameInputStrings.rkt" (GameInputStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler.rkt" (DownGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventFactory.rkt" (GameKeyEventFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/GameKeyEventHandler.rkt" (GameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler.rkt" (UpGameKeyEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.rkt" (DisplayChangeEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.rkt" (ScreenRepaintProcessorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultCharWidth_1 MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.rkt" (CommandCurrentSelectionFormFactory.jm_getInstance_8)])
(lazy-require ["../../../../../org/allbinary/graphics/form/FormPaintable.rkt" (FormPaintable.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/FormTypeFactory.rkt" (FormTypeFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/PaintableForm.rkt" (PaintableForm.jm_getNullPaintableForm_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.rkt" (ScrollSelectionFormNoneFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/form/item/CommandTextItemArrayFactory.rkt" (CommandTextItemArrayFactory.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/form/item/validation/AllCommandsVisitor.rkt" (AllCommandsVisitor.jnew_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/NullPaintable.rkt" (NullPaintable.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.rkt" (BasicMotionGesturesHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/util/event/EventStrings.rkt" (EventStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["./NoMenuInputProcessor.rkt" (NoMenuInputProcessor.jm_getInstance_0)])
(lazy-require ["./ImmediateCommandFormInputProcessor.rkt" (ImmediateCommandFormInputProcessor.jnew_4)])
(provide (all-defined-out))

(define GameCommandCanvas%
  (class MyCanvas%
    (super-new)
    (field [f_repaintProcessor JR.null])
    (field [f_gameInputStrings JR.null])
    (field [f_foregroundBasicColor JR.null])
    (field [f_backgroundBasicColor JR.null])
    (field [f_inputToGameKeyMapping JR.null])
    (field [f_gameKeyFactory JR.null])
    (field [f_gameKeyEventFactory JR.null])
    (field [f_downGameKeyEventHandler JR.null])
    (field [f_upGameKeyEventHandler JR.null])
    (field [f_repaintBehavior JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_foregroundColor 0])
    (field [f_backgroundColor 0])
    (field [f_menuInputProcessor JR.null])
    (field [f_menuPaintable JR.null])
    (field [f_menuForm JR.null])
    (field [f_isSingleKeyRepeatableProcessing #f])
    (field [f_fontHeight 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_rectangle JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _font (send _graphics jm_getFont_0))
            (JR.className (get-field f_logUtil this))
            (set-field! f_fontHeight this (send _font jm_getHeight_0))
            (set! _rectangle (send this jm_createRectangle_1 (send (get-field f_menuForm this) jm_size_0)))
            (send (get-field f_menuForm this) jm_init_2 _rectangle (get-field f_VERTICAL_CENTER_FORM (FormTypeFactory.jm_getInstance_0)))
            (send this jm_update_0))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_onEvent_1 _eventObject)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_PERFORMANCE_MESSAGE (EventStrings.jm_getInstance_0)) this))))
    (define/public (jm_onDisplayChangeEvent_1 _displayChangeEvent)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/public (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS (GameCommandsFactory.jm_getInstance_0)))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/public (jm_initMenu_0)
    (let ([_form JR.null])
      (let/ec jreturn
        (set! _form (send this jm_createForm_0))
        (set-field! f_menuForm this _form)
        (when (not (eq? _form (ScrollSelectionFormNoneFactory.jm_getInstance_0)))
            (begin
            (send this jm_setMenuInputProcessor_1 (ImmediateCommandFormInputProcessor.jnew_4 (BasicArrayListD.jnew_0) (JR.i32 (- 1)) this _form))
            (set-field! f_menuPaintable this (FormPaintable.jnew_1 _form))))
        (send (get-field f_repaintBehavior this) jm_onChangeRepaint_1 this))))
    (define/public (jm_createForm_0)
    (let ([_items JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _items (send (CommandTextItemArrayFactory.jnew_1 (AllCommandsVisitor.jnew_0)) jm_getInstance_3 (send this jm_getCommandStack_0) (get-field f_backgroundBasicColor this) (get-field f_foregroundBasicColor this)))
        (set! _rectangle (send this jm_createRectangle_1 (vector-length _items)))
        (jreturn (CommandCurrentSelectionFormFactory.jm_getInstance_8 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) _items _rectangle (get-field f_VERTICAL_CENTER_FORM (FormTypeFactory.jm_getInstance_0)) 15 #f (get-field f_backgroundBasicColor this) (get-field f_foregroundBasicColor this))))))
    (define/public (jm_createRectangle_1 _size)
    (let ([_height JR.null][_startY JR.null][_pointFactory JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _height (JR.i32 (* _size (get-field f_fontHeight this))))
        (set! _startY (JR.i32 (- (JR.idiv (JR.i32 (* (JR.className (get-field f_displayInfo this)) 2)) 3) _height)))
        (set! _pointFactory (PointFactory.jm_getInstance_0))
        (set! _rectangle (Rectangle.jnew_3 (send _pointFactory jm_createXY_2 30 _startY) (JR.i32 (- (JR.className (get-field f_displayInfo this)) 30)) _startY))
        (jreturn _rectangle))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_addListenerInterface_1 (send this jm_getMenuInputProcessor_0))
        (send (GameKeyEventHandler.jm_getInstance_0) jm_addListener_1 (send this jm_getMenuInputProcessor_0))
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_addListenerInterface_1 this))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (send (BasicMotionGesturesHandler.jm_getInstance_0) jm_removeListener_1 (send this jm_getMenuInputProcessor_0))
        (send (GameKeyEventHandler.jm_getInstance_0) jm_removeListener_1 (send this jm_getMenuInputProcessor_0))
        (send (DisplayChangeEventHandler.jm_getInstance_0) jm_removeListener_1 this))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_repaintProcessor this) jm_process_0))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameCommandCanvas.jstatic_id)))))
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
        (JR.className (get-field f_logUtil this))
        (send this jm_addGameKeyEvent_3 _keyCode 0 #f))))
    (define/override (jm_keyReleasedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (send this jm_removeGameKeyEvent_3 _keyCode _deviceId #f))))
    (define/override (jm_keyRepeatedByDevice_2 _keyCode _deviceId)
    (let ()
      (let/ec jreturn
        (when (get-field f_isSingleKeyRepeatableProcessing this)
            (begin
            (send this jm_addGameKeyEvent_3 _keyCode _deviceId #t))))))
    (define/public (jm_addGameKeyEvent_3 _keyCode _deviceId _repeated)
    (let ([_gameKey JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 this _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE (get-field f_gameKeyFactory this))))
                (begin
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this _gameKey))
                (send (get-field f_downGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                (JR.className (send (get-field f_downGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId)))
                (begin
                (JR.className (get-field f_logUtil this))))))))
    (define/public (jm_removeGameKeyEvent_3 _keyCode _deviceId _repeated)
    (let ([_gameKey JR.null][_gameKeyEvent JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (set! _gameKey (send (get-field f_inputToGameKeyMapping this) jm_getInstanceForCanvas_2 this _keyCode))
            (if (not (eq? _gameKey (get-field f_NONE (get-field f_gameKeyFactory this))))
                (begin
                (set! _gameKeyEvent (send (get-field f_gameKeyEventFactory this) jm_getInstanceForInput_2 this _gameKey))
                (send (get-field f_upGameKeyEventHandler this) jm_fireEvent_1 _gameKeyEvent)
                (JR.className (send (get-field f_upGameKeyEventHandler this) jm_getInstanceForDevice_1 _deviceId)))
                (begin
                (JR.className (get-field f_logUtil this))))))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send (get-field f_menuPaintable this) jm_paint_1 _graphics)
        (send (get-field f_repaintBehavior this) jm_repaint_1 this))))
    (define/public (jm_setMenuInputProcessor_1 _menuInputProcessor)
    (let ()
      (let/ec jreturn
        (set-field! f_menuInputProcessor this _menuInputProcessor))))
    (define/public (jm_getMenuInputProcessor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_menuInputProcessor this)))))))
(define (GameCommandCanvas.jclassValue) GameCommandCanvas%)

(define GameCommandCanvas.jcell_id 'jnone)
(define (GameCommandCanvas.jstatic_id)
  (when (eq? GameCommandCanvas.jcell_id 'jnone) (set! GameCommandCanvas.jcell_id 0))
  GameCommandCanvas.jcell_id)
(define (GameCommandCanvas.jsetstatic_id value) (set! GameCommandCanvas.jcell_id value))

(define (GameCommandCanvas.jnew_4 _cmdListener _name _backgroundBasicColor _foregroundBasicColor)
  (define this (new GameCommandCanvas% [jclass "GameCommandCanvas"]))
    (set-field! f_repaintProcessor this (send (ScreenRepaintProcessorFactory.jm_getInstance_0) jm_create_1 this))
    (set-field! f_gameInputStrings this (GameInputStrings.jm_getInstance_0))
    
    
    (set-field! f_inputToGameKeyMapping this (JR.className (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0)))
    (set-field! f_gameKeyFactory this (GameKeyFactory.jm_getInstance_0))
    (set-field! f_gameKeyEventFactory this (GameKeyEventFactory.jm_getInstance_0))
    (set-field! f_downGameKeyEventHandler this (DownGameKeyEventHandler.jm_getInstance_0))
    (set-field! f_upGameKeyEventHandler this (UpGameKeyEventHandler.jm_getInstance_0))
    
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    
    
    (set-field! f_menuInputProcessor this (NoMenuInputProcessor.jm_getInstance_0))
    (set-field! f_menuPaintable this (NullPaintable.jm_getInstance_0))
    (set-field! f_menuForm this (PaintableForm.jm_getNullPaintableForm_0))
    (set-field! f_isSingleKeyRepeatableProcessing this (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_SINGLE_KEY_REPEAT_PRESS (InputFeatureFactory.jm_getInstance_0))))
    (set-field! f_fontHeight this 0)
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_repaintBehavior this (RepaintBehavior.jm_getInstance_0))
        (set-field! f_foregroundBasicColor this _foregroundBasicColor)
        (set-field! f_backgroundBasicColor this _backgroundBasicColor)
        (set-field! f_foregroundColor this (send (get-field f_foregroundBasicColor this) jm_intValue_0))
        (set-field! f_backgroundColor this (send (get-field f_backgroundBasicColor this) jm_intValue_0))
        (send this jm_initCommands_1 _cmdListener)
        (when (not (eq? _cmdListener (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)))
            (begin
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (raise (JR.newException "RuntimeException")))])
                (send this jm_initMenu_0)
                (send (get-field f_repaintProcessor this) jm_process_0))))))
  this)



