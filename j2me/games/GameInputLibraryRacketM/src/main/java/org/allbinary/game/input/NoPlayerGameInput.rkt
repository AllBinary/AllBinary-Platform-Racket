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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./PlayerGameInput.rkt")
(lazy-require ["../../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define NoPlayerGameInput%
  (class PlayerGameInput%
    (super-new)
    (define/override (jm_onDownGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_onUpGameKeyEvent_1 _gameKeyEvent)
    (let ()
      (let/ec jreturn (void))))))
(define (NoPlayerGameInput.jclassValue) NoPlayerGameInput%)

(define NoPlayerGameInput.jcell_SINGLETON 'jnone)
(define (NoPlayerGameInput.jstatic_SINGLETON)
  (when (eq? NoPlayerGameInput.jcell_SINGLETON 'jnone) (set! NoPlayerGameInput.jcell_SINGLETON (NoPlayerGameInput.jnew_0)))
  NoPlayerGameInput.jcell_SINGLETON)
(define (NoPlayerGameInput.jsetstatic_SINGLETON value) (set! NoPlayerGameInput.jcell_SINGLETON value))

(define (NoPlayerGameInput.jnew_0)
  (define this (new NoPlayerGameInput% [jclass "NoPlayerGameInput"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (NoPlayerGameInput.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoPlayerGameInput.jstatic_SINGLETON)))))



