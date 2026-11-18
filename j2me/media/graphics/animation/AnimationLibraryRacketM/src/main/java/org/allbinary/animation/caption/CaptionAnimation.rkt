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
;; package org.allbinary.animation.caption

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/animation/Animation.rkt")
(provide (all-defined-out))

(define CaptionAnimation%
  (class Animation%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_overlayAnimationInterface JR.null])
    (field [f_captionDx 0])
    (field [f_captionDy 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_captionDx this))) (JR.i32 (+ _y (get-field f_captionDy this))))
        (send (get-field f_overlayAnimationInterface this) jm_paintXY_3 _graphics (JR.i32 (+ (JR.i32 (+ _x (get-field f_captionDx this))) (get-field f_dx this))) (JR.i32 (+ (JR.i32 (+ _y (get-field f_captionDy this))) (get-field f_dy this)))))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics (JR.i32 (+ _x (get-field f_captionDx this))) (JR.i32 (+ _y (get-field f_captionDy this))) _z)
        (send (get-field f_overlayAnimationInterface this) jm_paintThreedXYZ_4 _graphics (JR.i32 (+ (JR.i32 (+ _x (get-field f_captionDx this))) (get-field f_dx this))) (JR.i32 (+ (JR.i32 (+ _y (get-field f_captionDy this))) (get-field f_dy this))) _z))))))
(define (CaptionAnimation.jclassValue) CaptionAnimation%)

(define (CaptionAnimation.jnew_6 _animationInterface _overlayAnimationInterface _captionDx _captionDy _dx _dy)
  (define this (new CaptionAnimation% [jclass "CaptionAnimation"]))
    
    
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_overlayAnimationInterface this _overlayAnimationInterface)
        (set-field! f_captionDx this _captionDx)
        (set-field! f_captionDy this _captionDy)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)))
  this)



