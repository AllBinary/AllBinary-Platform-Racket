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
;; package org.allbinary.physics.movement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define MovementInterface%
  (class JObject%
    (super-new)
    (define/public (jm_init_3 _speedBasicDecimal _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "init")))
    (define/public (jm_process_1 _layer)
      (raise (JR.newException "AbstractMethodError" "process")))
    (define/public (jm_stop_0)
      (raise (JR.newException "AbstractMethodError" "stop")))))
(define (MovementInterface.jclassValue) MovementInterface%)

(define (MovementInterface.jnew_0)
  (define this (new MovementInterface% [jclass "MovementInterface"]))
  this)



