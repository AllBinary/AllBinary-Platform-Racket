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
;; package org.allbinary.game.ag.ai.scroller

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt"
  "../../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.rkt")
(lazy-require ["../../../../../../org/allbinary/game/ag/ai/ArrayAI.rkt" (ArrayAI.jnew_3)])
(lazy-require ["./RandomPatrolAI.rkt" (RandomPatrolAI.jnew_3)])
(lazy-require ["./TimedFireAI.rkt" (TimedFireAI.jnew_3)])
(provide (all-defined-out))

(define RandomPatrolFlockingFiringAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_artificialIntelligenceInterface JR.null])
      (let/ec jreturn
        (set! _artificialIntelligenceInterface (JR.newArray JR.null 2))
        (vector-set! _artificialIntelligenceInterface 0 (RandomPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (vector-set! _artificialIntelligenceInterface 1 (TimedFireAI.jnew_3 1800 _ownerLayerInterface _gameInput))
        (jreturn (ArrayAI.jnew_3 _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))))
(define (RandomPatrolFlockingFiringAIFactory.jclassValue) RandomPatrolFlockingFiringAIFactory%)

(define (RandomPatrolFlockingFiringAIFactory.jnew_0)
  (define this (new RandomPatrolFlockingFiringAIFactory% [jclass "RandomPatrolFlockingFiringAIFactory"]))
  this)



