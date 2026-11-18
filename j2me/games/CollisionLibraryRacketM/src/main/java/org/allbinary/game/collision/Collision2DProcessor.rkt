#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CollisionProcessor.rkt")
(provide (all-defined-out))

(define Collision2DProcessor%
  (class CollisionProcessor%
    (super-new)
    (define/override (jm_isCollision_2 _myLayer _myLayer2)
    (let ()
      (let/ec jreturn
        (if (or (or (or (>= (send _myLayer2 jm_getXP_0) (send _myLayer jm_getX2_0)) (>= (send _myLayer2 jm_getYP_0) (send _myLayer jm_getY2_0))) (<= (send _myLayer2 jm_getX2_0) (send _myLayer jm_getXP_0))) (<= (send _myLayer2 jm_getY2_0) (send _myLayer jm_getYP_0)))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))))
(define (Collision2DProcessor.jclassValue) Collision2DProcessor%)

(define (Collision2DProcessor.jnew_0)
  (define this (new Collision2DProcessor% [jclass "Collision2DProcessor"]))
  this)



