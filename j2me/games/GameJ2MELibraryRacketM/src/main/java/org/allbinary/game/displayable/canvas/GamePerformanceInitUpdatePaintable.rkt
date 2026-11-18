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
  "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable.rkt")
(lazy-require ["../../../../../org/allbinary/canvas/GameStatisticsFactory.rkt" (GameStatisticsFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/MyFontProcessor.rkt" (MyFontProcessor.jm_defaultStringWidth_2 MyFontProcessor.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor.rkt" (UpdateMyFontProcessor.jnew_1)])
(provide (all-defined-out))

(define GamePerformanceInitUpdatePaintable%
  (class InitUpdatePaintable%
    (super-new)
    (field [f_halfHeight 0])
    (field [f_yArray JR.null])
    (field [f_myFontProcessor JR.null])
    (field [f_baseRefreshHelperCharArray JR.null])
    (field [f_defaultStringWidth 0])
    (field [f_RED 0])
    (define/public (jm_updateMeasurement_1 _graphics)
    (let ([_font JR.null])
      (let/ec jreturn
        (set! _font (send _graphics jm_getFont_0))
        (set-field! f_defaultStringWidth this (MyFontProcessor.jm_defaultStringWidth_2 _font 2))
        (set-field! f_myFontProcessor this (MyFontProcessor.jm_getInstance_0)))))
    (define/override (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_update_0)
    (let ()
      (let/ec jreturn
        (set-field! f_baseRefreshHelperCharArray this (send (GameStatisticsFactory.jm_getInstance_0) jm_to2DCharArray_0)))))
    (define/override (jm_paint_1 _graphics)
    (let ([_charArray JR.null][_charArray2 JR.null][_size2 JR.null][_size3 JR.null][_size JR.null][_index JR.null])
      (let/ec jreturn
        (send (get-field f_myFontProcessor this) jm_process_1 _graphics)
        (send _graphics jm_setColor_1 (get-field f_RED this))
        (set! _charArray JR.null)
        (set! _charArray2 JR.null)
        (set! _size2 0)
        (set! _size3 0)
        (set! _size (JR.i32 (- (vector-length (get-field f_baseRefreshHelperCharArray this)) 2)))
        (begin
            (set! _index _size)
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (set! _charArray (vector-ref (get-field f_baseRefreshHelperCharArray this) _index))
            (set! _charArray2 (vector-ref (get-field f_baseRefreshHelperCharArray this) (JR.i32 (+ _index 1))))
            (set! _size2 (vector-length _charArray))
            (set! _size3 (vector-length _charArray2))
            (send _graphics jm_drawChars_6 _charArray 0 _size2 0 (vector-ref (get-field f_yArray this) _index) 0)
            (send _graphics jm_drawChars_6 _charArray2 0 _size3 (JR.i32 (* _size2 (get-field f_defaultStringWidth this))) (vector-ref (get-field f_yArray this) (JR.i32 (+ _index 1))) 0))
                (set! _index (JR.i32 (- _index 2))) (jloop))))))))))
(define (GamePerformanceInitUpdatePaintable.jclassValue) GamePerformanceInitUpdatePaintable%)

(define (GamePerformanceInitUpdatePaintable.jnew_0)
  (define this (new GamePerformanceInitUpdatePaintable% [jclass "GamePerformanceInitUpdatePaintable"]))
    (set-field! f_halfHeight this (send (DisplayInfoSingleton.jm_getInstance_0) jm_getLastHalfHeight_0))
    (set-field! f_yArray this (vector (JR.i32 (+ (get-field f_halfHeight this) 30)) (JR.i32 (+ (get-field f_halfHeight this) 30)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 15)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 15)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 30)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 30)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 45)) (JR.i32 (+ (JR.i32 (+ (get-field f_halfHeight this) 30)) 45))))
    (set-field! f_myFontProcessor this (UpdateMyFontProcessor.jnew_1 this))
    (set-field! f_baseRefreshHelperCharArray this (JR.newArray 0 0 0))
    
    (set-field! f_RED this (JR.className (get-field f_RED (BasicColorFactory.jm_getInstance_0))))
  this)



