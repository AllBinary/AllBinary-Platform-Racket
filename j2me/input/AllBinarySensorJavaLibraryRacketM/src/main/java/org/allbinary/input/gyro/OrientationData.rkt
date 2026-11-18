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
(provide (all-defined-out))

(define OrientationData%
  (class JObject%
    (super-new)
    (field [f_ORIENTATION_SENSOR_INPUT JR.null])
    (field [f_ORIENTATION_TYPE JR.null])))
(define (OrientationData.jclassValue) OrientationData%)

(define OrientationData.jcell_SINGLETON 'jnone)
(define (OrientationData.jstatic_SINGLETON)
  (when (eq? OrientationData.jcell_SINGLETON 'jnone) (set! OrientationData.jcell_SINGLETON (OrientationData.jnew_0)))
  OrientationData.jcell_SINGLETON)
(define (OrientationData.jsetstatic_SINGLETON value) (set! OrientationData.jcell_SINGLETON value))

(define (OrientationData.jnew_0)
  (define this (new OrientationData% [jclass "OrientationData"]))
    (set-field! f_ORIENTATION_SENSOR_INPUT this "Orientation Sensor Input")
    (set-field! f_ORIENTATION_TYPE this "Orientation Type")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (OrientationData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (OrientationData.jstatic_SINGLETON)))))



