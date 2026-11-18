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
(lazy-require ["../../../../org/allbinary/game/physics/velocity/BasicVelocityProperties.rkt" (BasicVelocityProperties.jnew_0)])
(lazy-require ["../../../../org/allbinary/logic/math/BasicDecimal.rkt" (BasicDecimal.jstatic_ZERO_BIGDECIMAL)])
(provide (all-defined-out))

(define NoBasicConstantVelocityMovement%
  (class BasicConstantVelocityMovement%
    (super-new)
    (define/override (jm_process_1 _layer)
    (let ()
      (let/ec jreturn (void))))))
(define (NoBasicConstantVelocityMovement.jclassValue) NoBasicConstantVelocityMovement%)

(define (NoBasicConstantVelocityMovement.jnew_0)
  (define this (new NoBasicConstantVelocityMovement% [jclass "NoBasicConstantVelocityMovement"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



