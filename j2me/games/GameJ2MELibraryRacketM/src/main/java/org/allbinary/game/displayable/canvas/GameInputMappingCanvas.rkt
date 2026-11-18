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
  "../../../../../org/allbinary/game/input/mapping/InputMappingInterface.rkt"
  "../../../../../java/lang/Integer.rkt"
  "./GameCommandCanvas.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_SCREEN)])
(lazy-require ["../../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/GameKeyFactory.rkt" (GameKeyFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/InputFactory.rkt" (InputFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/input/PlatformInputMappingFactory.rkt" (PlatformInputMappingFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.rkt" (ColorFillPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/paint/ProcessPaintable.rkt" (ProcessPaintable.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["./GameInputMappingInstructionsCanvas.rkt" (GameInputMappingInstructionsCanvas.jstatic_DISPLAY)])
(provide (all-defined-out))

(define GameInputMappingCanvas%
  (class GameCommandCanvas%
    (super-new)
    (field [f_paintable JR.null])
    (field [f_helpPaintable JR.null])
    (field [f_colorFillPaintable JR.null])
    (field [f_inputMapping JR.null])
    (field [f_NONE JR.null])
    (field [f_abeClientInformation JR.null])
    (field [f_selectedGameKey JR.null])
    (field [f_selectedInput JR.null])
    (field [f_inputFactory JR.null])
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn
        (super jm_close_0)
        (send (get-field f_paintable this) jm_process_0)
        (set-field! f_selectedGameKey this (get-field f_NONE this))
        (set-field! f_selectedInput this (get-field f_NONE this))
        (send this jm_update_0))))
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS (GameCommandsFactory.jm_getInstance_0)))
        (send this jm_addCommand_1 (GameInputMappingCanvas.jstatic_DEFAULT))
        (send this jm_addCommand_1 (GameInputMappingInstructionsCanvas.jstatic_DISPLAY))
        (send this jm_setCommandListener_1 _cmdListener))))
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
        (send this jm_addGameKey_2 _keyCode #f)
        (super jm_keyPressedByDevice_2 _keyCode 0))))
    (define/public (jm_addGameKey_2 _keyCode _repeated)
    (let ([_gameKey JR.null][_input JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (JR.className (get-field f_logUtil this))
            (set! _gameKey (JR.className (get-field f_inputToGameKeyMapping this)))
            (set! _input (send (get-field f_inputFactory this) jm_getInstanceById_1 _keyCode))
            (send this jm_processInputMapping_2 _gameKey _input)))))
    (define/public (jm_processInputMapping_2 _gameKey _input)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Start Passed GameKey: ")
        (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
        (send _stringBuffer jm_append_1 " Input: ")
        (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
        (JR.className (get-field f_logUtil this))
        (if (not (eq? (get-field f_selectedGameKey this) (get-field f_NONE this)))
            (begin
            (send this jm_gameActionCrud_2 _gameKey _input))
            (begin
            (send this jm_setSelectedAction_1 _gameKey))))))
    (define/public (jm_setSelectedAction_1 _gameKey)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (set-field! f_selectedGameKey this _gameKey)
        (set-field! f_selectedInput this (get-field f_NONE this))
        (send (get-field f_helpPaintable this) jm_update_2 (get-field f_selectedGameKey this) (get-field f_selectedInput this))
        (JR.className (get-field f_repaintBehavior this)))))
    (define/public (jm_gameActionCrud_2 _gameKey _input)
    (let ([_stringBuffer JR.null][_list JR.null][_isInputAlreadyMappedToSelectedAction JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (send _stringBuffer jm_append_1 "Start GameKey: ")
        (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
        (send _stringBuffer jm_append_1 " Input: ")
        (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
        (JR.className (get-field f_logUtil this))
        (if (eq? (get-field f_selectedInput this) (get-field f_NONE this))
            (begin
            (set! _list (JR.className (send (get-field f_inputMapping this) jm_getInputMapping_0)))
            (set! _isInputAlreadyMappedToSelectedAction (send _list jm_contains_1 _input))
            (if _isInputAlreadyMappedToSelectedAction
                (begin
                (JR.className (get-field f_logUtil this))
                (set-field! f_selectedInput this _input)
                (send (get-field f_helpPaintable this) jm_update_2 (get-field f_selectedGameKey this) (get-field f_selectedInput this))
                (JR.className (get-field f_repaintBehavior this)))
                (begin
                (send this jm_addNewMapping_2 _gameKey _input))))
            (if (send (get-field f_inputMapping this) jm_isDelete_1 _input)
            (begin
            (send this jm_deleteCurrentMapping_0))
            (begin
            (send this jm_setSelectedAction_1 _gameKey)))))))
    (define/public (jm_addNewMapping_2 _gameKey _input)
    (let ([_METHOD_NAME JR.null][_isInputAlreadyMapped JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "addNewMapping")
        (JR.className (get-field f_logUtil this))
        (set! _isInputAlreadyMapped (JR.className (send (get-field f_inputMapping this) jm_getInputMapping_0)))
        (if (and (not _isInputAlreadyMapped) (not (send (get-field f_inputMapping this) jm_isSystemInput_1 _input)))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 "Add Key Mapping : GameKey: ")
            (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
            (send _stringBuffer jm_append_1 " Input: ")
            (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
            (JR.className (get-field f_logUtil this))
            (JR.className (send (get-field f_inputMapping this) jm_getInputMapping_0))
            (set-field! f_selectedInput this _input)
            (send this jm_update_0))
            (begin
            (JR.className (get-field f_logUtil this))
            (send this jm_setSelectedAction_1 _gameKey))))))
    (define/public (jm_deleteCurrentMapping_0)
    (let ([_METHOD_NAME JR.null][_list JR.null][_stringBuffer JR.null])
      (let/ec jreturn
        (set! _METHOD_NAME "deleteCurrentMapping")
        (set! _list (JR.className (send (get-field f_inputMapping this) jm_getInputMapping_0)))
        (if (> (send _list jm_size_0) 1)
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 "Start GameKey: ")
            (send _stringBuffer jm_append_1 "Remove Key Mapping: GameKey: ")
            (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
            (send _stringBuffer jm_append_1 " Input: ")
            (send _stringBuffer jm_append_1 (JR.toString (get-field f_stringUtil this)))
            (JR.className (get-field f_logUtil this))
            (JR.className (send (get-field f_inputMapping this) jm_getInputMapping_0))
            (set-field! f_selectedInput this (get-field f_NONE this))
            (send this jm_update_0))
            (begin
            (JR.className (get-field f_logUtil this)))))))
    (define/public (jm_setDefault_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_inputMapping this) jm_setDefault_1 (get-field f_abeClientInformation this))
        (send (get-field f_helpPaintable this) jm_update_2 (get-field f_NONE this) (get-field f_NONE this))
        (JR.className (get-field f_repaintBehavior this)))))
    (define/override (jm_update_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_inputMapping this) jm_update_1 (get-field f_abeClientInformation this))
        (send (get-field f_helpPaintable this) jm_update_2 (get-field f_selectedGameKey this) (get-field f_selectedInput this))
        (JR.className (get-field f_repaintBehavior this)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics)
        (send (get-field f_helpPaintable this) jm_paint_1 _graphics)
        (send (get-field f_paintable this) jm_paint_1 _graphics)
        (super jm_paint_1 _graphics))))))
