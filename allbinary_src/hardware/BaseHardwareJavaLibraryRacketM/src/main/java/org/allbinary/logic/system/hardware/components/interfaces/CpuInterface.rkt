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
;; package org.allbinary.logic.system.hardware.components.interfaces

(require racket/class racket/lazy-require
  "../../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define CpuInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getProcessor_0)
      (raise (JR.newException "AbstractMethodError" "getProcessor")))
    (define/public (jm_getVendorId_0)
      (raise (JR.newException "AbstractMethodError" "getVendorId")))
    (define/public (jm_getCpuFamily_0)
      (raise (JR.newException "AbstractMethodError" "getCpuFamily")))
    (define/public (jm_getModel_0)
      (raise (JR.newException "AbstractMethodError" "getModel")))
    (define/public (jm_getModelName_0)
      (raise (JR.newException "AbstractMethodError" "getModelName")))
    (define/public (jm_getStepping_0)
      (raise (JR.newException "AbstractMethodError" "getStepping")))
    (define/public (jm_getCpuSpeed_0)
      (raise (JR.newException "AbstractMethodError" "getCpuSpeed")))
    (define/public (jm_getCacheSize_0)
      (raise (JR.newException "AbstractMethodError" "getCacheSize")))
    (define/public (jm_compareTo_1 _cpuInterface)
      (raise (JR.newException "AbstractMethodError" "compareTo")))))
(define (CpuInterface.jclassValue) CpuInterface%)

(define (CpuInterface.jnew_0)
  (define this (new CpuInterface% [jclass "CpuInterface"]))
  this)



