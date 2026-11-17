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
;; package org.allbinary.logic.system.hardware

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./HardwareInterface.rkt")
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent.rkt" (NoHardwareComponent.jm_getInstance_0)])
(provide (all-defined-out))

(define NoHardware%
  (class JObject%
    (super-new)
    (define/public (jm_getComponent_1 _index)
    (let ()
      (let/ec jreturn
        (jreturn (NoHardwareComponent.jm_getInstance_0)))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn "No Hardware"))))
    (define/public (jm_compareTo_1 _hardwareInterface)
    (let ()
      (let/ec jreturn
        (jreturn #t))))
    (define/public (jm_difference_1 _hardwareInterface)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_TABLE (StdUtil.jm_getInstance_0))))))))

(define NoHardware.jcell_instance 'jnone)
(define (NoHardware.jstatic_instance)
  (when (eq? NoHardware.jcell_instance 'jnone) (set! NoHardware.jcell_instance (NoHardware.jnew_0)))
  NoHardware.jcell_instance)

(define (NoHardware.jnew_0)
  (define this (new NoHardware% [jclass "NoHardware"]))
  this)

(define (NoHardware.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NoHardware.jstatic_instance)))))



