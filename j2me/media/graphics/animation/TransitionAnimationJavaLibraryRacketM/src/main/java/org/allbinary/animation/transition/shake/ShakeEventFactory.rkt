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
;; package org.allbinary.animation.transition.shake

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./ShakeEvent.rkt" (ShakeEvent.jnew_0)])
(provide (all-defined-out))

(define ShakeEventFactory%
  (class JObject%
    (super-new)
    (field [f_MICRO JR.null])
    (field [f_SMALL JR.null])
    (field [f_MEDIUM JR.null])
    (field [f_LARGE JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ShakeEventFactory.jclassValue) ShakeEventFactory%)

(define ShakeEventFactory.jcell_instance 'jnone)
(define (ShakeEventFactory.jstatic_instance)
  (when (eq? ShakeEventFactory.jcell_instance 'jnone) (set! ShakeEventFactory.jcell_instance (ShakeEventFactory.jnew_0)))
  ShakeEventFactory.jcell_instance)
(define (ShakeEventFactory.jsetstatic_instance value) (set! ShakeEventFactory.jcell_instance value))

(define (ShakeEventFactory.jnew_0)
  (define this (new ShakeEventFactory% [jclass "ShakeEventFactory"]))
    (set-field! f_MICRO this (ShakeEvent.jnew_0))
    (set-field! f_SMALL this (ShakeEvent.jnew_0))
    (set-field! f_MEDIUM this (ShakeEvent.jnew_0))
    (set-field! f_LARGE this (ShakeEvent.jnew_0))
  this)

(define (ShakeEventFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ShakeEventFactory.jstatic_instance)))))



