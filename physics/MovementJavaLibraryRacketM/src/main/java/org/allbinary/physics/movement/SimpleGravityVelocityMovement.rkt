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
;; package org.allbinary.physics.movement

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "./BasicConstantVelocityMovement.rkt")
(lazy-require ["../../../../org/allbinary/game/physics/acceleration/GravityUtil.rkt" (GravityUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/physics/velocity/VelocityProperties.rkt" (VelocityProperties.jnew_2)])
(provide (all-defined-out))

(define SimpleGravityVelocityMovement%
  (class BasicConstantVelocityMovement%
    (super-new)
    (field [f_gravityUtil JR.null])
    (define/override (jm_process_1 _layer)
    (let ()
      (let/ec jreturn
        (send (get-field f_gravityUtil this) jm_process_2 (send this jm_getVelocityProperties_0) (get-field f_GAME_GRAVITY_VELOCITY (get-field f_gravityUtil this)))
        (super jm_process_1 _layer))))))
(define (SimpleGravityVelocityMovement.jclassValue) SimpleGravityVelocityMovement%)

(define (SimpleGravityVelocityMovement.jnew_1 _speedBasicDecimal)
  (define this (new SimpleGravityVelocityMovement% [jclass "SimpleGravityVelocityMovement"]))
    (set-field! f_gravityUtil this (GravityUtil.jm_getInstance_0))
    (let ()
      (let/ec jreturn
        (void)))
  this)



