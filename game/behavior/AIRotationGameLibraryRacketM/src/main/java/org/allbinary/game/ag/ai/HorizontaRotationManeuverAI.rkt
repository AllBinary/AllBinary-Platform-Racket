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
  "../../../../../org/allbinary/ai/ArtificialIntelligenceTransitionInterface.rkt"
  "../../../../../org/allbinary/game/ai/BasicAI.rkt"
  "../../../../../java/lang/Integer.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_UP Canvas.jstatic_KEY_POUND Canvas.jstatic_KEY_NUM0)])
(lazy-require ["../../../../../org/allbinary/ai/ArtificialIntelligence.rkt" (ArtificialIntelligence.jstatic_AI_ID)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/util/CircularIndexUtil.rkt" (CircularIndexUtil.jm_createInstanceAt_2)])
(provide (all-defined-out))

(define HorizontaRotationManeuverAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_circularIndexUtil JR.null])
    (field [f_currentSpeedDivisor 0])
    (field [f_rotationAnimationInterface JR.null])
    (field [f_baseVelocityInterface JR.null])
    (field [f_velocityInterface JR.null])
    (define/public (jm_transition_0)
    (let ([_rotationAnimationInterface JR.null][_angleIncrementInfo JR.null][_rotationAnimationInterfaceCompositeInterface JR.null][_allbinaryLayer JR.null])
      (let/ec jreturn
        (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
        (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
        (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo)))
        (set! _allbinaryLayer (send this jm_getOwnerLayerInterface_0))
        (send _allbinaryLayer jm_setPosition_3 (send _allbinaryLayer jm_getXP_0) 1 (send _allbinaryLayer jm_getZP_0)))))
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_rotationAnimationInterface JR.null][_angleIncrementInfo JR.null][_frame JR.null][_ownerLayerInterface JR.null][_displayInfo JR.null][_index JR.null])
      (let/ec jreturn
        (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
        (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
        (set! _frame (send (get-field f_rotationAnimationInterface this) jm_getFrame_0))
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (when (and (<= (JR.i32 (- (send _ownerLayerInterface jm_getXP_0) (send _ownerLayerInterface jm_getWidth_0))) 0) (= _frame (JR.className (get-field f_LEFT_FRAME _angleIncrementInfo))))
            (begin
            (send this jm_reverse_0)
            (send this jm_drop_0)))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (when (and (> (JR.i32 (+ (send _ownerLayerInterface jm_getX2_0) (send _ownerLayerInterface jm_getWidth_0))) (send _displayInfo jm_getLastWidth_0)) (= _frame (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo))))
            (begin
            (send this jm_reverse_0)
            (send this jm_accelerate_0)
            (send this jm_drop_0)))
        (set! _index (send (get-field f_circularIndexUtil this) jm_getIndex_0))
        (when (and (= (remainder _index (get-field f_currentSpeedDivisor this)) 0) (= (remainder _index 2) 0))
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_UP))
            (send (get-field f_velocityInterface this) jm_limitMaxXYVelocity_1 (JR.idiv (send (get-field f_velocityInterface this) jm_getMaxForwardVelocity_0) (get-field f_currentSpeedDivisor this)))))
        (send (get-field f_circularIndexUtil this) jm_next_0)
        (if (= _frame (JR.className (get-field f_LEFT_FRAME _angleIncrementInfo)))
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM0)))
            (when (= _frame (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo)))
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_POUND))))))))
    (define/public (jm_reverse_0)
    (let ([_rotationAnimationInterface JR.null][_angleIncrementInfo JR.null][_frame JR.null][_rotationAnimationInterfaceCompositeInterface JR.null])
      (let/ec jreturn
        (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
        (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
        (set! _frame (send (get-field f_rotationAnimationInterface this) jm_getFrame_0))
        (if (= _frame (JR.className (get-field f_LEFT_FRAME _angleIncrementInfo)))
            (begin
            (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
            (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo)))
            (send (get-field f_baseVelocityInterface this) jm_zero_0))
            (when (= _frame (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo)))
            (begin
            (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
            (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_LEFT_FRAME _angleIncrementInfo)))
            (send (get-field f_baseVelocityInterface this) jm_zero_0)))))))
    (define/public (jm_accelerate_0)
    (let ()
      (let/ec jreturn
        (when (> (get-field f_currentSpeedDivisor this) 1)
            (begin
            (set-field! f_currentSpeedDivisor this (JR.i32 (- (get-field f_currentSpeedDivisor this) 1))))))))
    (define/public (jm_drop_0)
    (let ([_displayInfo JR.null][_ownerLayerInterface JR.null][_y JR.null])
      (let/ec jreturn
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _y (send _ownerLayerInterface jm_getYP_0))
        (if (> (JR.i32 (+ (send _ownerLayerInterface jm_getY2_0) (send _ownerLayerInterface jm_getHeight_0))) (send _displayInfo jm_getLastHeight_0))
            (begin
            (set! _y 0))
            (begin
            (set! _y (JR.i32 (+ _y (JR.i32 (+ (send _ownerLayerInterface jm_getHeight_0) 1)))))))
        (send _ownerLayerInterface jm_setPosition_3 (send _ownerLayerInterface jm_getXP_0) _y (send _ownerLayerInterface jm_getZP_0)))))
    (define/override (jm_getId_0)
    (let ()
      (let/ec jreturn
        (jreturn (ArtificialIntelligence.jstatic_AI_ID)))))))
(define (HorizontaRotationManeuverAI.jclassValue) HorizontaRotationManeuverAI%)

(define (HorizontaRotationManeuverAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new HorizontaRotationManeuverAI% [jclass "HorizontaRotationManeuverAI"]))
    (set-field! f_circularIndexUtil this (CircularIndexUtil.jm_createInstanceAt_2 10 (Integer.jstatic_MAX_VALUE)))
    (set-field! f_currentSpeedDivisor this 5)
    
    
    
    (let ([_rotationAnimationInterfaceCompositeInterface JR.null][_velocityInterfaceCompositeInterface JR.null][_rotationAnimationInterface JR.null][_angleIncrementInfo JR.null])
      (let/ec jreturn
        (void)
        (set! _rotationAnimationInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_rotationAnimationInterface this (send _rotationAnimationInterfaceCompositeInterface jm_getRotationAnimationInterface_0))
        (set! _velocityInterfaceCompositeInterface (send this jm_getOwnerLayerInterface_0))
        (set-field! f_baseVelocityInterface this (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))
        (set-field! f_velocityInterface this (get-field f_baseVelocityInterface this))
        (set! _rotationAnimationInterface (get-field f_rotationAnimationInterface this))
        (set! _angleIncrementInfo (JR.className (send _rotationAnimationInterface jm_getAngleInfoP_0)))
        (send _rotationAnimationInterfaceCompositeInterface jm_setFrame_1 (JR.className (get-field f_RIGHT_FRAME _angleIncrementInfo)))))
  this)



