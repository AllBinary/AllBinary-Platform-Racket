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
(lazy-require ["../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory.rkt" (InputFeatureFactory.jm_getInstance_0)])
(lazy-require ["./MultiKeyPressesAI.rkt" (MultiKeyPressesAI.jnew_3)])
(lazy-require ["./KeyPressesAI.rkt" (KeyPressesAI.jnew_3)])
(provide (all-defined-out))

(define KeyPressesAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_isSingleKeyProcessing JR.null])
      (let/ec jreturn
        (set! _isSingleKeyProcessing (send (InputFeatureFactory.jm_getInstance_0) jm_isSingleKeyProcessing_0))
        (if _isSingleKeyProcessing
            (begin
            (jreturn (KeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))
            (begin
            (jreturn (MultiKeyPressesAI.jnew_3 _hashtable _ownerLayerInterface _gameInput)))))))))
(define (KeyPressesAIFactory.jclassValue) KeyPressesAIFactory%)

(define (KeyPressesAIFactory.jnew_0)
  (define this (new KeyPressesAIFactory% [jclass "KeyPressesAIFactory"]))
  this)



