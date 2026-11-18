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
;; package org.allbinary.input.magnetic.field

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/input/AllBinarySensorListener.rkt"
  "./AllBinaryMagneticFieldSensor.rkt")
(lazy-require ["../../../../../org/allbinary/logic/math/Orientation.rkt" (Orientation.jstatic_NONE)])
(provide (all-defined-out))

(define NoMagneticFieldSensor%
  (class AllBinaryMagneticFieldSensor%
    (super-new)
    (define/public (jm_getOrientation_0)
    (let ()
      (let/ec jreturn
        (jreturn (Orientation.jstatic_NONE)))))
    (define/override (jm_onSensorChange_0)
    (let ()
      (let/ec jreturn (void))))))

(define (NoMagneticFieldSensor.jnew_0)
  (define this (new NoMagneticFieldSensor% [jclass "NoMagneticFieldSensor"]))
  this)



