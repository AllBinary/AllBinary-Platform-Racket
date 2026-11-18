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
;; package org.allbinary.direction

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define DirectionalCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getDirectionalInterface_0)
      (raise (JR.newException "AbstractMethodError" "getDirectionalInterface")))))
(define (DirectionalCompositeInterface.jclassValue) DirectionalCompositeInterface%)

(define (DirectionalCompositeInterface.jnew_0)
  (define this (new DirectionalCompositeInterface% [jclass "DirectionalCompositeInterface"]))
  this)



