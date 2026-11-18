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
  "../../../allbinary_java.rkt"
  "./AllBinarySensorListener.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/ForcedLogUtil.rkt" (ForcedLogUtil.jm_log_2)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define AllBinarySensor%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (define/public (jm_init_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinarySensor.jm_getMax_0)))))
    (define/public (jm_shutdown_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "shutdown"))))
    (define/public (jm_onSensorChange_0)
    (let ()
      (let/ec jreturn
        (ForcedLogUtil.jm_log_2 (get-field f_NOT_IMPLEMENTED (get-field f_commonStrings this)) this))))))
(define (AllBinarySensor.jclassValue) AllBinarySensor%)

(define AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR 'jnone)
(define (AllBinarySensor.jstatic_NULL_ALLBINARY_SENSOR)
  (when (eq? AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR 'jnone) (set! AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR (AllBinarySensor.jnew_0)))
  AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR)
(define (AllBinarySensor.jsetstatic_NULL_ALLBINARY_SENSOR value) (set! AllBinarySensor.jcell_NULL_ALLBINARY_SENSOR value))

(define AllBinarySensor.jcell_max 'jnone)
(define (AllBinarySensor.jstatic_max)
  (when (eq? AllBinarySensor.jcell_max 'jnone) (set! AllBinarySensor.jcell_max 100))
  AllBinarySensor.jcell_max)
(define (AllBinarySensor.jsetstatic_max value) (set! AllBinarySensor.jcell_max value))

(define (AllBinarySensor.jnew_0)
  (define this (new AllBinarySensor% [jclass "AllBinarySensor"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AllBinarySensor.jm_setMax_1 _max)
    (let ()
      (let/ec jreturn
        (set! AllBinarySensor.jcell_max _max))))

(define (AllBinarySensor.jm_getMax_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinarySensor.jstatic_max)))))



