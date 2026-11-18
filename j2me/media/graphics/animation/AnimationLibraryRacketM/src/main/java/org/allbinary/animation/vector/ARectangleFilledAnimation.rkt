#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.animation.vector

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./RectangleFilledAnimation.rkt")
(lazy-require ["../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ARectangleFilledAnimation%
  (class RectangleFilledAnimation%
    (super-new)
    (field [f_x 0])
    (field [f_y 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _unusedX _unusedY)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics (get-field f_x this) (get-field f_y this)))))))
(define (ARectangleFilledAnimation.jclassValue) ARectangleFilledAnimation%)

(define (ARectangleFilledAnimation.jnew_0)
  (define this (new ARectangleFilledAnimation% [jclass "ARectangleFilledAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)))
  this)



