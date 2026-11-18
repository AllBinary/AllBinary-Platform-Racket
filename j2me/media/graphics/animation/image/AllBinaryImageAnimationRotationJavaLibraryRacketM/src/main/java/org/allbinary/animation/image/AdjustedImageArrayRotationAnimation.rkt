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
;; package org.allbinary.animation.image

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./ImageArrayRotationAnimation.rkt")
(provide (all-defined-out))

;TWB - Adjustments should be done in the resource creation and not at the animation level
(define AdjustedImageArrayRotationAnimation%
  (class ImageArrayRotationAnimation%
    (super-new)
    (field [f_dx 0])
    (field [f_dy 0])
    (define/public (jm_init_2 _dx _dy)
    (let ()
      (let/ec jreturn
        (send this jm_setDx_1 _dx)
        (send this jm_setDy_1 _dy))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (super jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_dx this))) (JR.i32 (+ _y (get-field f_dy this)))))))
    (define/override (jm_setDx_1 _dx)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx))))
    (define/override (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dx this)))))
    (define/override (jm_setDy_1 _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dy this _dy))))
    (define/override (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dy this)))))))
(define (AdjustedImageArrayRotationAnimation.jclassValue) AdjustedImageArrayRotationAnimation%)

(define (AdjustedImageArrayRotationAnimation.jnew_6 _imageArray _angleInfo _totalAngle _dx _dy _animationBehavior)
  (define this (new AdjustedImageArrayRotationAnimation% [jclass "AdjustedImageArrayRotationAnimation"]))
    
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_init_2 _dx _dy)))
  this)

(define (AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2 _anyType _animationBehavior)
    (let ([_imageRotationAnimationInfo JR.null])
      (let/ec jreturn
        (set! _imageRotationAnimationInfo _anyType)
        (jreturn (AdjustedImageArrayRotationAnimation.jnew_6 (send _imageRotationAnimationInfo jm_getImageArray_0) (send _imageRotationAnimationInfo jm_getAngleInfoP_0) (send _imageRotationAnimationInfo jm_getTotalAngle_0) (send _imageRotationAnimationInfo jm_getDx_0) (send _imageRotationAnimationInfo jm_getDy_0) _animationBehavior)))))

(define (AdjustedImageArrayRotationAnimation.jm_createAnimation_4 _imageArray _angleInfo _totalAngle _animationBehavior)
    (let ()
      (let/ec jreturn
        (jreturn (AdjustedImageArrayRotationAnimation.jnew_6 _imageArray _angleInfo _totalAngle (JR.i32 (- (arithmetic-shift (JR.className (vector-ref _imageArray 0)) (- (bitwise-and 2 31))))) (JR.i32 (- (arithmetic-shift (JR.className (vector-ref _imageArray 0)) (- (bitwise-and 2 31))))) _animationBehavior)))))



