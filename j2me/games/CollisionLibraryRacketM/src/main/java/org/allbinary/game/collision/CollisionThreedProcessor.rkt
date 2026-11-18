#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CollisionProcessor.rkt")
(provide (all-defined-out))

(define CollisionThreedProcessor%
  (class CollisionProcessor%
    (super-new)
    (define/override (jm_isCollision_2 _myLayer _myLayer2)
    (let ()
      (let/ec jreturn
        (if (or (or (or (or (or (>= (send _myLayer2 jm_getXP_0) (send _myLayer jm_getX2_0)) (>= (send _myLayer2 jm_getYP_0) (send _myLayer jm_getY2_0))) (<= (send _myLayer2 jm_getX2_0) (send _myLayer jm_getXP_0))) (<= (send _myLayer2 jm_getY2_0) (send _myLayer jm_getYP_0))) (< (send _myLayer2 jm_getZP_0) (send _myLayer jm_getZ2_0))) (> (send _myLayer2 jm_getZ2_0) (send _myLayer jm_getZP_0)))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))))
(define (CollisionThreedProcessor.jclassValue) CollisionThreedProcessor%)

(define (CollisionThreedProcessor.jnew_0)
  (define this (new CollisionThreedProcessor% [jclass "CollisionThreedProcessor"]))
  this)



