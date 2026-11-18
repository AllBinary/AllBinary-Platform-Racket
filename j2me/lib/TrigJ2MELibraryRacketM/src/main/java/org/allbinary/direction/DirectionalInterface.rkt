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

(define DirectionalInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setFrameByDirection_1 _direction)
      (raise (JR.newException "AbstractMethodError" "setFrameByDirection")))
    (define/public (jm_setFrameToAngle_1 _angle)
      (raise (JR.newException "AbstractMethodError" "setFrameToAngle")))
    (define/public (jm_adjustFrameToAngle_1 _newAngle)
      (raise (JR.newException "AbstractMethodError" "adjustFrameToAngle")))
    (define/public (jm_adjustFrame_1 _angle)
      (raise (JR.newException "AbstractMethodError" "adjustFrame")))))
(define (DirectionalInterface.jclassValue) DirectionalInterface%)

(define (DirectionalInterface.jnew_0)
  (define this (new DirectionalInterface% [jclass "DirectionalInterface"]))
  this)



