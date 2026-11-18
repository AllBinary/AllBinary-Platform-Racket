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
;; package org.allbinary.game.configuration.feature

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["./SensorFeature.rkt" (SensorFeature.jnew_1)])
(provide (all-defined-out))

(define SensorFeatureFactory%
  (class JObject%
    (super-new)
    (field [f_NO_ORIENTATION JR.null])
    (field [f_ORIENTATION_SENSORS JR.null])
    (field [f_SIMULATED_ORIENTATION_SENSORS JR.null])
    (field [f_YAW JR.null])
    (field [f_YAW_MINUS_RIGHT_PLUS_LEFT JR.null])
    (field [f_YAW_MINUS_LEFT_PLUS_RIGHT JR.null])
    (field [f_PITCH JR.null])
    (field [f_ROLL JR.null])))
(define (SensorFeatureFactory.jclassValue) SensorFeatureFactory%)

(define SensorFeatureFactory.jcell_instance 'jnone)
(define (SensorFeatureFactory.jstatic_instance)
  (when (eq? SensorFeatureFactory.jcell_instance 'jnone) (set! SensorFeatureFactory.jcell_instance (SensorFeatureFactory.jnew_0)))
  SensorFeatureFactory.jcell_instance)
(define (SensorFeatureFactory.jsetstatic_instance value) (set! SensorFeatureFactory.jcell_instance value))

(define (SensorFeatureFactory.jnew_0)
  (define this (new SensorFeatureFactory% [jclass "SensorFeatureFactory"]))
    (set-field! f_NO_ORIENTATION this (SensorFeature.jnew_1 "No Orientation"))
    (set-field! f_ORIENTATION_SENSORS this (SensorFeature.jnew_1 "Orientation Sensors"))
    (set-field! f_SIMULATED_ORIENTATION_SENSORS this (SensorFeature.jnew_1 "Simulated Orientation Sensors"))
    (set-field! f_YAW this (SensorFeature.jnew_1 "Yaw"))
    (set-field! f_YAW_MINUS_RIGHT_PLUS_LEFT this (SensorFeature.jnew_1 "Yaw -Right +Left"))
    (set-field! f_YAW_MINUS_LEFT_PLUS_RIGHT this (SensorFeature.jnew_1 "Yaw -Left +Right "))
    (set-field! f_PITCH this (SensorFeature.jnew_1 "Pitch"))
    (set-field! f_ROLL this (SensorFeature.jnew_1 "Roll"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SensorFeatureFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SensorFeatureFactory.jstatic_instance)))))



