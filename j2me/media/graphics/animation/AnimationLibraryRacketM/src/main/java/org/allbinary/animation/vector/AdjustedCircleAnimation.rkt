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
;; package org.allbinary.animation.vector

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./CircleAnimation.rkt")
(lazy-require ["../../../../org/allbinary/AndroidUtil.rkt" (AndroidUtil.jm_isAndroid_0)])
(provide (all-defined-out))

(define AdjustedCircleAnimation%
  (class CircleAnimation%
    (super-new)
    (field [f_xAdjustment 0])
    (field [f_yAdjustment 0])
    (define/public (jm_initXY_2 _xAdjustment _yAdjustment)
    (let ()
      (let/ec jreturn
        (set-field! f_xAdjustment this _xAdjustment)
        (set-field! f_yAdjustment this _yAdjustment))))
    (define/public (jm_init_1 _innerWidth)
    (let ([_widthPortion JR.null])
      (let/ec jreturn
        (if (AndroidUtil.jm_isAndroid_0)
            (begin
            (set! _widthPortion (JR.idiv (JR.i32 (* (JR.idiv _innerWidth 3) 10)) 7))
            (set-field! f_xAdjustment this (JR.i32 (- (JR.i32 (- (arithmetic-shift (get-field f_width this) (- (bitwise-and 1 31))) _widthPortion)))))
            (set-field! f_yAdjustment this (get-field f_xAdjustment this)))
            (begin
            (set-field! f_xAdjustment this (JR.i32 (- (JR.i32 (- (arithmetic-shift (get-field f_width this) (- (bitwise-and 1 31))) _innerWidth)))))
            (set-field! f_yAdjustment this (get-field f_xAdjustment this)))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_basicSetColorUtil this))
        (send _graphics jm_drawArc_6 (JR.i32 (+ _x (get-field f_xAdjustment this))) (JR.i32 (+ _y (get-field f_yAdjustment this))) (get-field f_width this) (get-field f_height this) 0 (get-field f_TOTAL_ANGLE this)))))))
(define (AdjustedCircleAnimation.jclassValue) AdjustedCircleAnimation%)

(define (AdjustedCircleAnimation.jnew_3 _width _height _basicColor)
  (define this (new AdjustedCircleAnimation% [jclass "AdjustedCircleAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (AdjustedCircleAnimation.jm_createAnimation_5 _width _height _xAdjustment _yAdjustment _basicColor)
    (let ([_adjustedCircleAnimation JR.null])
      (let/ec jreturn
        (set! _adjustedCircleAnimation (AdjustedCircleAnimation.jnew_3 _width _height _basicColor))
        (send _adjustedCircleAnimation jm_initXY_2 _xAdjustment _yAdjustment)
        (jreturn _adjustedCircleAnimation))))

(define (AdjustedCircleAnimation.jm_createW_4 _width _height _innerWidth _basicColor)
    (let ([_adjustedCircleAnimation JR.null])
      (let/ec jreturn
        (set! _adjustedCircleAnimation (AdjustedCircleAnimation.jnew_3 _width _height _basicColor))
        (send _adjustedCircleAnimation jm_init_1 _innerWidth)
        (jreturn _adjustedCircleAnimation))))



