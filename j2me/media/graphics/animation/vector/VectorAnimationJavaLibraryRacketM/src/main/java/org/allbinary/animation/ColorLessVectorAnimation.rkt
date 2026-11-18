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
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./VectorAnimation.rkt")
(lazy-require ["../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ColorLessVectorAnimation%
  (class VectorAnimation%
    (super-new)
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send this jm_paintVectors_3 _graphics _x _y))))))
(define (ColorLessVectorAnimation.jclassValue) ColorLessVectorAnimation%)

(define (ColorLessVectorAnimation.jnew_2 _currentPoints _animationBehavior)
  (define this (new ColorLessVectorAnimation% [jclass "ColorLessVectorAnimation"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



