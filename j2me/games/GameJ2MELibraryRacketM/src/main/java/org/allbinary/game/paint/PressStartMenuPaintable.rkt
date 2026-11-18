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
;; package org.allbinary.game.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../org/allbinary/AppletUtil.rkt" (AppletUtil.jm_isAppletLoader_1)])
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultCharWidth_1 MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../org/allbinary/input/motion/button/TouchScreenFactory.rkt" (TouchScreenFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define PressStartMenuPaintable%
  (class Paintable%
    (super-new)
    (field [f_displayInfo JR.null])
    (field [f_PRESS_START JR.null])
    (field [f_KEY_START JR.null])
    (field [f_MENU_START JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_startString JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_flash #f])
    (field [f_anchor 0])
    (field [f_beginWidth 0])
    (field [f_line 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_beginWidth this (arithmetic-shift (JR.className (send _graphics jm_getFont_0)) (- (bitwise-and 1 31))))
        (set-field! f_line this (JR.i32 (+ (JR.i32 (* 4 (MyFontProcessor.jm_defaultCharWidth_1 _font))) (arithmetic-shift (send _font jm_getHeight_0) (- (bitwise-and 1 31))))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTimeTNT_0)
            (begin
            (if (send this jm_isFlash_0)
                (begin
                (send this jm_setFlash_1 #f))
                (begin
                (send this jm_setFlash_1 #t)))))
        (when (send this jm_isFlash_0)
            (begin
            (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
            (send _graphics jm_drawString_4 (get-field f_startString this) (JR.i32 (- (send (get-field f_displayInfo this) jm_getLastHalfWidth_0) (get-field f_beginWidth this))) (JR.i32 (- (send (get-field f_displayInfo this) jm_getLastHeight_0) (get-field f_line this))) (get-field f_anchor this)))))))
    (define/public (jm_setFlash_1 _flash)
    (let ()
      (let/ec jreturn
        (set-field! f_flash this _flash))))
    (define/public (jm_isFlash_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_flash this)))))))
(define (PressStartMenuPaintable.jclassValue) PressStartMenuPaintable%)

(define (PressStartMenuPaintable.jnew_0)
  (define this (new PressStartMenuPaintable% [jclass "PressStartMenuPaintable"]))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_PRESS_START this "Press Screen To Start")
    (set-field! f_KEY_START this "Press or Click F2 To Begin")
    (set-field! f_MENU_START this "Press Start From The Menu To Begin")
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_startString this (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 1100))
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
    
    (let ()
      (let/ec jreturn
        (if (send (TouchScreenFactory.jm_getInstance_0) jm_isTouch_0)
            (begin
            (set-field! f_startString this (get-field f_PRESS_START this)))
            (if (AppletUtil.jm_isAppletLoader_1 this)
            (begin
            (set-field! f_startString this (get-field f_KEY_START this)))
            (begin
            (set-field! f_startString this (get-field f_MENU_START this)))))))
  this)



