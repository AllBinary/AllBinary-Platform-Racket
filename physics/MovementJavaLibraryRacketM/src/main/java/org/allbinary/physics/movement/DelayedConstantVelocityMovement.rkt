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
  "../../../../allbinary_java.rkt"
  "./BasicConstantVelocityMovement.rkt")
(lazy-require ["../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define DelayedConstantVelocityMovement%
  (class BasicConstantVelocityMovement%
    (super-new)
    (field [f_timeDelayHelper JR.null])
    (define/override (jm_init_3 _speedBasicDecimal _angle _otherAngle)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_process_1 _layer)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
            (begin
            (super jm_process_1 _layer))))))))
(define (DelayedConstantVelocityMovement.jclassValue) DelayedConstantVelocityMovement%)

(define (DelayedConstantVelocityMovement.jnew_2 _basicDecimal _velocityProperties)
  (define this (new DelayedConstantVelocityMovement% [jclass "DelayedConstantVelocityMovement"]))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 60))
    (let ()
      (let/ec jreturn
        (void)))
  this)



