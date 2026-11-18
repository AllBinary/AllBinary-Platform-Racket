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
;; package org.allbinary.game.layer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt")
(provide (all-defined-out))

(define PaintableLayerComposite%
  (class Paintable%
    (super-new)
    (field [f_paintableArray JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (vector-length (get-field f_paintableArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_paintableArray this) _index))) (jloop))))))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ([_paintableInterface JR.null][_index JR.null])
      (let/ec jreturn
        (set! _paintableInterface JR.null)
        (begin
            (set! _index (vector-length (get-field f_paintableArray this)))
            (let/ec jbreak (let jloop () (when (>= (let ([jvalue (JR.i32 (- _index 1))]) (set! _index jvalue) jvalue) 0)
                (let/ec jcontinue
            (set! _paintableInterface (vector-ref (get-field f_paintableArray this) _index))
            (send _paintableInterface jm_paintThreed_1 _graphics)) (jloop))))))))))
(define (PaintableLayerComposite.jclassValue) PaintableLayerComposite%)

(define (PaintableLayerComposite.jnew_1 _paintableArray)
  (define this (new PaintableLayerComposite% [jclass "PaintableLayerComposite"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_paintableArray this _paintableArray)))
  this)



