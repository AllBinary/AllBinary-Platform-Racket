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
(lazy-require ["../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory.rkt" (SmallIntegerSingletonFactory.jm_getInstance_0)])
(lazy-require ["./BasePatrolAI.rkt" (BasePatrolAI.jstatic_MAX_DISTANCE)])
(lazy-require ["./TerrainPatrolAI.rkt" (TerrainPatrolAI.jnew_3)])
(provide (all-defined-out))

(define TerrainPatrolAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (send _hashtable jm_put_2 (BasePatrolAI.jstatic_MAX_DISTANCE) (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 220))
        (jreturn (TerrainPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))
(define (TerrainPatrolAIFactory.jclassValue) TerrainPatrolAIFactory%)

(define (TerrainPatrolAIFactory.jnew_0)
  (define this (new TerrainPatrolAIFactory% [jclass "TerrainPatrolAIFactory"]))
  this)



