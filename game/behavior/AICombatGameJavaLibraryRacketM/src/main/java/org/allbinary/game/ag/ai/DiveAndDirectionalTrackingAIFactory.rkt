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
(lazy-require ["../../../../../org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory.rkt" (BasicRandomAIFactory.jnew_0)])
(lazy-require ["../../../../../org/allbinary/game/ai/BasicAI.rkt" (BasicAI.jstatic_AI_VISITOR)])
(lazy-require ["./ThrustAIVisitorFactory.rkt" (ThrustAIVisitorFactory.jm_getInstance_0)])
(lazy-require ["./BasicProbabilityAIDataFactory.rkt" (BasicProbabilityAIDataFactory.jnew_0)])
(lazy-require ["./LastKeyAIVisitorFactory.rkt" (LastKeyAIVisitorFactory.jm_getInstance_0)])
(lazy-require ["./DiveAndDirectionalTrackingAI.rkt" (DiveAndDirectionalTrackingAI.jnew_4)])
(provide (all-defined-out))

(define DiveAndDirectionalTrackingAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_visitorCanBeNull JR.null][_hashtable2 JR.null][_artificialIntelligenceInterface JR.null])
      (let/ec jreturn
        (set! _visitorCanBeNull (send _hashtable jm_get_1 (BasicAI.jstatic_AI_VISITOR)))
        (when (JR.null? _visitorCanBeNull)
            (begin
            (set! _visitorCanBeNull (ThrustAIVisitorFactory.jm_getInstance_0))))
        (set! _hashtable2 (send (BasicProbabilityAIDataFactory.jnew_0) jm_getInstance_0))
        (send _hashtable2 jm_put_2 (BasicAI.jstatic_AI_VISITOR) (LastKeyAIVisitorFactory.jm_getInstance_0))
        (set! _artificialIntelligenceInterface (send (BasicRandomAIFactory.jnew_0) jm_getInstance_3 _hashtable2 _ownerLayerInterface _gameInput))
        (jreturn (DiveAndDirectionalTrackingAI.jnew_4 _ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitorCanBeNull)))))))
(define (DiveAndDirectionalTrackingAIFactory.jclassValue) DiveAndDirectionalTrackingAIFactory%)

(define (DiveAndDirectionalTrackingAIFactory.jnew_0)
  (define this (new DiveAndDirectionalTrackingAIFactory% [jclass "DiveAndDirectionalTrackingAIFactory"]))
  this)



