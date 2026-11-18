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
;; package org.allbinary.input.accelerometer

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/input/gyro/AllBinaryOrientationSensor.rkt" (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)])
(lazy-require ["./NoAccelerometerSensor.rkt" (NoAccelerometerSensor.jnew_0)])
(provide (all-defined-out))

(define AccelerometerSensorFactory%
  (class JObject%
    (super-new)))
(define (AccelerometerSensorFactory.jclassValue) AccelerometerSensorFactory%)

(define AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor 'jnone)
(define (AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor)
  (when (eq? AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor 'jnone) (set! AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor)
(define (AccelerometerSensorFactory.jsetstatic_allBinaryAccelerometerSensor value) (set! AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor value))

(define (AccelerometerSensorFactory.jnew_0)
  (define this (new AccelerometerSensorFactory% [jclass "AccelerometerSensorFactory"]))
  this)

(define (AccelerometerSensorFactory.jm_init_0)
    (let ([_features JR.null][_sensorFeatureFactory JR.null])
      (let/ec jreturn
        (set! _features (Features.jm_getInstance_0))
        (set! _sensorFeatureFactory (SensorFeatureFactory.jm_getInstance_0))
        (if (send _features jm_isFeature_1 (get-field f_ORIENTATION_SENSORS _sensorFeatureFactory))
            (begin
            (raise (JR.newException "Exception" "No Orientation Sensors")))
            (if (send _features jm_isFeature_1 (get-field f_SIMULATED_ORIENTATION_SENSORS _sensorFeatureFactory))
            (begin
            (raise (JR.newException "Exception" "No Simulation Sensors")))
            (if (send _features jm_isFeature_1 (get-field f_NO_ORIENTATION _sensorFeatureFactory))
            (begin
            (set! AccelerometerSensorFactory.jcell_allBinaryAccelerometerSensor (NoAccelerometerSensor.jnew_0)))
            (begin
            (raise (JR.newException "Exception" "Not Such SensorFeature")))))))))

(define (AccelerometerSensorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AccelerometerSensorFactory.jstatic_allBinaryAccelerometerSensor)))))



