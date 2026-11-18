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
(lazy-require ["./PacePatrolAI.rkt" (PacePatrolAI.jnew_3)])
(provide (all-defined-out))

(define PacePatrolAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (send _hashtable jm_put_2 (BasePatrolAI.jstatic_MAX_DISTANCE) (send (SmallIntegerSingletonFactory.jm_getInstance_0) jm_getAt_1 220))
        (jreturn (PacePatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))
(define (PacePatrolAIFactory.jclassValue) PacePatrolAIFactory%)

(define (PacePatrolAIFactory.jnew_0)
  (define this (new PacePatrolAIFactory% [jclass "PacePatrolAIFactory"]))
  this)



