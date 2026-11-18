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
;; package org.allbinary.android.input.motion.event

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt")
(provide (all-defined-out))

(define AnalogControllerConfigurationEvent%
  (class AllBinaryEventObject%
    (super-new)))
(define (AnalogControllerConfigurationEvent.jclassValue) AnalogControllerConfigurationEvent%)

(define (AnalogControllerConfigurationEvent.jnew_1 _anyType)
  (define this (new AnalogControllerConfigurationEvent% [jclass "AnalogControllerConfigurationEvent"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



