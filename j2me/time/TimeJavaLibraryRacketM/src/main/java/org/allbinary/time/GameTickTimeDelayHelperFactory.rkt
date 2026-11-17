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
;; package org.allbinary.time

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./GameTickTimeDelayHelper.rkt" (GameTickTimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define GameTickTimeDelayHelperFactory%
  (class JObject%
    (super-new)))

(define GameTickTimeDelayHelperFactory.jcell_instance 'jnone)
(define (GameTickTimeDelayHelperFactory.jstatic_instance)
  (when (eq? GameTickTimeDelayHelperFactory.jcell_instance 'jnone) (set! GameTickTimeDelayHelperFactory.jcell_instance (GameTickTimeDelayHelper.jnew_1 (JR.i32 (- 1)))))
  GameTickTimeDelayHelperFactory.jcell_instance)

(define (GameTickTimeDelayHelperFactory.jnew_0)
  (define this (new GameTickTimeDelayHelperFactory% [jclass "GameTickTimeDelayHelperFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameTickTimeDelayHelperFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameTickTimeDelayHelperFactory.jstatic_instance)))))



