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
(lazy-require ["./TouchScreenFactory.rkt" (TouchScreenFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define TouchScreenTypeFactory%
  (class JObject%
    (super-new)
    (define/public (jm_TouchScreenTypeFactory_0)
    (let ([_touchScreenFactory JR.null])
      (let/ec jreturn
        (set! _touchScreenFactory (TouchScreenFactory.jm_getInstance_0))
        (send _touchScreenFactory jm_setTouch_1 #f))))))
(define (TouchScreenTypeFactory.jclassValue) TouchScreenTypeFactory%)

(define TouchScreenTypeFactory.jcell_instance 'jnone)
(define (TouchScreenTypeFactory.jstatic_instance)
  (when (eq? TouchScreenTypeFactory.jcell_instance 'jnone) (set! TouchScreenTypeFactory.jcell_instance (TouchScreenTypeFactory.jnew_0)))
  TouchScreenTypeFactory.jcell_instance)
(define (TouchScreenTypeFactory.jsetstatic_instance value) (set! TouchScreenTypeFactory.jcell_instance value))

(define (TouchScreenTypeFactory.jnew_0)
  (define this (new TouchScreenTypeFactory% [jclass "TouchScreenTypeFactory"]))
  this)

(define (TouchScreenTypeFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchScreenTypeFactory.jstatic_instance)))))



