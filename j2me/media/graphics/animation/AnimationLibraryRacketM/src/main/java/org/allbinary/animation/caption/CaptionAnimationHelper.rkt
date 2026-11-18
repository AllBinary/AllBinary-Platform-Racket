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
  "./CaptionAnimationHelperBase.rkt")
(lazy-require ["../../../../org/allbinary/animation/AnimationBehavior.rkt" (AnimationBehavior.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/animation/NullAnimationFactory.rkt" (NullAnimationFactory.jm_getFactoryInstance_0)])
(lazy-require ["../../../../org/allbinary/animation/text/TextAnimation.rkt" (TextAnimation.jnew_2)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./CaptionAnimation.rkt" (CaptionAnimation.jnew_6)])
(provide (all-defined-out))

(define CaptionAnimationHelper%
  (class CaptionAnimationHelperBase%
    (super-new)
    (field [f_timeHelper JR.null])
    (field [f_textAnimation JR.null])
    (field [f_captionAnimation JR.null])
    (field [f_animation JR.null])
    (define/override (jm_isShowing_0)
    (let ()
      (let/ec jreturn
        (if (eq? (get-field f_animation this) (get-field f_captionAnimation this))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/override (jm_tick_0)
    (let ()
      (let/ec jreturn
        (when (send (get-field f_timeHelper this) jm_isTime_1 (get-field f_startTime (GameTickTimeDelayHelperFactory.jm_getInstance_0)))
            (begin
            (set-field! f_animation this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0))))))))
    (define/override (jm_update_2 _message _basicColor)
    (let ()
      (let/ec jreturn
        (send (get-field f_textAnimation this) jm_setBasicColorP_1 _basicColor)
        (send (get-field f_textAnimation this) jm_setText_1 _message)
        (set-field! f_animation this (get-field f_captionAnimation this))
        (send (get-field f_timeHelper this) jm_setStartTimeTNT_0))))
    (define/override (jm_paintXY_3 _graphics _x _y)
    (let ()
      (let/ec jreturn
        (send (get-field f_animation this) jm_paintXY_3 _graphics _x _y))))))
(define (CaptionAnimationHelper.jclassValue) CaptionAnimationHelper%)

(define (CaptionAnimationHelper.jnew_5 _captionAnimation _captionDx _captionDy _dx _dy)
  (define this (new CaptionAnimationHelper% [jclass "CaptionAnimationHelper"]))
    (set-field! f_timeHelper this (TimeDelayHelper.jnew_1 620))
    (set-field! f_textAnimation this (TextAnimation.jnew_2 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (AnimationBehavior.jm_getInstance_0)))
    
    (set-field! f_animation this (JR.className (NullAnimationFactory.jm_getFactoryInstance_0)))
    (let ()
      (let/ec jreturn
        (set-field! f_captionAnimation this (CaptionAnimation.jnew_6 _captionAnimation (get-field f_textAnimation this) _captionDx _captionDy _dx _dy))))
  this)



