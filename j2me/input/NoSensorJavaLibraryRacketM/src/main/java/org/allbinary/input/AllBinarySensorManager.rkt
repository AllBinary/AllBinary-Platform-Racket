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
;; package org.allbinary.input

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["../../../org/allbinary/input/accelerometer/AccelerometerSensorFactory.rkt" (AccelerometerSensorFactory.jm_init_0)])
(lazy-require ["../../../org/allbinary/input/gyro/GyroSensorFactory.rkt" (GyroSensorFactory.jm_init_0)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(provide (all-defined-out))

(define AllBinarySensorManager%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_ORIENTATION_SENSOR_INPUT JR.null])
    (field [f_ORIENTATION_TYPE JR.null])
    (field [f_list JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getSensorNamesList_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_list this)))))
    (define/public (jm_shutdown_0)
    (let ()
      (let/ec jreturn (void))))))
(define (AllBinarySensorManager.jclassValue) AllBinarySensorManager%)

(define AllBinarySensorManager.jcell_instance 'jnone)
(define (AllBinarySensorManager.jstatic_instance)
  (when (eq? AllBinarySensorManager.jcell_instance 'jnone) (set! AllBinarySensorManager.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  AllBinarySensorManager.jcell_instance)
(define (AllBinarySensorManager.jsetstatic_instance value) (set! AllBinarySensorManager.jcell_instance value))

(define (AllBinarySensorManager.jnew_0)
  (define this (new AllBinarySensorManager% [jclass "AllBinarySensorManager"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_ORIENTATION_SENSOR_INPUT this "Orientation Sensor Input")
    (set-field! f_ORIENTATION_TYPE this "Orientation Type")
    (set-field! f_list this (BasicArrayListD.jnew_0))
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) _e))])
            (GyroSensorFactory.jm_init_0)
            (AccelerometerSensorFactory.jm_init_0))))
  this)

(define (AllBinarySensorManager.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (AllBinarySensorManager.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! AllBinarySensorManager.jcell_instance (AllBinarySensorManager.jnew_0))))
        (jreturn (AllBinarySensorManager.jstatic_instance)))))



