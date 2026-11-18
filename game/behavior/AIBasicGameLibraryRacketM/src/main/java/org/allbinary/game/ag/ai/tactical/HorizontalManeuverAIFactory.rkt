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
  "../../../../../../org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.rkt")
(lazy-require ["./HorizontalManeuverAI.rkt" (HorizontalManeuverAI.jnew_2)])
(provide (all-defined-out))

(define HorizontalManeuverAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (jreturn (HorizontalManeuverAI.jnew_2 _ownerLayerInterface _gameInput)))))))
(define (HorizontalManeuverAIFactory.jclassValue) HorizontalManeuverAIFactory%)

(define (HorizontalManeuverAIFactory.jnew_0)
  (define this (new HorizontalManeuverAIFactory% [jclass "HorizontalManeuverAIFactory"]))
  this)



