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
;; package org.allbinary.game.ag.ai

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../org/allbinary/game/ag/ai/tactical/LurchAI.rkt")
(provide (all-defined-out))

(define LurchRotationAI%
  (class LurchAI%
    (super-new)
    (field [f_rotationAnimationInterface JR.null])
    (define/override (jm_reverse_0)
    (let ()
      (let/ec jreturn
        (super jm_reverse_0)
        (send this jm_update_0))))
    (define/public (jm_update_0)
    (let ([_rotationAnimationInterface JR.null][_angleIncrementInfo JR.null][_rotationAnimationInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (if (eq? (get-field f_currentRelativeAngle this) 0)
            (begin
            (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
            (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
            (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
            (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo))))
            (when (eq? (get-field f_currentRelativeAngle this) 180)
            (begin
            (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
            (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
            (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
            (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_LEFT_FRAME _angleIncrementInfo)))))))))))
(define (LurchRotationAI.jclassValue) LurchRotationAI%)

(define (LurchRotationAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new LurchRotationAI% [jclass "LurchRotationAI"]))
    
    (let ([_rotationAnimationInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (void)
        (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_rotationAnimationInterface this (send _rotationAnimationInterfaceCompositeInterface jm_getRotationAnimationInterface_0))
        (send this jm_update_0)))
  this)



