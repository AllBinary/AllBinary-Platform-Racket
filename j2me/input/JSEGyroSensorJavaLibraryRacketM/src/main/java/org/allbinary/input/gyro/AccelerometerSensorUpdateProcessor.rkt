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
  "../../../../org/allbinary/canvas/Processor.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.rkt" (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.rkt" (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)])
(lazy-require ["../../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory.rkt" (AccelerometerSensorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define AccelerometerSensorUpdateProcessor%
  (class Processor%
    (super-new)
    (define/override (jm_process_0)
    (let ([_sensorFeatureFactory JR.null])
      (let/ec jreturn
        (set! _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_ORIENTATION_SENSORS _sensorFeatureFactory))
            (begin
            (send (AccelerometerSensorFactory.jm_getInstance_0) jm_setCompleteMotionGestureInputEventListener_1 (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)))
            (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_SIMULATED_ORIENTATION_SENSORS _sensorFeatureFactory))
            (begin
            (send (AccelerometerSensorFactory.jm_getInstance_0) jm_setCompleteMotionGestureInputEventListener_1 (SingleKeyPressGameKeyFromMotionGestureEventListener.jnew_0)))
            (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_NO_ORIENTATION _sensorFeatureFactory))
            (begin
            (send (AccelerometerSensorFactory.jm_getInstance_0) jm_setCompleteMotionGestureInputEventListener_1 (NoCompleteMotionGestureInputEventListener.jm_getInstance_0)))
            (begin
            (raise (JR.newException "Exception" "Sensor Feature Not Set")))))))))))
(define (AccelerometerSensorUpdateProcessor.jclassValue) AccelerometerSensorUpdateProcessor%)

(define (AccelerometerSensorUpdateProcessor.jnew_0)
  (define this (new AccelerometerSensorUpdateProcessor% [jclass "AccelerometerSensorUpdateProcessor"]))
  this)



