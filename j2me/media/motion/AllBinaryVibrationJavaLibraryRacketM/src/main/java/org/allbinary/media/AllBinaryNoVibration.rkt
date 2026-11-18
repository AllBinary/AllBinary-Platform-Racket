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
(provide (all-defined-out))

(define AllBinaryNoVibration%
  (class AllBinaryVibrationME%
    (super-new)
    (define/override (jm_vibrate_3 _duration _type _volume)
    (let ()
      (let/ec jreturn (void))))))
(define (AllBinaryNoVibration.jclassValue) AllBinaryNoVibration%)

(define AllBinaryNoVibration.jcell_NO_VIBRATION 'jnone)
(define (AllBinaryNoVibration.jstatic_NO_VIBRATION)
  (when (eq? AllBinaryNoVibration.jcell_NO_VIBRATION 'jnone) (set! AllBinaryNoVibration.jcell_NO_VIBRATION (AllBinaryNoVibration.jnew_0)))
  AllBinaryNoVibration.jcell_NO_VIBRATION)
(define (AllBinaryNoVibration.jsetstatic_NO_VIBRATION value) (set! AllBinaryNoVibration.jcell_NO_VIBRATION value))

(define (AllBinaryNoVibration.jnew_0)
  (define this (new AllBinaryNoVibration% [jclass "AllBinaryNoVibration"]))
  this)



