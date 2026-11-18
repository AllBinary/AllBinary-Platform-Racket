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
;; package org.allbinary.android.input.motion

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.rkt" (AnalogControllerConfigurationEvent.jnew_1)])
(lazy-require ["../../../../../org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.rkt" (AnalogControllerConfigurationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/ScaleFactorFactory.rkt" (ScaleFactorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AnalogControllerConfigurationFactory%
  (class JObject%
    (super-new)
    (field [f_SCALE_FACTOR 0])
    (field [f_SCALE_VALUE 0])
    (field [f_available #f])
    (field [f_analogControllerConfigurationEvent JR.null])
    (define/public (jm_isAvailable_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_available this)))))
    (define/public (jm_setAvailable_1 _available)
    (let ()
      (let/ec jreturn
        (set-field! f_available this _available)
        (send (AnalogControllerConfigurationEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_analogControllerConfigurationEvent this)))))))
(define (AnalogControllerConfigurationFactory.jclassValue) AnalogControllerConfigurationFactory%)

(define AnalogControllerConfigurationFactory.jcell_instance 'jnone)
(define (AnalogControllerConfigurationFactory.jstatic_instance)
  (when (eq? AnalogControllerConfigurationFactory.jcell_instance 'jnone) (set! AnalogControllerConfigurationFactory.jcell_instance (AnalogControllerConfigurationFactory.jnew_0)))
  AnalogControllerConfigurationFactory.jcell_instance)
(define (AnalogControllerConfigurationFactory.jsetstatic_instance value) (set! AnalogControllerConfigurationFactory.jcell_instance value))

(define (AnalogControllerConfigurationFactory.jnew_0)
  (define this (new AnalogControllerConfigurationFactory% [jclass "AnalogControllerConfigurationFactory"]))
    (set-field! f_SCALE_FACTOR this (get-field f_DEFAULT_SCALE_FACTOR (ScaleFactorFactory.jm_getInstance_0)))
    (set-field! f_SCALE_VALUE this (get-field f_DEFAULT_SCALE_VALUE (ScaleFactorFactory.jm_getInstance_0)))
    
    (set-field! f_analogControllerConfigurationEvent this (AnalogControllerConfigurationEvent.jnew_1 this))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AnalogControllerConfigurationFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AnalogControllerConfigurationFactory.jstatic_instance)))))



