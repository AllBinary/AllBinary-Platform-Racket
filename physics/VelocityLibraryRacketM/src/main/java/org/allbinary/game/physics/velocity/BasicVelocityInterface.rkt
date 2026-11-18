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
;; package org.allbinary.game.physics.velocity

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define BasicVelocityInterface%
  (class JObject%
    (super-new)
    (define/public (jm_getVelocityXBasicDecimalP_0)
      (raise (JR.newException "AbstractMethodError" "getVelocityXBasicDecimalP")))
    (define/public (jm_getVelocityYBasicDecimalP_0)
      (raise (JR.newException "AbstractMethodError" "getVelocityYBasicDecimalP")))
    (define/public (jm_zero_0)
      (raise (JR.newException "AbstractMethodError" "zero")))
    (define/public (jm_setVelocityWithBigDecimalAndDirection_3 _magnitudeBasicDecimal _direction _otherDirection)
      (raise (JR.newException "AbstractMethodError" "setVelocityWithBigDecimalAndDirection")))
    (define/public (jm_addVelocityWithBigDecimalAndDirection_3 _magnitudeBasicDecimal _direction _otherDirection)
      (raise (JR.newException "AbstractMethodError" "addVelocityWithBigDecimalAndDirection")))
    (define/public (jm_setVelocityWithDirection_3 _magnitude _direction _otherDirection)
      (raise (JR.newException "AbstractMethodError" "setVelocityWithDirection")))
    (define/public (jm_addVelocityWithDirection_3 _magnitude _direction _otherDirection)
      (raise (JR.newException "AbstractMethodError" "addVelocityWithDirection")))
    (define/public (jm_setVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "setVelocityWithBigDecimal")))
    (define/public (jm_addVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "addVelocityWithBigDecimal")))
    (define/public (jm_setVelocity_3 _magnitude _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "setVelocity")))
    (define/public (jm_addVelocity_3 _magnitude _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "addVelocity")))
    (define/public (jm_addVelocityi_3 _magnitude _angle _otherAngle)
      (raise (JR.newException "AbstractMethodError" "addVelocityi")))))
(define (BasicVelocityInterface.jclassValue) BasicVelocityInterface%)

(define (BasicVelocityInterface.jnew_0)
  (define this (new BasicVelocityInterface% [jclass "BasicVelocityInterface"]))
  this)



