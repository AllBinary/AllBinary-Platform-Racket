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
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/input/gyro/AllBinaryOrientationSensor.rkt")
(lazy-require ["../../../../org/allbinary/logic/math/Orientation.rkt" (Orientation.jstatic_NONE)])
(provide (all-defined-out))

(define NoAccelerometerSensor%
  (class AllBinaryOrientationSensor%
    (super-new)
    (define/override (jm_getOrientation_0)
    (let ()
      (let/ec jreturn
        (jreturn (Orientation.jstatic_NONE)))))
    (define/override (jm_onSensorChange_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NoAccelerometerSensor.jclassValue) NoAccelerometerSensor%)

(define (NoAccelerometerSensor.jnew_0)
  (define this (new NoAccelerometerSensor% [jclass "NoAccelerometerSensor"]))
    (let ()
      (let/ec jreturn (void)))
  this)



