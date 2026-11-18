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
  "../../../../../allbinary_java.rkt"
  "./BasicVelocityInterface.rkt")
(lazy-require ["../../../../../org/allbinary/direction/DirectionUtil.rkt" (DirectionUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jnew_1)])
(lazy-require ["../../../../../org/allbinary/logic/math/vector/AxisMathVectorUtil.rkt" (AxisMathVectorUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/math/PositionStrings.rkt" (PositionStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonSeps.rkt" (CommonSeps.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicVelocityProperties%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_velocityXBasicDecimal JR.null])
    (field [f_velocityYBasicDecimal JR.null])
    (field [f_velocityZBasicDecimal JR.null])
    (field [f_axisMathVectorUtil JR.null])
    (field [f_directionUtil JR.null])
    (define/public (jm_zero_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_velocityXBasicDecimal this) jm_setint_1 0)
        (send (get-field f_velocityYBasicDecimal this) jm_setint_1 0)
        (send (get-field f_velocityZBasicDecimal this) jm_setint_1 0))))
    (define/public (jm_getVelocityXBasicDecimalP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_velocityXBasicDecimal this)))))
    (define/public (jm_getVelocityYBasicDecimalP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_velocityYBasicDecimal this)))))
    (define/public (jm_getVelocityZBasicDecimalP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_velocityZBasicDecimal this)))))
    (define/public (jm_setVelocityWithBigDecimalAndDirection_3 _magnitudeBasicDecimal _direction _otherDirection)
    (let ([_angle JR.null][_otherAngle JR.null])
      (let/ec jreturn
        (set! _angle (send (get-field f_directionUtil this) jm_getAngle_1 _direction))
        (set! _otherAngle (send (get-field f_directionUtil this) jm_getAngle_1 _otherDirection))
        (send this jm_setVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle))))
    (define/public (jm_setVelocityWithDirection_3 _magnitude _direction _otherDirection)
    (let ([_angle JR.null][_otherAngle JR.null])
      (let/ec jreturn
        (set! _angle (send (get-field f_directionUtil this) jm_getAngle_1 _direction))
        (set! _otherAngle (send (get-field f_directionUtil this) jm_getAngle_1 _otherDirection))
        (send this jm_setVelocity_3 _magnitude _angle _otherAngle))))
    (define/public (jm_addVelocityWithBigDecimalAndDirection_3 _magnitudeBasicDecimal _direction _otherDirection)
    (let ([_angle JR.null][_otherAngle JR.null])
      (let/ec jreturn
        (set! _angle (send (get-field f_directionUtil this) jm_getAngle_1 _direction))
        (set! _otherAngle (send (get-field f_directionUtil this) jm_getAngle_1 _otherDirection))
        (send this jm_addVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle))))
    (define/public (jm_addVelocityWithDirection_3 _magnitude _direction _otherDirection)
    (let ([_angle JR.null][_otherAngle JR.null])
      (let/ec jreturn
        (set! _angle (send (get-field f_directionUtil this) jm_getAngle_1 _direction))
        (set! _otherAngle (send (get-field f_directionUtil this) jm_getAngle_1 _otherDirection))
        (send this jm_addVelocity_3 _magnitude _angle _otherAngle))))
    (define/public (jm_setVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle)
    (let ([_magnitude JR.null])
      (let/ec jreturn
        (set! _magnitude (send _magnitudeBasicDecimal jm_getUnscaled_0))
        (send this jm_setVelocity_3 _magnitude _angle _otherAngle))))
    (define/public (jm_addVelocityWithBigDecimal_3 _magnitudeBasicDecimal _angle _otherAngle)
    (let ([_magnitude JR.null])
      (let/ec jreturn
        (set! _magnitude (send _magnitudeBasicDecimal jm_getUnscaled_0))
        (send this jm_addVelocity_3 _magnitude _angle _otherAngle))))
    (define/public (jm_setVelocity_3 _magnitude _angle _otherAngle)
    (let ()
      (let/ec jreturn
        (send this jm_setVelocityi_3 _magnitude (send _angle jm_getValue_0) (send _otherAngle jm_getValue_0)))))
    (define/public (jm_addVelocity_3 _magnitude _angle _otherAngle)
    (let ()
      (let/ec jreturn
        (send this jm_addVelocityi_3 _magnitude (send _angle jm_getValue_0) (send _otherAngle jm_getValue_0)))))
    (define/public (jm_setVelocityi_3 _magnitude _angle _otherAngle)
    (let ([_xVector JR.null][_yVector JR.null][_zVector JR.null])
      (let/ec jreturn
        (set! _xVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateX_2 _magnitude _angle) (send (get-field f_velocityXBasicDecimal this) jm_getScaledFactorValue_0)))
        (set! _yVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateY_2 _magnitude _angle) (send (get-field f_velocityYBasicDecimal this) jm_getScaledFactorValue_0)))
        (set! _zVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateZ_2 _magnitude _otherAngle) (send (get-field f_velocityZBasicDecimal this) jm_getScaledFactorValue_0)))
        (send (get-field f_velocityXBasicDecimal this) jm_setlong_1 _xVector)
        (send (get-field f_velocityYBasicDecimal this) jm_setlong_1 _yVector)
        (send (get-field f_velocityZBasicDecimal this) jm_setlong_1 _zVector))))
    (define/public (jm_addVelocityi_3 _magnitude _angle _otherAngle)
    (let ([_xVector JR.null][_yVector JR.null][_zVector JR.null])
      (let/ec jreturn
        (set! _xVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateX_2 _magnitude _angle) (send (get-field f_velocityXBasicDecimal this) jm_getScaledFactorValue_0)))
        (set! _yVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateY_2 _magnitude _angle) (send (get-field f_velocityYBasicDecimal this) jm_getScaledFactorValue_0)))
        (set! _zVector (JR.ldiv (send (get-field f_axisMathVectorUtil this) jm_calculateZ_2 _magnitude _otherAngle) (send (get-field f_velocityZBasicDecimal this) jm_getScaledFactorValue_0)))
        (send (get-field f_velocityXBasicDecimal this) jm_addlong_1 _xVector)
        (send (get-field f_velocityYBasicDecimal this) jm_addlong_1 _yVector)
        (send (get-field f_velocityZBasicDecimal this) jm_addlong_1 _zVector))))
    (define/override (jm_toString_0)
    (let ([_commonSeps JR.null][_positionStrings JR.null][_stringBuffer JR.null][_stringUtil JR.null])
      (let/ec jreturn
        (set! _commonSeps (CommonSeps.jm_getInstance_0))
        (set! _positionStrings (PositionStrings.jm_getInstance_0))
        (set! _stringBuffer (StringMaker.jnew_0))
        (set! _stringUtil (StringUtil.jm_getInstance_0))
        (send _stringBuffer jm_append_1 "Velocity ")
        (send _stringBuffer jm_append_1 (get-field f_X_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_velocityXBasicDecimal this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_Y_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_velocityYBasicDecimal this)))
        (send _stringBuffer jm_append_1 (get-field f_SPACE _commonSeps))
        (send _stringBuffer jm_append_1 (get-field f_Z_LABEL _positionStrings))
        (send _stringBuffer jm_append_1 (send _stringUtil jm_toString_1 (get-field f_velocityZBasicDecimal this)))
        (jreturn (send _stringBuffer jm_toString_0)))))))
(define (BasicVelocityProperties.jclassValue) BasicVelocityProperties%)

(define (BasicVelocityProperties.jnew_0)
  (define this (new BasicVelocityProperties% [jclass "BasicVelocityProperties"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    
    
    
    (set-field! f_axisMathVectorUtil this (AxisMathVectorUtil.jm_getInstance_0))
    (set-field! f_directionUtil this (DirectionUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (set-field! f_velocityXBasicDecimal this (BasicDecimal.jnew_1 0))
        (set-field! f_velocityYBasicDecimal this (BasicDecimal.jnew_1 0))
        (set-field! f_velocityZBasicDecimal this (BasicDecimal.jnew_1 0))))
  this)



