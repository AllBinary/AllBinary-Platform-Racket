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
;; package org.allbinary.media

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./AllBinaryVibrationME.rkt")
(lazy-require ["../../../org/allbinary/game/configuration/GameConfigurationCentral.rkt" (GameConfigurationCentral.jm_getInstance_0)])
(lazy-require ["./AllBinaryNoVibration.rkt" (AllBinaryNoVibration.jstatic_NO_VIBRATION)])
(provide (all-defined-out))

(define AllBinaryVibration%
  (class AllBinaryVibrationME%
    (super-new)
    (define/override (jm_vibrate_3 _duration _type _volume)
    (let ()
      (let/ec jreturn (void))))))
(define (AllBinaryVibration.jclassValue) AllBinaryVibration%)

(define AllBinaryVibration.jcell_VIBRATION 'jnone)
(define (AllBinaryVibration.jstatic_VIBRATION)
  (when (eq? AllBinaryVibration.jcell_VIBRATION 'jnone) (set! AllBinaryVibration.jcell_VIBRATION (AllBinaryNoVibration.jstatic_NO_VIBRATION)))
  AllBinaryVibration.jcell_VIBRATION)
(define (AllBinaryVibration.jsetstatic_VIBRATION value) (set! AllBinaryVibration.jcell_VIBRATION value))

(define (AllBinaryVibration.jnew_0)
  (define this (new AllBinaryVibration% [jclass "AllBinaryVibration"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (AllBinaryVibration.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (AllBinaryVibration.jstatic_VIBRATION)))))

(define (AllBinaryVibration.jm_init_0)
    (let ()
      (let/ec jreturn
        (if (eq? (JR.className (JR.className (get-field f_VIBRATION (GameConfigurationCentral.jm_getInstance_0)))) 0)
            (begin
            (set! AllBinaryVibration.jcell_VIBRATION (AllBinaryNoVibration.jstatic_NO_VIBRATION)))
            (begin
            (set! AllBinaryVibration.jcell_VIBRATION (AllBinaryVibration.jnew_0)))))))



