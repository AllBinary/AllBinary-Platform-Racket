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
;; package org.allbinary.vector

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define VectorInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getPoints_1 _frame)
      (raise (JR.newException "AbstractMethodError" "getPoints")))
    (define/public (jm_setPoints_1 _currentPoints)
      (raise (JR.newException "AbstractMethodError" "setPoints")))))
(define (VectorInterface.jclassValue) VectorInterface%)

(define (VectorInterface.jnew_0)
  (define this (new VectorInterface% [jclass "VectorInterface"]))
  this)



