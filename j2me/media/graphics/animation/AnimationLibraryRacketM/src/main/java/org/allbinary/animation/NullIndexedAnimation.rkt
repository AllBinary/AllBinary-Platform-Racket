#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.animation

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./IndexedAnimation.rkt")
(provide (all-defined-out))

(define NullIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (define/override (jm_getAnimationSize_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))))
(define (NullIndexedAnimation.jclassValue) NullIndexedAnimation%)

(define (NullIndexedAnimation.jnew_1 _animationBehavior)
  (define this (new NullIndexedAnimation% [jclass "NullIndexedAnimation"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



