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
(lazy-require ["./AllBinaryOrientationSensor.rkt" (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)])
(lazy-require ["./NoGyroSensor.rkt" (NoGyroSensor.jnew_0)])
(provide (all-defined-out))

(define GyroSensorFactory%
  (class JObject%
    (super-new)))
(define (GyroSensorFactory.jclassValue) GyroSensorFactory%)

(define GyroSensorFactory.jcell_allBinaryGyroSensor 'jnone)
(define (GyroSensorFactory.jstatic_allBinaryGyroSensor)
  (when (eq? GyroSensorFactory.jcell_allBinaryGyroSensor 'jnone) (set! GyroSensorFactory.jcell_allBinaryGyroSensor (AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR)))
  GyroSensorFactory.jcell_allBinaryGyroSensor)
(define (GyroSensorFactory.jsetstatic_allBinaryGyroSensor value) (set! GyroSensorFactory.jcell_allBinaryGyroSensor value))

(define (GyroSensorFactory.jnew_0)
  (define this (new GyroSensorFactory% [jclass "GyroSensorFactory"]))
  this)

(define (GyroSensorFactory.jm_init_0)
    (let ()
      (let/ec jreturn
        (set! GyroSensorFactory.jcell_allBinaryGyroSensor (NoGyroSensor.jnew_0)))))

(define (GyroSensorFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GyroSensorFactory.jstatic_allBinaryGyroSensor)))))



