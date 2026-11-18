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
;; package org.allbinary.game.ag.life

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/health/HealthListenerInterface.rkt"
  "../../../../../org/allbinary/graphics/paint/Paintable.rkt")
(lazy-require ["../../../../../org/allbinary/game/health/HealthBarTwodAnimation.rkt" (HealthBarTwodAnimation.jnew_2)])
(provide (all-defined-out))

(define HealthIncludingLifeBar%
  (class Paintable%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_life JR.null])
    (field [f_healthInterface JR.null])
    (field [f_allbinaryLayer JR.null])
    (define/public (jm_onHealthChange_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_onHealthChange_1 (JR.idiv (JR.i32 (* (JR.i32 (+ (send (get-field f_healthInterface this) jm_getHealth_0) (JR.i32 (* (send (get-field f_healthInterface this) jm_getMaxHealth_0) (send (get-field f_life this) jm_get_0))))) (send (get-field f_allbinaryLayer this) jm_getWidth_0))) (JR.i32 (+ (send (get-field f_healthInterface this) jm_getMaxHealth_0) (JR.i32 (* (send (get-field f_healthInterface this) jm_getMaxHealth_0) (send (get-field f_life this) jm_getStartLives_0))))))))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics 0 0))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics 0 0 0))))))
(define (HealthIncludingLifeBar.jclassValue) HealthIncludingLifeBar%)

(define (HealthIncludingLifeBar.jnew_5 _layerInterface _life _healthInterface _animationInterface _direction)
  (define this (new HealthIncludingLifeBar% [jclass "HealthIncludingLifeBar"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_allbinaryLayer this _layerInterface)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_life this _life)
        (set-field! f_healthInterface this _healthInterface)
        (send (get-field f_healthInterface this) jm_addListener_1 this)
        (send this jm_onHealthChange_0)))
  this)

(define (HealthIncludingLifeBar.jm_createHealthIncludingLifeBar_5 _layerInterface _life _healthInterface _location _direction)
    (let ()
      (let/ec jreturn
        (jreturn (HealthIncludingLifeBar.jnew_5 _layerInterface _life _healthInterface (HealthBarTwodAnimation.jnew_2 _layerInterface _location) _direction)))))



