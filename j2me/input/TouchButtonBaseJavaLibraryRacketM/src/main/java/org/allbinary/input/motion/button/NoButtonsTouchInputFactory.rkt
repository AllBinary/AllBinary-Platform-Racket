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
;; package org.allbinary.input.motion.button

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./BaseTouchInput.rkt" (BaseTouchInput.jnew_0)])
(provide (all-defined-out))

(define NoButtonsTouchInputFactory%
  (class JObject%
    (super-new)))
(define (NoButtonsTouchInputFactory.jclassValue) NoButtonsTouchInputFactory%)

(define NoButtonsTouchInputFactory.jcell_instance 'jnone)
(define (NoButtonsTouchInputFactory.jstatic_instance)
  (when (eq? NoButtonsTouchInputFactory.jcell_instance 'jnone) (set! NoButtonsTouchInputFactory.jcell_instance (BaseTouchInput.jnew_0)))
  NoButtonsTouchInputFactory.jcell_instance)
(define (NoButtonsTouchInputFactory.jsetstatic_instance value) (set! NoButtonsTouchInputFactory.jcell_instance value))

(define (NoButtonsTouchInputFactory.jnew_0)
  (define this (new NoButtonsTouchInputFactory% [jclass "NoButtonsTouchInputFactory"]))
  this)

(define (NoButtonsTouchInputFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoButtonsTouchInputFactory.jstatic_instance)))))



