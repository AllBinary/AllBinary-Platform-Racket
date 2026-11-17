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
(lazy-require ["../../../../../org/allbinary/logic/system/os/OperatingSystems.rkt" (OperatingSystems.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/hardware/linux/LinuxHardware.rkt" (LinuxHardware.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/system/hardware/windows/WindowsHardware.rkt" (WindowsHardware.jnew_0)])
(provide (all-defined-out))

(define HardwareFactory%
  (class JObject%
    (super-new)))

(define HardwareFactory.jcell_instance 'jnone)
(define (HardwareFactory.jstatic_instance)
  (when (eq? HardwareFactory.jcell_instance 'jnone) (set! HardwareFactory.jcell_instance (HardwareFactory.jnew_0)))
  HardwareFactory.jcell_instance)

(define (HardwareFactory.jnew_0)
  (define this (new HardwareFactory% [jclass "HardwareFactory"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (HardwareFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HardwareFactory.jstatic_instance)))))

(define (HardwareFactory.jm_getInstance_1 _os)
    (let ([_operatingSystems JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (raise _e))])
            (set! _operatingSystems (OperatingSystems.jm_getInstance_0))
            (if (eq? (JR.className (send _os jm_getName_0)) 0)
                (begin
                (jreturn (LinuxHardware.jnew_0)))
                (when (>= (JR.className (send _os jm_getName_0)) 0)
                (begin
                (jreturn (WindowsHardware.jnew_0)))))
            (raise (JR.newException "Exception" (JR.concat "No Hardware Imp for: " (send _os jm_getName_0))))))))



