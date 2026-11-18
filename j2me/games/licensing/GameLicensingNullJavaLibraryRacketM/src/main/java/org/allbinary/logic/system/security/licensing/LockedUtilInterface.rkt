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
;; package org.allbinary.logic.system.security.licensing

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define LockedUtilInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isLocked_0)
      (raise (JR.newException "AbstractMethodError" "isLocked")))
    (define/public (jm_isLockedFeature_1 _lockableFeatrue)
      (raise (JR.newException "AbstractMethodError" "isLockedFeature")))))
(define (LockedUtilInterface.jclassValue) LockedUtilInterface%)

(define (LockedUtilInterface.jnew_0)
  (define this (new LockedUtilInterface% [jclass "LockedUtilInterface"]))
  this)



