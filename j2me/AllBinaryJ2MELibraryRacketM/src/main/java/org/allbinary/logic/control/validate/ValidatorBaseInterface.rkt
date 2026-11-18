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
;; package org.allbinary.logic.control.validate

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Boolean.rkt")
(provide (all-defined-out))

(define ValidatorBaseInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isValid_0)
      (raise (JR.newException "AbstractMethodError" "isValid")))
    (define/public (jm_validationInfo_0)
      (raise (JR.newException "AbstractMethodError" "validationInfo")))
    (define/public (jm_toHashtable_0)
      (raise (JR.newException "AbstractMethodError" "toHashtable")))
    (define/public (jm_toList_0)
      (raise (JR.newException "AbstractMethodError" "toList")))))
(define (ValidatorBaseInterface.jclassValue) ValidatorBaseInterface%)

(define (ValidatorBaseInterface.jnew_0)
  (define this (new ValidatorBaseInterface% [jclass "ValidatorBaseInterface"]))
  this)