(define (GameInputMappingCanvas.jclassValue) GameInputMappingCanvas%)

(define GameInputMappingCanvas.jcell_NAME 'jnone)
(define (GameInputMappingCanvas.jstatic_NAME)
  (when (eq? GameInputMappingCanvas.jcell_NAME 'jnone) (set! GameInputMappingCanvas.jcell_NAME "GameInputMappingCanvas"))
  GameInputMappingCanvas.jcell_NAME)
(define (GameInputMappingCanvas.jsetstatic_NAME value) (set! GameInputMappingCanvas.jcell_NAME value))

(define GameInputMappingCanvas.jcell_DISPLAY 'jnone)
(define (GameInputMappingCanvas.jstatic_DISPLAY)
  (when (eq? GameInputMappingCanvas.jcell_DISPLAY 'jnone) (set! GameInputMappingCanvas.jcell_DISPLAY (Command.jnew_4 "Controls" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2)))
  GameInputMappingCanvas.jcell_DISPLAY)
(define (GameInputMappingCanvas.jsetstatic_DISPLAY value) (set! GameInputMappingCanvas.jcell_DISPLAY value))

(define GameInputMappingCanvas.jcell_DEFAULT 'jnone)
(define (GameInputMappingCanvas.jstatic_DEFAULT)
  (when (eq? GameInputMappingCanvas.jcell_DEFAULT 'jnone) (set! GameInputMappingCanvas.jcell_DEFAULT (Command.jnew_4 "Default" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2)))
  GameInputMappingCanvas.jcell_DEFAULT)
(define (GameInputMappingCanvas.jsetstatic_DEFAULT value) (set! GameInputMappingCanvas.jcell_DEFAULT value))

(define (GameInputMappingCanvas.jnew_4 _abeClientInformation _commandListener _allBinaryGameLayerManager _helpPaintable)
  (define this (new GameInputMappingCanvas% [jclass "GameInputMappingCanvas"]))
    
    
    
    
    (set-field! f_NONE this (get-field f_NONE (GameKeyFactory.jm_getInstance_0)))
    
    (set-field! f_selectedGameKey this (get-field f_NONE this))
    (set-field! f_selectedInput this (get-field f_NONE this))
    (set-field! f_inputFactory this (InputFactory.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (when (JR.null? _helpPaintable)
            (begin
            (raise (JR.newException "Exception" "Help Paintable Exception"))))
        (set-field! f_abeClientInformation this _abeClientInformation)
        (set-field! f_helpPaintable this _helpPaintable)
        (set-field! f_inputMapping this (send (PlatformInputMappingFactory.jm_getInstance_0) jm_getPersistentInputMappingInstance_0))
        (set-field! f_paintable this (ProcessPaintable.jnew_0))
        (set-field! f_colorFillPaintable this (send (ColorFillPaintableFactory.jm_getInstance_0) jm_getInstance_2 (send _allBinaryGameLayerManager jm_getBackgroundBasicColor_0) #f))))
  this)



