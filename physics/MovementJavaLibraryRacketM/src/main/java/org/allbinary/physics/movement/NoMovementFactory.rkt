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
;; package org.allbinary.physics.movement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./Movement.rkt" (Movement.jnew_0)])
(provide (all-defined-out))

(define NoMovementFactory%
  (class JObject%
    (super-new)
    (field [f_movement JR.null])
    (define/public (jm_getMovmentInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_movement this)))))))
(define (NoMovementFactory.jclassValue) NoMovementFactory%)

(define NoMovementFactory.jcell_instance 'jnone)
(define (NoMovementFactory.jstatic_instance)
  (when (eq? NoMovementFactory.jcell_instance 'jnone) (set! NoMovementFactory.jcell_instance (NoMovementFactory.jnew_0)))
  NoMovementFactory.jcell_instance)
(define (NoMovementFactory.jsetstatic_instance value) (set! NoMovementFactory.jcell_instance value))

(define (NoMovementFactory.jnew_0)
  (define this (new NoMovementFactory% [jclass "NoMovementFactory"]))
    (set-field! f_movement this (Movement.jnew_0))
  this)

(define (NoMovementFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoMovementFactory.jstatic_instance)))))



