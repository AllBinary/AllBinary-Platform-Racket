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
  "./Movement.rkt")
(lazy-require ["../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties.rkt" (BasicVelocityProperties.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jstatic_ZERO_BIGDECIMAL)])
(lazy-require ["../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil.rkt" (AxisMathVectorUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/math/AngleFactory.rkt" (AngleFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ConstantVelocityNotifyViewChangeMovement%
  (class Movement%
    (super-new)
    (field [f_basicVelocityProperties JR.null])
    (field [f_speedBasicDecimal JR.null])
    (field [f_axisMathVectorUtil JR.null])
    (define/override (jm_init_3 _speedBasicDecimal _angle _otherAngle)
    (let ([_angleFactory JR.null])
      (let/ec jreturn
        (set-field! f_speedBasicDecimal this _speedBasicDecimal)
        (set! _angleFactory (AngleFactory.jm_getInstance_0))
        (send (get-field f_basicVelocityProperties this) jm_setVelocityWithBigDecimal_3 _speedBasicDecimal (send _angleFactory jm_getAt_1 _angle) (send _angleFactory jm_getAt_1 _otherAngle)))))
    (define/public (jm_moveOutsideRadius_4 _layer _radius _angle _otherAngle)
    (let ([_scaleFactorValue JR.null][_xVector JR.null][_yVector JR.null][_zVector JR.null])
      (let/ec jreturn
        (set! _scaleFactorValue (send (get-field f_speedBasicDecimal this) jm_getScaledFactorValue_0))
        (set! _xVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateX_2 _radius _angle) _scaleFactorValue)))
        (set! _yVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateY_2 _radius _angle) _scaleFactorValue)))
        (set! _zVector (JR.i32 (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateZ_2 _radius _otherAngle) _scaleFactorValue)))
        (send _layer jm_moveDXYZ_3 _xVector _yVector _zVector))))
    (define/override (jm_process_1 _layer)
    (let ([_x JR.null][_y JR.null][_z JR.null])
      (let/ec jreturn
        (set! _x (JR.className (send (get-field f_basicVelocityProperties this) jm_getVelocityXBasicDecimalP_0)))
        (set! _y (JR.className (send (get-field f_basicVelocityProperties this) jm_getVelocityYBasicDecimalP_0)))
        (set! _z (JR.className (send (get-field f_basicVelocityProperties this) jm_getVelocityZBasicDecimalP_0)))
        (send _layer jm_moveDXYZ_3 _x _y _z)
        (when (or (or (not (= _x 0)) (not (= _y 0))) (not (= _z 0)))
            (begin
            (send _layer jm_onViewPositionChangeEvent_0))))))
    (define/override (jm_stop_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_basicVelocityProperties this) jm_zero_0))))))
(define (ConstantVelocityNotifyViewChangeMovement.jclassValue) ConstantVelocityNotifyViewChangeMovement%)

(define (ConstantVelocityNotifyViewChangeMovement.jnew_0)
  (define this (new ConstantVelocityNotifyViewChangeMovement% [jclass "ConstantVelocityNotifyViewChangeMovement"]))
    
    
    (set-field! f_axisMathVectorUtil this (AxisMathVectorUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_speedBasicDecimal this (BasicDecimal.jstatic_ZERO_BIGDECIMAL))
        (set-field! f_basicVelocityProperties this (BasicVelocityProperties.jnew_0))))
  this)



