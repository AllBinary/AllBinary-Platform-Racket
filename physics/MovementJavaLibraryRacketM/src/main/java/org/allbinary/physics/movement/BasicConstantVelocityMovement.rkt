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
  "../../../../org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.rkt"
  "./Movement.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jstatic_ZERO_BIGDECIMAL)])
(lazy-require ["../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil.rkt" (AxisMathVectorUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicConstantVelocityMovement%
  (class Movement%
    (super-new)
    (field [f_velocityProperties JR.null])
    (field [f_speedBasicDecimal JR.null])
    (field [f_axisMathVectorUtil JR.null])
    (define/override (jm_init_3 _speedBasicDecimal _angle _otherAngle)
    (let ([_angleFactory JR.null])
      (let/ec jreturn
        (set-field! f_speedBasicDecimal this _speedBasicDecimal)
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (send (get-field f_velocityProperties this) jm_setVelocityWithBigDecimal_3 _speedBasicDecimal (send _angleFactory jm_getAt_1 _angle) (send _angleFactory jm_getAt_1 _otherAngle)))))
    (define/public (jm_moveOutsideRadius_4 _layer _radius _angle _otherAngle)
    (let ([_scaleFactorValue JR.null][_xVector JR.null][_yVector JR.null][_zVector JR.null])
      (let/ec jreturn
        (set! _scaleFactorValue (send (get-field f_speedBasicDecimal this) jm_getScaledFactorValue_0))
        (set! _xVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateX_2 _radius _angle) _scaleFactorValue)))
        (set! _yVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateY_2 _radius _angle) _scaleFactorValue)))
        (set! _zVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateZ_2 _radius _otherAngle) _scaleFactorValue)))
        (send _layer jm_moveDXYZ_3 _xVector _yVector _zVector))))
    (define/override (jm_process_1 _layer)
    (let ()
      (let/ec jreturn
        (send _layer jm_moveDXYZ_3 (JR.className (send (get-field f_velocityProperties this) jm_getVelocityXBasicDecimalP_0)) (JR.className (send (get-field f_velocityProperties this) jm_getVelocityYBasicDecimalP_0)) (JR.className (send (get-field f_velocityProperties this) jm_getVelocityZBasicDecimalP_0))))))
    (define/override (jm_toString_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_velocityProperties this) jm_toString_0)))))
    (define/override (jm_stop_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_velocityProperties this) jm_zero_0))))
    (define/public (jm_getVelocityProperties_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_velocityProperties this)))))
    (define/public (jm_setVelocityProperties_1 _velocityProperties)
    (let ()
      (let/ec jreturn
        (set-field! f_velocityProperties this _velocityProperties))))
    (define/public (jm_setSpeedBasicDecimal_1 _speedBasicDecimal)
    (let ()
      (let/ec jreturn
        (set-field! f_speedBasicDecimal this _speedBasicDecimal))))
    (define/public (jm_getSpeedBasicDecimal_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_speedBasicDecimal this)))))))
(define (BasicConstantVelocityMovement.jclassValue) BasicConstantVelocityMovement%)

(define (BasicConstantVelocityMovement.jnew_2 _basicDecimal _velocityProperties)
  (define this (new BasicConstantVelocityMovement% [jclass "BasicConstantVelocityMovement"]))
    
    (set-field! f_speedBasicDecimal this (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
    (set-field! f_axisMathVectorUtil this (AxisMathVectorUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (send this jm_setSpeedBasicDecimal_1 _basicDecimal)
        (set-field! f_velocityProperties this _velocityProperties)))
  this)



