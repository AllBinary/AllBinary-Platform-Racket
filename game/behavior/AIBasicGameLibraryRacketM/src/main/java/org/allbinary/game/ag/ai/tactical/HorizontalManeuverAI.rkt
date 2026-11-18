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
;; package org.allbinary.game.ag.ai.tactical

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/ai/BasicAI.rkt")
(lazy-require ["../../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_KEY_POUND Canvas.jstatic_KEY_NUM0)])
(lazy-require ["../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define HorizontalManeuverAI%
  (class BasicAI%
    (super-new)
    (inherit/super jm_processKeyAI_1)
    (field [f_currentRelativeAngle 0])
    (field [f_currentSpeed 0])
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_ownerLayerInterface JR.null][_x JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _x (send _ownerLayerInterface jm_getXP_0))
        (when (<= (JR.i32 (- (send _ownerLayerInterface jm_getXP_0) (get-field f_currentSpeed this))) 0)
            (begin
            (send this jm_reverse_0)
            (send this jm_drop_0)))
        (when (> (JR.i32 (+ (send _ownerLayerInterface jm_getX2_0) (get-field f_currentSpeed this))) (send (DisplayInfoSingleton.jm_getInstance_0) jm_getLastWidth_0))
            (begin
            (send this jm_reverse_0)
            (send this jm_accelerate_0)
            (send this jm_drop_0)))
        (if (= (get-field f_currentRelativeAngle this) 0)
            (begin
            (set! _x (JR.i32 (+ _x (get-field f_currentSpeed this)))))
            (when (= (get-field f_currentRelativeAngle this) 180)
            (begin
            (set! _x (JR.i32 (- _x (get-field f_currentSpeed this)))))))
        (send _ownerLayerInterface jm_setPosition_3 _x (send _ownerLayerInterface jm_getYP_0) (send _ownerLayerInterface jm_getZP_0))
        (if (= (get-field f_currentRelativeAngle this) 0)
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_NUM0)))
            (when (= (get-field f_currentRelativeAngle this) 180)
            (begin
            (super jm_processKeyAI_1 (Canvas.jstatic_KEY_POUND))))))))
    (define/public (jm_reverse_0)
    (let ()
      (let/ec jreturn
        (if (= (get-field f_currentRelativeAngle this) 180)
            (begin
            (set-field! f_currentRelativeAngle this 0))
            (when (= (get-field f_currentRelativeAngle this) 0)
            (begin
            (set-field! f_currentRelativeAngle this 180)))))))
    (define/public (jm_accelerate_0)
    (let ()
      (let/ec jreturn
        (when (< (get-field f_currentSpeed this) 20)
            (begin
            (set-field! f_currentSpeed this (JR.i32 (+ (get-field f_currentSpeed this) 1))))))))
    (define/public (jm_drop_0)
    (let ([_ownerLayerInterface JR.null][_y JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _y (send _ownerLayerInterface jm_getYP_0))
        (if (> (JR.i32 (+ (send _ownerLayerInterface jm_getY2_0) (send _ownerLayerInterface jm_getHeight_0))) (send (DisplayInfoSingleton.jm_getInstance_0) jm_getLastHeight_0))
            (begin
            (set! _y 0))
            (begin
            (set! _y (JR.i32 (+ _y (JR.i32 (+ (send _ownerLayerInterface jm_getHeight_0) 1)))))))
        (send _ownerLayerInterface jm_setPosition_3 (send _ownerLayerInterface jm_getXP_0) _y (send _ownerLayerInterface jm_getZP_0)))))))
(define (HorizontalManeuverAI.jclassValue) HorizontalManeuverAI%)

(define (HorizontalManeuverAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new HorizontalManeuverAI% [jclass "HorizontalManeuverAI"]))
    (set-field! f_currentRelativeAngle this 0)
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_currentSpeed this 5)))
  this)



