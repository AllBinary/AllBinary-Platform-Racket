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
;; package org.allbinary.game.ag.layer.hud.basic.health

(require racket/class racket/lazy-require
  "../../../../../../../../allbinary_java.rkt"
  "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud.rkt"
  "../../../../../../../../org/allbinary/game/health/HealthListenerInterface.rkt"
  "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface.rkt")
(lazy-require ["../../../../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory.rkt" (GameTickTimeDelayHelperFactory.jm_getInstance_0)])
(lazy-require ["../../../../../../../../org/allbinary/time/NoTimeDelayHelper.rkt" (NoTimeDelayHelper.jstatic_SINGLETON)])
(lazy-require ["../../../../../../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(provide (all-defined-out))

(define HealthHudWidget%
  (class BasicHud%
    (super-new)
    (field [f_healthScale 0])
    (field [f_animationInterface JR.null])
    (field [f_healthInterface JR.null])
    (field [f_max 0])
    (field [f_xArray JR.null])
    (field [f_gameTickTimeDelayHelper JR.null])
    (field [f_timeDelayHelper JR.null])
    (field [f_slowBeatTimeDelayHelper JR.null])
    (field [f_mediumBeatTimeDelayHelper JR.null])
    (field [f_fastBeatTimeDelayHelper JR.null])
    (define/public (jm_update_0)
    (let ([_index JR.null])
      (let/ec jreturn
        (when (not (JR.null? (get-field f_xArray this)))
            (begin
            (begin
                (set! _index 0)
                (let/ec jbreak (let jloop () (when (< _index (vector-length (get-field f_xArray this)))
                    (let/ec jcontinue
                (vector-set! (get-field f_xArray this) _index (JR.i32 (+ (send this jm_getX_0) (JR.i32 (* _index 16))))))
                    (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
    (define/override (jm_setX_1 _x)
    (let ()
      (let/ec jreturn
        (super jm_setX_1 _x)
        (send this jm_update_0))))
    (define/public (jm_onHealthChange_0)
    (let ()
      (let/ec jreturn
        (set-field! f_max this (JR.idiv (send (get-field f_healthInterface this) jm_getHealth_0) (get-field f_healthScale this)))
        (set-field! f_timeDelayHelper this (NoTimeDelayHelper.jstatic_SINGLETON))
        (when (and (<= (get-field f_max this) 1) (send (get-field f_healthInterface this) jm_isAlive_0))
            (begin
            (set-field! f_max this 1)
            (if (> (JR.i32 (- (get-field f_healthScale this) (send (get-field f_healthInterface this) jm_getHealth_0))) (JR.idiv (JR.i32 (* (get-field f_healthScale this) 2)) 3))
                (begin
                (set-field! f_timeDelayHelper this (get-field f_slowBeatTimeDelayHelper this)))
                (if (> (JR.i32 (- (get-field f_healthScale this) (send (get-field f_healthInterface this) jm_getHealth_0))) (JR.idiv (get-field f_healthScale this) 3))
                (begin
                (set-field! f_timeDelayHelper this (get-field f_mediumBeatTimeDelayHelper this)))
                (begin
                (set-field! f_timeDelayHelper this (get-field f_fastBeatTimeDelayHelper this))))))))))
    (define/public (jm_paint_1 _graphics)
    (let ([_index JR.null])
      (let/ec jreturn
        (JR.className (get-field f_myFontProcessor this))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (get-field f_max this))
                (let/ec jcontinue
            (when (send (get-field f_timeDelayHelper this) jm_isTime_1 (get-field f_startTime (get-field f_gameTickTimeDelayHelper this)))
                (begin
                (send (get-field f_animationInterface this) jm_paintXY_3 _graphics (vector-ref (get-field f_xArray this) _index) (send this jm_getY_0)))))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))
    (define/public (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn (void))))))
(define (HealthHudWidget.jclassValue) HealthHudWidget%)

(define (HealthHudWidget.jnew_4 _animationInterface _healthInterface _location _direction)
  (define this (new HealthHudWidget% [jclass "HealthHudWidget"]))
    
    
    
    
    
    (set-field! f_gameTickTimeDelayHelper this (GameTickTimeDelayHelperFactory.jm_getInstance_0))
    (set-field! f_timeDelayHelper this (NoTimeDelayHelper.jstatic_SINGLETON))
    (set-field! f_slowBeatTimeDelayHelper this (TimeDelayHelper.jnew_1 1280))
    (set-field! f_mediumBeatTimeDelayHelper this (TimeDelayHelper.jnew_1 640))
    (set-field! f_fastBeatTimeDelayHelper this (TimeDelayHelper.jnew_1 320))
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_healthInterface this _healthInterface)
        (send (get-field f_healthInterface this) jm_addListener_1 this)
        (set-field! f_healthScale this (JR.i32 (+ (JR.idiv (send (get-field f_healthInterface this) jm_getMaxHealth_0) 6) 1)))
        (send this jm_onHealthChange_0)
        (set-field! f_updateMaxWidth this (JR.i32 (* (send _healthInterface jm_getMaxHealth_0) 16)))
        (set-field! f_updateMaxHeight this 16)
        (set-field! f_xArray this (JR.newArray 0 30))
        (send this jm_update_0)))
  this)



