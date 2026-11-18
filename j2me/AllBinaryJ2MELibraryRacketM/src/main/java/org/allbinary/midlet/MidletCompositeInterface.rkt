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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MidletCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setMidlet_1 _midlet)
      (raise (JR.newException "AbstractMethodError" "setMidlet")))
    (define/public (jm_getMidlet_0)
      (raise (JR.newException "AbstractMethodError" "getMidlet")))
    (define/public (jm_getDisplayable_0)
      (raise (JR.newException "AbstractMethodError" "getDisplayable")))))
(define (MidletCompositeInterface.jclassValue) MidletCompositeInterface%)

(define (MidletCompositeInterface.jnew_0)
  (define this (new MidletCompositeInterface% [jclass "MidletCompositeInterface"]))
  this)



