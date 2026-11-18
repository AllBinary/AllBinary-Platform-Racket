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
;; package org.allbinary.logic.system.os.solaris

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/logic/system/os/GenericOperatingSystem.rkt")
(provide (all-defined-out))

(define SolarisOS%
  (class GenericOperatingSystem%
    (super-new)
    (define/override (jm_isAutoHide_0)
    (let ()
      (let/ec jreturn
        (jreturn #t))))))
(define (SolarisOS.jclassValue) SolarisOS%)

(define (SolarisOS.jnew_0)
  (define this (new SolarisOS% [jclass "SolarisOS"]))
    (let ()
      (let/ec jreturn
        (set-field! f_scalable this #t)))
  this)



