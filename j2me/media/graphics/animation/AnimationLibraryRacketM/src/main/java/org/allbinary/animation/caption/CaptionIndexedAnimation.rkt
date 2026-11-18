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
  "../../../../org/allbinary/animation/IndexedAnimation.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationEventHandler.rkt" (AnimationEventHandler.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/math/PrimitiveIntUtil.rkt" (PrimitiveIntUtil.jm_getArrayInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/util/event/AllBinaryEventObject.rkt" (AllBinaryEventObject.jnew_1)])
(lazy-require ["../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define CaptionIndexedAnimation%
  (class IndexedAnimation%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_movieIndexedAnimationInterface JR.null])
    (field [f_captionDx 0])
    (field [f_captionDy 0])
    (field [f_dx 0])
    (field [f_dy 0])
    (field [f_time 0])
    (field [f_END_EVENT JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_player JR.null])
    (define/override (jm_nextFrame_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
            (begin
            (send (get-field f_movieIndexedAnimationInterface this) jm_nextFrame_0)))
        (when (send this jm_isLastFrame_0)
            (begin
            (send (AnimationEventHandler.jm_getInstance_0) jm_fireEvent_1 (get-field f_END_EVENT this)))))))
    (define/override (jm_isLastFrame_0)
    (let ()
      (let/ec jreturn
        (if (eq? (send (get-field f_movieIndexedAnimationInterface this) jm_getFrame_0) (JR.i32 (- (send this jm_getSize_0) 1)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/override (jm_previousFrame_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_movieIndexedAnimationInterface this) jm_previousFrame_0))))
    (define/override (jm_setFrame_1 _index)
    (let ()
      (let/ec jreturn
        (send (get-field f_movieIndexedAnimationInterface this) jm_setFrame_1 _index))))
    (define/override (jm_getFrame_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_movieIndexedAnimationInterface this) jm_getFrame_0)))))
    (define/override (jm_getSize_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (get-field f_movieIndexedAnimationInterface this) jm_getSize_0)))))
    (define/override (jm_setSequence_1 _sequence)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_getSequence_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimitiveIntUtil.jm_getArrayInstance_0)))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (JR.i32 (+ _x (get-field f_captionDx this))) (JR.i32 (+ _y (get-field f_captionDy this))))
        (send (get-field f_movieIndexedAnimationInterface this) jm_paintXY_3 _graphics (JR.i32 (+ (JR.i32 (+ _x (get-field f_captionDx this))) (get-field f_dx this))) (JR.i32 (+ (JR.i32 (+ _y (get-field f_captionDy this))) (get-field f_dy this)))))))
    (define/override (jm_paintThreedXYZ_4 _graphics _x _y _z)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics (JR.i32 (+ _x (get-field f_captionDx this))) (JR.i32 (+ _y (get-field f_captionDy this))) _z)
        (send (get-field f_movieIndexedAnimationInterface this) jm_paintThreedXYZ_4 _graphics (JR.i32 (+ (JR.i32 (+ _x (get-field f_captionDx this))) (get-field f_dx this))) (JR.i32 (+ (JR.i32 (+ _y (get-field f_captionDy this))) (get-field f_dy this))) _z))))))
(define (CaptionIndexedAnimation.jclassValue) CaptionIndexedAnimation%)

(define (CaptionIndexedAnimation.jnew_9 _animationInterface _movieIndexedAnimationInterface _player _captionDx _captionDy _dx _dy _time _animationBehavior)
  (define this (new CaptionIndexedAnimation% [jclass "CaptionIndexedAnimation"]))
    
    
    
    
    
    
    
    
    
    
    (let ([_timePerFrame JR.null])
      (let/ec jreturn
        (void)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_movieIndexedAnimationInterface this _movieIndexedAnimationInterface)
        (set-field! f_captionDx this _captionDx)
        (set-field! f_captionDy this _captionDy)
        (set-field! f_dx this _dx)
        (set-field! f_dy this _dy)
        (set-field! f_time this _time)
        (set-field! f_END_EVENT this (AllBinaryEventObject.jnew_1 this))
        (set! _timePerFrame (JR.idiv (get-field f_time this) (send this jm_getSize_0)))
        (set-field! f_timeDelayHelper this (TimeDelayHelper.jnew_1 _timePerFrame))
        (set-field! f_player this _player)
        (send (get-field f_player this) jm_start_0)))
  this)



