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
  "../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../../org/allbinary/bounds/TopULayerBounds.rkt" (TopULayerBounds.jnew_1)])
(lazy-require ["../../../../../org/allbinary/graphics/PointFactory.rkt" (PointFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/graphics/Rectangle.rkt" (Rectangle.jnew_3)])
(lazy-require ["../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton.rkt" (DisplayInfoSingleton.jm_getInstance_0)])
(lazy-require ["./BoundBounceAI.rkt" (BoundBounceAI.jnew_4)])
(lazy-require ["./ReverseVelocityBoundsVisitor.rkt" (ReverseVelocityBoundsVisitor.jnew_1)])
(provide (all-defined-out))

(define TopUBoundBounceAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_velocityInterfaceCompositeInterface JR.null][_velocityInterface JR.null][_maxDistancePerTick JR.null][_halfWidth JR.null][_halfHeight JR.null][_point JR.null][_displayInfo JR.null][_rectangle JR.null])
      (let/ec jreturn
        (set! _velocityInterfaceCompositeInterface _ownerLayerInterface)
        (set! _velocityInterface (send _velocityInterfaceCompositeInterface jm_getVelocityProperties_0))
        (set! _maxDistancePerTick (arithmetic-shift (send _velocityInterface jm_getMaxForwardVelocity_0) (- (bitwise-and (JR.className (send _velocityInterface jm_getVelocityXBasicDecimalP_0)) 31))))
        (set! _halfWidth (JR.i32 (+ (JR.i32 (+ (JR.i32 (* (send _ownerLayerInterface jm_getWidth_0) 2)) _maxDistancePerTick)) 1)))
        (set! _halfHeight (JR.i32 (+ (JR.i32 (+ (JR.i32 (* (send _ownerLayerInterface jm_getHeight_0) 2)) _maxDistancePerTick)) 1)))
        (set! _point (send (PointFactory.jm_getInstance_0) jm_createXY_2 _halfWidth (JR.i32 (+ _halfHeight 60))))
        (set! _displayInfo (DisplayInfoSingleton.jm_getInstance_0))
        (set! _rectangle (Rectangle.jnew_3 _point (JR.i32 (- (JR.i32 (- (send _displayInfo jm_getLastWidth_0) _halfWidth)) (send _point jm_getX_0))) (JR.i32 (- (JR.i32 (- (send _displayInfo jm_getLastHeight_0) _halfHeight)) (send _point jm_getY_0)))))
        (jreturn (BoundBounceAI.jnew_4 _ownerLayerInterface _gameInput (TopULayerBounds.jnew_1 _rectangle) (ReverseVelocityBoundsVisitor.jnew_1 _ownerLayerInterface))))))))
(define (TopUBoundBounceAIFactory.jclassValue) TopUBoundBounceAIFactory%)

(define (TopUBoundBounceAIFactory.jnew_0)
  (define this (new TopUBoundBounceAIFactory% [jclass "TopUBoundBounceAIFactory"]))
  this)



