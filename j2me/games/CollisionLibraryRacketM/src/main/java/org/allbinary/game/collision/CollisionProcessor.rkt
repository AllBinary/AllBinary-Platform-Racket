#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game.collision

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CollisionProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_isCollision_2 _myLayer _myLayer2)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))
(define (CollisionProcessor.jclassValue) CollisionProcessor%)

(define (CollisionProcessor.jnew_0)
  (define this (new CollisionProcessor% [jclass "CollisionProcessor"]))
  this)



