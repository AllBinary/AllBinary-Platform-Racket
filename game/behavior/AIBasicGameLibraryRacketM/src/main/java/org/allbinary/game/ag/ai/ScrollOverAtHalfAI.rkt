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
  "../../../../../org/allbinary/game/ai/BasicAI.rkt")
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(provide (all-defined-out))

(define ScrollOverAtHalfAI%
  (class BasicAI%
    (super-new)
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_ownerLayerInterface JR.null][_x JR.null][_y JR.null][_halfWidth JR.null][_halfHeight JR.null][_displayInfo JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _x (send _ownerLayerInterface jm_getXP_0))
        (set! _y (send _ownerLayerInterface jm_getYP_0))
        (set! _halfWidth (send _ownerLayerInterface jm_getHalfWidth_0))
        (set! _halfHeight (send _ownerLayerInterface jm_getHalfHeight_0))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (when (> _x (JR.i32 (- (send _displayInfo jm_getLastWidth_0) _halfWidth)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 (JR.i32 (+ _halfWidth 1)) _y (send _ownerLayerInterface jm_getZP_0))))
        (when (> _y (JR.i32 (- (send _displayInfo jm_getLastHeight_0) _halfHeight)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 _x (JR.i32 (+ _halfHeight 1)) (send _ownerLayerInterface jm_getZP_0))))
        (when (< _x (JR.i32 (- _halfWidth)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 (JR.i32 (- (send _displayInfo jm_getLastWidth_0) _halfWidth)) _y (send _ownerLayerInterface jm_getZP_0))))
        (when (< _y (JR.i32 (- _halfHeight)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 _x (JR.i32 (- (send _displayInfo jm_getLastHeight_0) _halfHeight)) (send _ownerLayerInterface jm_getZP_0)))))))))
(define (ScrollOverAtHalfAI.jclassValue) ScrollOverAtHalfAI%)

(define (ScrollOverAtHalfAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new ScrollOverAtHalfAI% [jclass "ScrollOverAtHalfAI"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



