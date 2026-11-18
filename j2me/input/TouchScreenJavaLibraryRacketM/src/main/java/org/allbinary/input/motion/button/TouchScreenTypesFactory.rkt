#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
(lazy-require ["./TouchScreenType.rkt" (TouchScreenType.jnew_1)])
(provide (all-defined-out))

(define TouchScreenTypesFactory%
  (class JObject%
    (super-new)
    (field [f_FINGER JR.null])
    (field [f_NOTOUCH JR.null])
    (field [f_STYLUS JR.null])
    (field [f_UNDEFINED JR.null])))
(define (TouchScreenTypesFactory.jclassValue) TouchScreenTypesFactory%)

(define TouchScreenTypesFactory.jcell_instance 'jnone)
(define (TouchScreenTypesFactory.jstatic_instance)
  (when (eq? TouchScreenTypesFactory.jcell_instance 'jnone) (set! TouchScreenTypesFactory.jcell_instance (TouchScreenTypesFactory.jnew_0)))
  TouchScreenTypesFactory.jcell_instance)
(define (TouchScreenTypesFactory.jsetstatic_instance value) (set! TouchScreenTypesFactory.jcell_instance value))

(define (TouchScreenTypesFactory.jnew_0)
  (define this (new TouchScreenTypesFactory% [jclass "TouchScreenTypesFactory"]))
    (set-field! f_FINGER this (TouchScreenType.jnew_1 "Finger"))
    (set-field! f_NOTOUCH this (TouchScreenType.jnew_1 "No Touch"))
    (set-field! f_STYLUS this (TouchScreenType.jnew_1 "Stylus"))
    (set-field! f_UNDEFINED this (TouchScreenType.jnew_1 "Undefined"))
  this)

(define (TouchScreenTypesFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (TouchScreenTypesFactory.jstatic_instance)))))



