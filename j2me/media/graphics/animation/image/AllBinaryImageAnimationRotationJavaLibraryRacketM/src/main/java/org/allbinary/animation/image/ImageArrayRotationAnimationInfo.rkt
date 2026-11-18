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
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/math/AngleInfo.rkt" (AngleInfo.jm_getInstance_1)])
(provide (all-defined-out))

(define ImageArrayRotationAnimationInfo%
  (class JObject%
    (super-new)
    (field [f_imageArray JR.null])
    (field [f_angleIncrement 0])
    (field [f_totalAngle 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (define/public (jm_setImageArray_1 _imageArray)
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray))))
    (define/public (jm_getImageArray_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_imageArray this)))))
    (define/public (jm_getAngleInfoP_0)
    (let ()
      (let/ec jreturn
        (jreturn (AngleInfo.jm_getInstance_1 (JR.i16 (get-field f_angleIncrement this)))))))
    (define/public (jm_setTotalAngle_1 _totalAngle)
    (let ()
      (let/ec jreturn
        (set-field! f_totalAngle this _totalAngle))))
    (define/public (jm_getTotalAngle_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_totalAngle this)))))
    (define/public (jm_setDx_1 _dx)
    (let ()
      (let/ec jreturn
        (set-field! f_dx this _dx))))
    (define/public (jm_getDx_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dx this)))))
    (define/public (jm_setDy_1 _dy)
    (let ()
      (let/ec jreturn
        (set-field! f_dy this _dy))))
    (define/public (jm_getDy_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_dy this)))))))
(define (ImageArrayRotationAnimationInfo.jclassValue) ImageArrayRotationAnimationInfo%)

(define (ImageArrayRotationAnimationInfo.jnew_5 _imageArray _angleIncrement _totalAngle _dx _dy)
  (define this (new ImageArrayRotationAnimationInfo% [jclass "ImageArrayRotationAnimationInfo"]))
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_imageArray this _imageArray)
        (set-field! f_angleIncrement this _angleIncrement)
        (set-field! f_totalAngle this _totalAngle)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



