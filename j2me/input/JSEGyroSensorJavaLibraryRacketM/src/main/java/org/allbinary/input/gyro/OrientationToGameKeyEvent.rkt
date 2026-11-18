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
(lazy-require ["../../../../org/allbinary/game/configuration/feature/Features.rkt" (Features.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory.rkt" (SensorFeatureFactory.jm_getInstance_0)])
(lazy-require ["./NoGyroSensor.rkt" (NoGyroSensor.jnew_0)])
(provide (all-defined-out))

(define OrientationToGameKeyEvent%
  (class JObject%
    (super-new)
    (field [f_allBinaryGyroSensor JR.null])
    (field [f_MIN 0])
    (define/public (jm_setAllBinaryGyroSensor_1 _allBinaryGyroSensor)
    (let ()
      (let/ec jreturn
        (set-field! f_allBinaryGyroSensor this _allBinaryGyroSensor))))
    (define/public (jm_getAllBinaryGyroSensor_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_allBinaryGyroSensor this)))))
    (define/public (jm_process_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_updateGameKeyEvents_4 _orientation _yaw _pitch _roll)
    (let ()
      (let/ec jreturn (void))))))
(define (OrientationToGameKeyEvent.jclassValue) OrientationToGameKeyEvent%)

(define (OrientationToGameKeyEvent.jnew_0)
  (define this (new OrientationToGameKeyEvent% [jclass "OrientationToGameKeyEvent"]))
    
    (set-field! f_MIN this 15)
    (let ()
      (let/ec jreturn
        (if (send (Features.jm_getInstance_0) jm_isFeature_1 (get-field f_NO_ORIENTATION (SensorFeatureFactory.jm_getInstance_0)))
            (begin
            (set-field! f_allBinaryGyroSensor this (NoGyroSensor.jnew_0)))
            (begin
            (raise (JR.newException "Exception" "Not Such Feature"))))))
  this)



