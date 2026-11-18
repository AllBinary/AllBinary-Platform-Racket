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
;; package org.allbinary.graphics.paint

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./Paintable.rkt")
(provide (all-defined-out))

(define PaintableComposite%
  (class Paintable%
    (super-new)
    (field [f_paintableArray JR.null])
    (define/override (jm_paint_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_paintableArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_paintableArray this) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (begin
            (set! _index (JR.i32 (- (vector-length (get-field f_paintableArray this)) 1)))
            (let/ec jbreak (let jloop () (when (>= _index 0)
                (let/ec jcontinue
            (JR.className (vector-ref (get-field f_paintableArray this) _index)))
                (set! _index (JR.i32 (- _index 1))) (jloop))))))))))
(define (PaintableComposite.jclassValue) PaintableComposite%)

(define (PaintableComposite.jnew_1 _paintableArray)
  (define this (new PaintableComposite% [jclass "PaintableComposite"]))
    
    (let ()
      (let/ec jreturn
        (set-field! f_paintableArray this _paintableArray)))
  this)



