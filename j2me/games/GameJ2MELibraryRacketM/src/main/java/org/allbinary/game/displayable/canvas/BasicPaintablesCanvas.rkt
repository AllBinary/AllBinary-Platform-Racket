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
(lazy-require ["../../../../../org/allbinary/game/paint/ColorFillPaintableFactory.rkt" (ColorFillPaintableFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicPaintablesCanvas%
  (class GameCommandCanvas%
    (super-new)
    (field [f_paintableArray JR.null])
    (field [f_colorFillPaintable JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (send (get-field f_colorFillPaintable this) jm_paint_1 _graphics)
        (send _graphics jm_setColor_1 (get-field f_foregroundColor this))
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_paintableArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_paintableArray this) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop)))))
        (super jm_paint_1 _graphics))))))
(define (BasicPaintablesCanvas.jclassValue) BasicPaintablesCanvas%)

(define (BasicPaintablesCanvas.jnew_4 _cmdListener _name _allBinaryGameLayerManager _paintableArray)
  (define this (new BasicPaintablesCanvas% [jclass "BasicPaintablesCanvas"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_paintableArray this _paintableArray)
        (set-field! f_colorFillPaintable this (send (ColorFillPaintableFactory.jm_getInstance_0) jm_getInstance_2 (send _allBinaryGameLayerManager jm_getBackgroundBasicColor_0) #f))))
  this)



