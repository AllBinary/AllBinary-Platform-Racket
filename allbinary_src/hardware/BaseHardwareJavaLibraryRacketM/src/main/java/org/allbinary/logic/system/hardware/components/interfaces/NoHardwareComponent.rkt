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
;; package org.allbinary.logic.system.hardware.components.interfaces

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt"
  "./HardwareComponentInterface.rkt")
(lazy-require ["../../../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define NoHardwareComponent%
  (class JObject%
    (super-new)
    (define/public (jm_compareTo_1 _componentInterface)
    (let ()
      (let/ec jreturn
        (when (eq? this _componentInterface)
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_STRING (StringUtil.jm_getInstance_0))))))))
(define (NoHardwareComponent.jclassValue) NoHardwareComponent%)

(define NoHardwareComponent.jcell_instance 'jnone)
(define (NoHardwareComponent.jstatic_instance)
  (when (eq? NoHardwareComponent.jcell_instance 'jnone) (set! NoHardwareComponent.jcell_instance (NoHardwareComponent.jnew_0)))
  NoHardwareComponent.jcell_instance)
(define (NoHardwareComponent.jsetstatic_instance value) (set! NoHardwareComponent.jcell_instance value))

(define (NoHardwareComponent.jnew_0)
  (define this (new NoHardwareComponent% [jclass "NoHardwareComponent"]))
  this)

(define (NoHardwareComponent.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoHardwareComponent.jstatic_instance)))))



