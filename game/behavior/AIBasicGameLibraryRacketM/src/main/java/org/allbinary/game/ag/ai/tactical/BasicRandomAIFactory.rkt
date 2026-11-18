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
(lazy-require ["../../../../../../org/allbinary/game/ai/BasicAI.rkt" (BasicAI.jstatic_AI_VISITOR)])
(lazy-require ["../../../../../../org/allbinary/game/ag/ai/InputProbability.rkt" (InputProbability.jstatic_INPUT_PROBABILITY)])
(lazy-require ["./BasicRandomAI.rkt" (BasicRandomAI.jnew_4)])
(provide (all-defined-out))

(define BasicRandomAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_visitor JR.null][_inputProbability JR.null])
      (let/ec jreturn
        (set! _visitor (send _hashtable jm_get_1 (BasicAI.jstatic_AI_VISITOR)))
        (when (JR.null? _visitor)
            (begin
            (raise (JR.newException "Exception" "No Visitor Provided"))))
        (set! _inputProbability (send _hashtable jm_get_1 (InputProbability.jstatic_INPUT_PROBABILITY)))
        (jreturn (BasicRandomAI.jnew_4 _ownerLayerInterface _gameInput _inputProbability _visitor)))))))
(define (BasicRandomAIFactory.jclassValue) BasicRandomAIFactory%)

(define (BasicRandomAIFactory.jnew_0)
  (define this (new BasicRandomAIFactory% [jclass "BasicRandomAIFactory"]))
  this)



