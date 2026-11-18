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

(define ScrollOverAtEndAI%
  (class BasicAI%
    (super-new)
    (define/override (jm_processAI_1 _allBinaryLayerManager)
    (let ([_ownerLayerInterface JR.null][_x JR.null][_y JR.null][_width JR.null][_height JR.null][_displayInfo JR.null])
      (let/ec jreturn
        (set! _ownerLayerInterface (send this jm_getOwnerLayerInterface_0))
        (set! _x (send _ownerLayerInterface jm_getXP_0))
        (set! _y (send _ownerLayerInterface jm_getYP_0))
        (set! _width (send _ownerLayerInterface jm_getWidth_0))
        (set! _height (send _ownerLayerInterface jm_getHeight_0))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (when (> _x (send _displayInfo jm_getLastWidth_0))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 0 _y (send _ownerLayerInterface jm_getZP_0))))
        (when (> _y (send _displayInfo jm_getLastHeight_0))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 _x 0 (send _ownerLayerInterface jm_getZP_0))))
        (when (< _x (JR.i32 (- _width)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 (JR.i32 (- (send _displayInfo jm_getLastWidth_0) _width)) _y (send _ownerLayerInterface jm_getZP_0))))
        (when (< _y (JR.i32 (- _height)))
            (begin
            (send _ownerLayerInterface jm_setPosition_3 _x (JR.i32 (- (send _displayInfo jm_getLastHeight_0) _height)) (send _ownerLayerInterface jm_getZP_0)))))))))
(define (ScrollOverAtEndAI.jclassValue) ScrollOverAtEndAI%)

(define (ScrollOverAtEndAI.jnew_2 _ownerLayerInterface _gameInput)
  (define this (new ScrollOverAtEndAI% [jclass "ScrollOverAtEndAI"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



