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
  "./GameCommandCanvas.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_SCREEN)])
(lazy-require ["../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.rkt" (ColorFillPaintableFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../../org/allbinary/graphics/draw/DrawStringUtil.rkt" (DrawStringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define GameInputMappingInstructionsCanvas%
  (class GameCommandCanvas%
    (super-new)
    (field [f_drawStringUtil JR.null])
    (field [f_TITLE JR.null])
    (field [f_instructions JR.null])
    (field [f_colorFillPaintable JR.null])
    (field [f_anchor 0])
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (GameInputMappingInstructionsCanvas.jstatic_CLOSE))
        (send this jm_setCommandListener_1 _cmdListener))))
    (define/override (jm_paint_1 _graphics)
    (let ([_halfWidth JR.null][_beginWidth JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics)
        (set! _halfWidth (JR.className (get-field f_displayInfo this)))
        (set! _beginWidth (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))
        (send _graphics jm_setColor_1 (get-field f_foregroundColor this))
        (send _graphics jm_drawString_4 (get-field f_TITLE this) (JR.i32 (- _halfWidth _beginWidth)) (get-field f_fontHeight this) (get-field f_anchor this))
        (send (get-field f_drawStringUtil this) jm_drawCenterStrings_6 _graphics (get-field f_instructions this) (JR.className (get-field f_displayInfo this)) (get-field f_fontHeight this) _halfWidth (JR.i32 (* 3 (get-field f_fontHeight this))))
        (super jm_paint_1 _graphics))))))
(define (GameInputMappingInstructionsCanvas.jclassValue) GameInputMappingInstructionsCanvas%)

(define GameInputMappingInstructionsCanvas.jcell_DISPLAY 'jnone)
(define (GameInputMappingInstructionsCanvas.jstatic_DISPLAY)
  (when (eq? GameInputMappingInstructionsCanvas.jcell_DISPLAY 'jnone) (set! GameInputMappingInstructionsCanvas.jcell_DISPLAY (Command.jnew_4 "Help" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  GameInputMappingInstructionsCanvas.jcell_DISPLAY)
(define (GameInputMappingInstructionsCanvas.jsetstatic_DISPLAY value) (set! GameInputMappingInstructionsCanvas.jcell_DISPLAY value))

(define GameInputMappingInstructionsCanvas.jcell_CLOSE 'jnone)
(define (GameInputMappingInstructionsCanvas.jstatic_CLOSE)
  (when (eq? GameInputMappingInstructionsCanvas.jcell_CLOSE 'jnone) (set! GameInputMappingInstructionsCanvas.jcell_CLOSE (Command.jnew_4 "Close" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  GameInputMappingInstructionsCanvas.jcell_CLOSE)
(define (GameInputMappingInstructionsCanvas.jsetstatic_CLOSE value) (set! GameInputMappingInstructionsCanvas.jcell_CLOSE value))

(define GameInputMappingInstructionsCanvas.jcell_NAME 'jnone)
(define (GameInputMappingInstructionsCanvas.jstatic_NAME)
  (when (eq? GameInputMappingInstructionsCanvas.jcell_NAME 'jnone) (set! GameInputMappingInstructionsCanvas.jcell_NAME "GameInputMappingInstructionsCanvas"))
  GameInputMappingInstructionsCanvas.jcell_NAME)
(define (GameInputMappingInstructionsCanvas.jsetstatic_NAME value) (set! GameInputMappingInstructionsCanvas.jcell_NAME value))

(define (GameInputMappingInstructionsCanvas.jnew_2 _commandListener _allBinaryGameLayerManager)
  (define this (new GameInputMappingInstructionsCanvas% [jclass "GameInputMappingInstructionsCanvas"]))
    (set-field! f_drawStringUtil this (DrawStringUtil.jm_getInstance_0))
    (set-field! f_TITLE this "Input Instructions")
    (set-field! f_instructions this (vector "Add Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the '1' key to select the Fire action)" "2. Make the newly desired input for the selected action." "(Example: Press 'f' to add it to the selected action)" "Note: If the input is already mapped to another action then it will not be added. You" "will need to deleted from the other action before adding it to another." "Warning: Not all keys map for a given platform and show as Unknown." (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) "Remove Input Mapping:" "1. Select the desired action by generating a currently defined input for a given action." "(Example: Press the key '1' to select the Fire action)" "2. Select a mapped input for the selected action." "(Example: Press the key '1' to select the '1' key input for the selected Fire action)" "3. Press the Delete Key."))
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (set-field! f_colorFillPaintable this (send (ColorFillPaintableFactory.jm_getInstance_0) jm_getInstance_2 (send _allBinaryGameLayerManager jm_getBackgroundBasicColor_0) #f))))
  this)



