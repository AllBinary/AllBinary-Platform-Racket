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
;; package org.allbinary.game.health

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/paint/Paintable.rkt"
  "./HealthListenerInterface.rkt")
(provide (all-defined-out))

(define HealthBar%
  (class Paintable%
    (super-new)
    (field [f_animationInterface JR.null])
    (field [f_healthInterface JR.null])
    (field [f_allbinaryLayer JR.null])
    (define/public (jm_onHealthChange_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_onHealthChange_1 (JR.idiv (JR.i32 (* (send (get-field f_healthInterface this) jm_getHealth_0) (send (get-field f_allbinaryLayer this) jm_getWidth_0))) (send (get-field f_healthInterface this) jm_getMaxHealth_0))))))
    (define/override (jm_paint_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintXY_3 _graphics 0 0))))
    (define/override (jm_paintThreed_1 _graphics)
    (let ()
      (let/ec jreturn
        (send (get-field f_animationInterface this) jm_paintThreedXYZ_4 _graphics 0 0 0))))))
(define (HealthBar.jclassValue) HealthBar%)

(define (HealthBar.jnew_4 _layerInterface _healthInterface _animationInterface _direction)
  (define this (new HealthBar% [jclass "HealthBar"]))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_allbinaryLayer this _layerInterface)
        (set-field! f_animationInterface this _animationInterface)
        (set-field! f_healthInterface this _healthInterface)
        (send (get-field f_healthInterface this) jm_addListener_1 this)
        (send this jm_onHealthChange_0)))
  this)



