#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define BasicGameInfoFactory%
  (class JObject%
    (super-new)
    (field [f_currentReleaseIndex 0])
    (field [f_currentDestroyIndex 0])
    (field [f_total 0])
    (define/public (jm_init_1 _total)
    (let ()
      (let/ec jreturn
        (set-field! f_currentReleaseIndex this 0)
        (set-field! f_currentDestroyIndex this 0)
        (set-field! f_total this _total))))
    (define/public (jm_isPeaked_0)
    (let ()
      (let/ec jreturn
        (if (>= (get-field f_currentDestroyIndex this) (get-field f_total this))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_howManyLeft_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- (get-field f_total this) (get-field f_currentDestroyIndex this)))))))))
(define (BasicGameInfoFactory.jclassValue) BasicGameInfoFactory%)

(define BasicGameInfoFactory.jcell_SINGLETON 'jnone)
(define (BasicGameInfoFactory.jstatic_SINGLETON)
  (when (eq? BasicGameInfoFactory.jcell_SINGLETON 'jnone) (set! BasicGameInfoFactory.jcell_SINGLETON (BasicGameInfoFactory.jnew_0)))
  BasicGameInfoFactory.jcell_SINGLETON)
(define (BasicGameInfoFactory.jsetstatic_SINGLETON value) (set! BasicGameInfoFactory.jcell_SINGLETON value))

(define (BasicGameInfoFactory.jnew_0)
  (define this (new BasicGameInfoFactory% [jclass "BasicGameInfoFactory"]))
    
    
    
    (let ()
      (let/ec jreturn (void)))
  this)

(define (BasicGameInfoFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicGameInfoFactory.jstatic_SINGLETON)))))



