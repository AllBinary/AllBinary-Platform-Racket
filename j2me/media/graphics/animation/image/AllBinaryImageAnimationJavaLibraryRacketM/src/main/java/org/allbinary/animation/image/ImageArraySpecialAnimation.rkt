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
  "../../../../org/allbinary/animation/special/SpecialAnimationInterface.rkt"
  "./ImageArrayAnimation.rkt")
(lazy-require ["../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define ImageArraySpecialAnimation%
  (class ImageArrayAnimation%
    (super-new)
    (field [f_timeDelayHelper JR.null])
    (field [f_loopCount 0])
    (field [f_loopCountTotal 0])
    (define/public (jm_getLoopCount_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_loopCount this)))))
    (define/public (jm_setLastFrame_0)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_circularIndexUtil this)))))
    (define/override (jm_reset_0)
    (let ()
      (let/ec jreturn
        (send this jm_setFrame_1 (JR.i32 (- (send this jm_getSize_0) 1)))
        (set-field! f_loopCount this 0))))
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (when (> (send this jm_getFrame_0) 0)
            (begin
            (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
                (begin
                (send this jm_previousFrame_0)
                (when (= (send this jm_getFrame_0) 0)
                    (begin
                    (set-field! f_loopCount this (JR.i32 (+ (get-field f_loopCount this) 1))))))))))))
    (define/public (jm_isComplete_0)
    (let ()
      (let/ec jreturn
        (if (or (< (get-field f_loopCount this) (get-field f_loopCountTotal this)) (not (= (send this jm_getFrame_0) 0)))
            (begin
            (jreturn #f))
            (begin
            (jreturn #t))))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (set! _x (JR.i32 (- (send (DisplayInfoSingleton.jm_getInstance_0) jm_getLastHalfWidth_0) (arithmetic-shift (JR.className (send this jm_getImage_1 (JR.className (get-field f_circularIndexUtil this)))) (- (bitwise-and 1 31))))))
        (set! _y 5)
        (super jm_paintXY_3 _graphics _x _y))))))
(define (ImageArraySpecialAnimation.jclassValue) ImageArraySpecialAnimation%)

(define (ImageArraySpecialAnimation.jnew_2 _imageArray _animationBehavior)
  (define this (new ImageArraySpecialAnimation% [jclass "ImageArraySpecialAnimation"]))
    (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 270))
    (set-field! f_loopCount this 0)
    (set-field! f_loopCountTotal this 1)
    (let ()
      (let/ec jreturn
        (void)
        (send this jm_reset_0)))
  this)



