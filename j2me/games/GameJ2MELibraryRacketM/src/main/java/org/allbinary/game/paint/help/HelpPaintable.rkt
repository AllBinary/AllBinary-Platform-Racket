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
;; package org.allbinary.game.paint.help

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define HelpPaintable%
  (class Paintable%
    (super-new)
    (field [f_displayInfo JR.null])
    (field [f_updateMyFontProcessor JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_anchor 0])
    (field [f_title JR.null])
    (field [f_inputInfo JR.null])
    (field [f_basicColor JR.null])
    (field [f_titleBeginWidth 0])
    (field [f_beginWidthArray JR.null])
    (field [f_charHeight 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_titleBeginWidth this (arithmetic-shift (send _font jm_stringWidth_1 (get-field f_title this)) (- (bitwise-and 1 31))))
        (set-field! f_charHeight this (send _font jm_getHeight_0))
        (set! _size (vector-length (get-field f_inputInfo this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_beginWidthArray this) _index (arithmetic-shift (send _font jm_stringWidth_1 (vector-ref (get-field f_inputInfo this) _index)) (- (bitwise-and 1 31)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_setInputInfoP_1 _inputInfo)
    (let ()
      (let/ec jreturn
        (set-field! f_inputInfo this _inputInfo)
        (set-field! f_beginWidthArray this (JR.newArray 0 (vector-length (get-field f_inputInfo this))))
        (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_halfWidth JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _halfWidth (send (get-field f_displayInfo this) jm_getLastHalfWidth_0))
        (send _graphics jm_setColor_1 (send (get-field f_basicColor this) jm_intValue_0))
        (send _graphics jm_drawString_4 (get-field f_title this) (JR.i32 (- _halfWidth (get-field f_titleBeginWidth this))) (get-field f_charHeight this) (get-field f_anchor this))
        (set! _size (vector-length (get-field f_inputInfo this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _graphics jm_drawString_4 (vector-ref (get-field f_inputInfo this) _index) (JR.i32 (- _halfWidth (vector-ref (get-field f_beginWidthArray this) _index))) (JR.i32 (* (JR.i32 (+ _index 3)) (get-field f_charHeight this))) (get-field f_anchor this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (HelpPaintable.jclassValue) HelpPaintable%)

(define (HelpPaintable.jnew_3 _title _backgroundBasicColor _basicColor)
  (define this (new HelpPaintable% [jclass "HelpPaintable"]))
    (set-field! f_displayInfo this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_updateMyFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_myFontProcessor this (get-field f_updateMyFontProcessor this))
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    
    (set-field! f_inputInfo this (send (StringUtil.jm_getInstance_0) jm_getArrayInstance_0))
    
    
    (set-field! f_beginWidthArray this (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0)))
    
    (let ()
      (let/ec jreturn
        (set-field! f_title this _title)
        (set-field! f_basicColor this _basicColor)))
  this)



