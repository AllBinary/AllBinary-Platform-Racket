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
;; package org.allbinary.input.gyro

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/input/AllBinarySensor.rkt")
(lazy-require ["../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.rkt" (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveFloatUtil.rkt" (PrimitiveFloatUtil.jm_getArrayInstance_0)])
(provide (all-defined-out))

(define AllBinaryOrientationSensor%
  (class AllBinarySensor%
    (super-new)
    (field [f_sensorDataFloatArray JR.null])
    (field [f_listener JR.null])
    (define/public (jm_setCompleteMotionGestureInputEventListener_1 _completeMotionGestureInputEventListenerInterface)
    (let ()
      (let/ec jreturn
        (set-field! f_listener this _completeMotionGestureInputEventListenerInterface))))
    (define/public (jm_getOrientation_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "Exception" (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)))))))))
(define (AllBinaryOrientationSensor.jclassValue) AllBinaryOrientationSensor%)

(define AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR 'jnone)
(define (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)
  (when (eq? AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR 'jnone) (set! AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR (AllBinaryOrientationSensor.jnew_0)))
  AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR)
(define (AllBinaryOrientationSensor.jsetstatic_NULL_ALLBINARY_ORIENTATION_SENSOR value) (set! AllBinaryOrientationSensor.jcell_NULL_ALLBINARY_ORIENTATION_SENSOR value))

(define (AllBinaryOrientationSensor.jnew_0)
  (define this (new AllBinaryOrientationSensor% [jclass "AllBinaryOrientationSensor"]))
    (set-field! f_sensorDataFloatArray this (PrimitiveFloatUtil.jm_getArrayInstance_0))
    (set-field! f_listener this (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)



