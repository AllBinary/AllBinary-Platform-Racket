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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define ColorTemperatureUtil%
  (class JObject%
    (super-new)
    (field [f_basicColorFactory JR.null])
    (define/public (jm_getBasicColor_1 _thirdTemp)
    (let ([_basicColor JR.null])
      (let/ec jreturn
        (set! _basicColor (get-field f_RED (get-field f_basicColorFactory this)))
        (if (> _thirdTemp 3700)
            (begin
            (set! _basicColor (get-field f_PURPLE (get-field f_basicColorFactory this))))
            (if (> _thirdTemp 3200)
            (begin
            (set! _basicColor (get-field f_BLUE (get-field f_basicColorFactory this))))
            (if (> _thirdTemp 2700)
            (begin
            (set! _basicColor (get-field f_PUCE (get-field f_basicColorFactory this))))
            (if (> _thirdTemp 2200)
            (begin
            (set! _basicColor (get-field f_WHITE (get-field f_basicColorFactory this))))
            (if (> _thirdTemp 1700)
            (begin
            (set! _basicColor (get-field f_GREEN (get-field f_basicColorFactory this))))
            (if (> _thirdTemp 1200)
            (begin
            (set! _basicColor (get-field f_YELLOW (get-field f_basicColorFactory this))))
            (when (> _thirdTemp 700)
            (begin
            (set! _basicColor (get-field f_ORANGE (get-field f_basicColorFactory this)))))))))))
        (jreturn _basicColor))))))

(define ColorTemperatureUtil.jcell_instance 'jnone)
(define (ColorTemperatureUtil.jstatic_instance)
  (when (eq? ColorTemperatureUtil.jcell_instance 'jnone) (set! ColorTemperatureUtil.jcell_instance (ColorTemperatureUtil.jnew_0)))
  ColorTemperatureUtil.jcell_instance)

(define (ColorTemperatureUtil.jnew_0)
  (define this (new ColorTemperatureUtil% [jclass "ColorTemperatureUtil"]))
    (set-field! f_basicColorFactory this (BasicColorFactory.jm_getInstance_0))
  this)

(define (ColorTemperatureUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ColorTemperatureUtil.jstatic_instance)))))



