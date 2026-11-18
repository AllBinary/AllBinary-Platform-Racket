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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.rkt" (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/NoAllBinarySensor.rkt" (NoAllBinarySensor.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory.rkt" (AccelerometerSensorFactory.jm_getInstance_0)])
(lazy-require ["./GyroSensorFactory.rkt" (GyroSensorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define SensorGameUpdateProcessor%
  (class JObject%
    (super-new)
    (field [f_inputSensor JR.null])
    (define/public (jm_setInputSensor_1 _inputSensor)
    (let ()
      (let/ec jreturn
        (set-field! f_inputSensor this _inputSensor))))
    (define/public (jm_getInputSensor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_inputSensor this)))))
    (define/public (jm_process_1 _anyType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_sendNotifications_1 _anyType)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isAnySensor_0)
    (let ()
      (let/ec jreturn
        (if (eq? (get-field f_inputSensor this) (NoAllBinarySensor.jm_getInstance_0))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/public (jm_setNoSensors_0)
    (let ()
      (let/ec jreturn
        (send (GyroSensorFactory.jm_getInstance_0) jm_setCompleteMotionGestureInputEventListener_1 (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
        (send (AccelerometerSensorFactory.jm_getInstance_0) jm_setCompleteMotionGestureInputEventListener_1 (NoCompleteMotionGestureInputEventListener.jm_getInstance_0))
        (send this jm_setInputSensor_1 (NoAllBinarySensor.jm_getInstance_0)))))))
(define (SensorGameUpdateProcessor.jclassValue) SensorGameUpdateProcessor%)

(define (SensorGameUpdateProcessor.jnew_0)
  (define this (new SensorGameUpdateProcessor% [jclass "SensorGameUpdateProcessor"]))
    
  this)



