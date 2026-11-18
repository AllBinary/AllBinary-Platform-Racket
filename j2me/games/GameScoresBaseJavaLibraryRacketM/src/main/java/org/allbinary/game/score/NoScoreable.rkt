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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./Scoreable.rkt")
(provide (all-defined-out))

(define NoScoreable%
  (class Scoreable%
    (super-new)
    (define/override (jm_addPoints_1 _points)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_removePoints_1 _points)
    (let ()
      (let/ec jreturn (void))))))
(define (NoScoreable.jclassValue) NoScoreable%)

(define NoScoreable.jcell_SINGLETON 'jnone)
(define (NoScoreable.jstatic_SINGLETON)
  (when (eq? NoScoreable.jcell_SINGLETON 'jnone) (set! NoScoreable.jcell_SINGLETON (NoScoreable.jnew_0)))
  NoScoreable.jcell_SINGLETON)
(define (NoScoreable.jsetstatic_SINGLETON value) (set! NoScoreable.jcell_SINGLETON value))

(define (NoScoreable.jnew_0)
  (define this (new NoScoreable% [jclass "NoScoreable"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (NoScoreable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoScoreable.jstatic_SINGLETON)))))



