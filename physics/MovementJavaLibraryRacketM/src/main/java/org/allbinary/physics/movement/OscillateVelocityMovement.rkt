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
(lazy-require ["../../../../org/allbinary/game/physics/velocity/VelocityProperties.rkt" (VelocityProperties.jnew_2)])
(provide (all-defined-out))

(define OscillateVelocityMovement%
  (class BasicConstantVelocityMovement%
    (super-new)
    (field [f_oscillateMin 0])
    (field [f_oscillateMax 0])
    (field [f_oscillate 0])
    (field [f_oscillatePositive #f])
    (define/override (jm_process_1 _layer)
    (let ()
      (let/ec jreturn
        (super jm_process_1 _layer)
        (if (< (get-field f_oscillate this) (get-field f_oscillateMin this))
            (begin
            (set-field! f_oscillatePositive this #t))
            (when (> (get-field f_oscillate this) (get-field f_oscillateMax this))
            (begin
            (set-field! f_oscillatePositive this #f))))
        (if (get-field f_oscillatePositive this)
            (begin
            (set-field! f_oscillate this (JR.i32 (+ (get-field f_oscillate this) 1)))
            (JR.className (JR.className (send this jm_getVelocityProperties_0))))
            (begin
            (set-field! f_oscillate this (JR.i32 (- (get-field f_oscillate this) 1)))
            (JR.className (JR.className (send this jm_getVelocityProperties_0))))))))))
(define (OscillateVelocityMovement.jclassValue) OscillateVelocityMovement%)

(define (OscillateVelocityMovement.jnew_3 _speedBasicDecimal _oscillateMin _oscillateMax)
  (define this (new OscillateVelocityMovement% [jclass "OscillateVelocityMovement"]))
    
    
    
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_oscillateMin this _oscillateMin)
        (set-field! f_oscillateMax this _oscillateMax)))
  this)



