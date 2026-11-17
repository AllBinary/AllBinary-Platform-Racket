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
  "../../../../../allbinary_java.rkt")
(lazy-require ["./NoHardware.rkt" (NoHardware.jm_getInstance_0)])
(provide (all-defined-out))

(define HardwareFactory%
  (class JObject%
    (super-new)
    (field [f_SINGLETON JR.null])
    (define/public (jm_getInstance_1 _os)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (jreturn (get-field f_SINGLETON this))))))))

(define HardwareFactory.jcell_instance 'jnone)
(define (HardwareFactory.jstatic_instance)
  (when (eq? HardwareFactory.jcell_instance 'jnone) (set! HardwareFactory.jcell_instance (HardwareFactory.jnew_0)))
  HardwareFactory.jcell_instance)

(define (HardwareFactory.jnew_0)
  (define this (new HardwareFactory% [jclass "HardwareFactory"]))
    (set-field! f_SINGLETON this (NoHardware.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (HardwareFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HardwareFactory.jstatic_instance)))))



