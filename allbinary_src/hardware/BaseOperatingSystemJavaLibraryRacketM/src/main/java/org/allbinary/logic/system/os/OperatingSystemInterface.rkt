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
;; package org.allbinary.logic.system.os

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define OperatingSystemInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getName_0)
      (raise (JR.newException "AbstractMethodError" "getName")))
    (define/public (jm_getVersion_0)
      (raise (JR.newException "AbstractMethodError" "getVersion")))
    (define/public (jm_getArch_0)
      (raise (JR.newException "AbstractMethodError" "getArch")))
    (define/public (jm_getCharacterSet_0)
      (raise (JR.newException "AbstractMethodError" "getCharacterSet")))
    (define/public (jm_isOverScan_0)
      (raise (JR.newException "AbstractMethodError" "isOverScan")))
    (define/public (jm_getOverScanXPercent_0)
      (raise (JR.newException "AbstractMethodError" "getOverScanXPercent")))
    (define/public (jm_getOverScanYPercent_0)
      (raise (JR.newException "AbstractMethodError" "getOverScanYPercent")))
    (define/public (jm_isScalable_0)
      (raise (JR.newException "AbstractMethodError" "isScalable")))
    (define/public (jm_isAutoHide_0)
      (raise (JR.newException "AbstractMethodError" "isAutoHide")))
    (define/override (jm_toString_0)
      (raise (JR.newException "AbstractMethodError" "toString")))))

(define (OperatingSystemInterface.jnew_0)
  (define this (new OperatingSystemInterface% [jclass "OperatingSystemInterface"]))
  this)



