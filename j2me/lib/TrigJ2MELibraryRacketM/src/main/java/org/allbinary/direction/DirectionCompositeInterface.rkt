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

(define DirectionCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getDirection_0)
      (raise (JR.newException "AbstractMethodError" "getDirection")))))
(define (DirectionCompositeInterface.jclassValue) DirectionCompositeInterface%)

(define (DirectionCompositeInterface.jnew_0)
  (define this (new DirectionCompositeInterface% [jclass "DirectionCompositeInterface"]))
  this)



