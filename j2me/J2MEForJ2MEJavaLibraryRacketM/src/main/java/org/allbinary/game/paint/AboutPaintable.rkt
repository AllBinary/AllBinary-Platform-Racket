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
(lazy-require ["../../../../org/allbinary/graphics/Anchor.rkt" (Anchor.jstatic_TOP_LEFT)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

;J2MEForJ2ME
(define AboutPaintable%
  (class Paintable%
    (super-new)
    (field [f_displayInfoSingleton JR.null])
    (field [f_ABOUT JR.null])
    (field [f_info JR.null])
    (field [f_developers JR.null])
    (field [f_paintableArray JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_charHeight 0])
    (field [f_aboutBeginWidth 0])
    (field [f_infoBeginWidth JR.null])
    (field [f_developersBeginWidth JR.null])
    (field [f_anchor 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null][_infoSize JR.null][_index JR.null][_size JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_charHeight this (send _font jm_getHeight_0))
        (set-field! f_aboutBeginWidth this (arithmetic-shift (send _font jm_stringWidth_1 (get-field f_ABOUT this)) (- (bitwise-and 1 31))))
        (set! _infoSize (vector-length (get-field f_info this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _infoSize)
                (let/ec jcontinue
            (vector-set! (get-field f_infoBeginWidth this) _index (arithmetic-shift (send _font jm_stringWidth_1 (vector-ref (get-field f_info this) _index)) (- (bitwise-and 1 31)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _size (vector-length (get-field f_developers this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (vector-set! (get-field f_developersBeginWidth this) _index (arithmetic-shift (send _font jm_stringWidth_1 (vector-ref (get-field f_developers this) _index)) (- (bitwise-and 1 31)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/public (jm_getPaintableArrayInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_paintableArray this)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_halfWidth JR.null][_infoSize JR.null][_index JR.null][_size JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (set! _halfWidth (send (get-field f_displayInfoSingleton this) jm_getLastHalfWidth_0))
        (send _graphics jm_drawString_4 (get-field f_ABOUT this) (JR.i32 (- _halfWidth (get-field f_aboutBeginWidth this))) (JR.i32 (* 2 (get-field f_charHeight this))) (get-field f_anchor this))
        (set! _infoSize (vector-length (get-field f_info this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _infoSize)
                (let/ec jcontinue
            (send _graphics jm_drawString_4 (vector-ref (get-field f_info this) _index) (JR.i32 (- _halfWidth (vector-ref (get-field f_infoBeginWidth this) _index))) (JR.i32 (* (JR.i32 (+ 4 _index)) (get-field f_charHeight this))) (get-field f_anchor this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (set! _size (vector-length (get-field f_developers this)))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (send _graphics jm_drawString_4 (vector-ref (get-field f_developers this) _index) (JR.i32 (- _halfWidth (vector-ref (get-field f_developersBeginWidth this) _index))) (JR.i32 (* (JR.i32 (+ (JR.i32 (+ 5 _infoSize)) _index)) (get-field f_charHeight this))) (get-field f_anchor this)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (AboutPaintable.jclassValue) AboutPaintable%)

(define (AboutPaintable.jnew_2 _info _developers)
  (define this (new AboutPaintable% [jclass "AboutPaintable"]))
    (set-field! f_displayInfoSingleton this (DisplayInfoSingleton.jm_getInstance_0))
    (set-field! f_ABOUT this (get-field f_ABOUT (CanvasStrings.jm_getInstance_0)))
    
    
    (set-field! f_paintableArray this (vector this))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    
    
    
    
    (set-field! f_anchor this (Anchor.jstatic_TOP_LEFT))
    (let ()
      (let/ec jreturn
        (set-field! f_info this _info)
        (set-field! f_infoBeginWidth this (JR.newArray 0 (vector-length (get-field f_info this))))
        (set-field! f_developers this _developers)
        (set-field! f_developersBeginWidth this (JR.newArray 0 (vector-length (get-field f_developers this))))))
  this)

(define (AboutPaintable.jm_getInstance_2 _info _developers)
    (let ()
      (let/ec jreturn
        (jreturn (AboutPaintable.jnew_2 _info _developers)))))



