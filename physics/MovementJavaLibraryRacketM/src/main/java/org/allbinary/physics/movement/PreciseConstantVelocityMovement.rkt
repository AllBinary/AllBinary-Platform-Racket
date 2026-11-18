#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.physics.movement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./BasicConstantVelocityMovement.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/MathUtil.rkt" (MathUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/ScaleFactorFactory.rkt" (ScaleFactorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define PreciseConstantVelocityMovement%
  (class BasicConstantVelocityMovement%
    (super-new)
    (field [f_accumulatedX 0])
    (field [f_accumulatedY 0])
    (field [f_accumulatedZ 0])
    (field [f_factorValue 0])
    (define/override (jm_init_3 _speedBasicDecimal _angle _otherAngle)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_process_1 _layer)
    (let ([_mathUtil JR.null][_velocityProperties JR.null])
      (let/ec jreturn
        (set! _mathUtil (MathUtil.jm_getInstance_0))
        (set! _velocityProperties (send this jm_getVelocityProperties_0))
        (set-field! f_accumulatedX this (JR.i32 (JR.i64 (+ (get-field f_accumulatedX this) (JR.className (send _velocityProperties jm_getVelocityXBasicDecimalP_0))))))
        (set-field! f_accumulatedY this (JR.i32 (JR.i64 (+ (get-field f_accumulatedY this) (JR.className (send _velocityProperties jm_getVelocityYBasicDecimalP_0))))))
        (set-field! f_accumulatedZ this (JR.i32 (JR.i64 (+ (get-field f_accumulatedZ this) (JR.className (send _velocityProperties jm_getVelocityZBasicDecimalP_0))))))
        (send _layer jm_moveDXYZ_3 (JR.idiv (get-field f_accumulatedX this) (get-field f_factorValue this)) (JR.idiv (get-field f_accumulatedY this) (get-field f_factorValue this)) (JR.idiv (get-field f_accumulatedZ this) (get-field f_factorValue this)))
        (when (> (send _mathUtil jm_abs_1 (get-field f_accumulatedX this)) (get-field f_factorValue this))
            (begin
            (set-field! f_accumulatedX this 0)))
        (when (> (send _mathUtil jm_abs_1 (get-field f_accumulatedY this)) (get-field f_factorValue this))
            (begin
            (set-field! f_accumulatedY this 0)))
        (when (> (send _mathUtil jm_abs_1 (get-field f_accumulatedZ this)) (get-field f_factorValue this))
            (begin
            (set-field! f_accumulatedZ this 0))))))))
(define (PreciseConstantVelocityMovement.jclassValue) PreciseConstantVelocityMovement%)

(define (PreciseConstantVelocityMovement.jnew_2 _basicDecimal _velocityProperties)
  (define this (new PreciseConstantVelocityMovement% [jclass "PreciseConstantVelocityMovement"]))
    
    
    
    (set-field! f_factorValue this (get-field f_DEFAULT_SCALE_VALUE (ScaleFactorFactory.jm_getInstance_0)))
    (let ()
      (let/ec jreturn
        (void)))
  this)



