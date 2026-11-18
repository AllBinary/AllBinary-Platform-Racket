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
  "./ImageArrayBaseRotationAnimation.rkt")
(provide (all-defined-out))

(define ImageArrayRotationAnimation%
  (class ImageArrayBaseRotationAnimation%
    (super-new)
    (field [f_expectedTotalFrames 0])
    (define/public (jm_initImageArray_3 _imageArray _angleInfo _totalAngle)
    (let ()
      (let/ec jreturn
        (set-field! f_expectedTotalFrames this (JR.idiv _totalAngle (JR.className (send (get-field f_angleInfo this) jm_getAngleIncrementInfo_0))))
        (send (get-field f_angleInfo this) jm_adjustAngle_1 0)
        (when (not (= (get-field f_expectedTotalFrames this) (send this jm_getSize_0)))
            (begin
            (raise (JR.newException "Exception" "Wrong Number of Frames")))))))
    (define/override (jm_setImageArray_1 _imageArray)
    (let ()
      (let/ec jreturn
        (super jm_setImageArray_1 _imageArray)
        (send (get-field f_angleInfo this) jm_adjustAngle_1 0))))))
(define (ImageArrayRotationAnimation.jclassValue) ImageArrayRotationAnimation%)

(define (ImageArrayRotationAnimation.jnew_4 _imageArray _angleInfo _totalAngle _animationBehavior)
  (define this (new ImageArrayRotationAnimation% [jclass "ImageArrayRotationAnimation"]))
    
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_initImageArray_3 _imageArray _angleInfo _totalAngle)))
  this)

(define (ImageArrayRotationAnimation.jm_createAnimation_2 _anyType _animationBehavior)
    (let ([_imageRotationAnimationInfo JR.null])
      (let/ec jreturn
        (set! _imageRotationAnimationInfo _anyType)
        (jreturn (ImageArrayRotationAnimation.jnew_4 (send _imageRotationAnimationInfo jm_getImageArray_0) (send _imageRotationAnimationInfo jm_getAngleInfoP_0) (send _imageRotationAnimationInfo jm_getTotalAngle_0) _animationBehavior)))))



