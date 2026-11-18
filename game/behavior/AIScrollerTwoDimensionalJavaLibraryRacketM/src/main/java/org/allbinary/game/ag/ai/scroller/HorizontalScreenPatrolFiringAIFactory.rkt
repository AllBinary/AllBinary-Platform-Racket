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
(lazy-require ["./HorizontalScreenPatrolAI.rkt" (HorizontalScreenPatrolAI.jnew_3)])
(provide (all-defined-out))

(define HorizontalScreenPatrolFiringAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (jreturn (HorizontalScreenPatrolAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))
(define (HorizontalScreenPatrolFiringAIFactory.jclassValue) HorizontalScreenPatrolFiringAIFactory%)

(define (HorizontalScreenPatrolFiringAIFactory.jnew_0)
  (define this (new HorizontalScreenPatrolFiringAIFactory% [jclass "HorizontalScreenPatrolFiringAIFactory"]))
  this)



