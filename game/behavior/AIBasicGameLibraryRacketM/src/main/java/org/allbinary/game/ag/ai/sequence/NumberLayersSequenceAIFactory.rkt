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
;; package org.allbinary.game.ag.ai.sequence

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(lazy-require ["./NumberLayersSequenceAI.rkt" (NumberLayersSequenceAI.jnew_4)])
(provide (all-defined-out))

(define NumberLayersSequenceAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_4 _numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (jreturn (NumberLayersSequenceAI.jnew_4 _numberOfEnemiesLeft _artificialIntelligenceInterface _ownerLayerInterface _gameInput)))))))
(define (NumberLayersSequenceAIFactory.jclassValue) NumberLayersSequenceAIFactory%)

(define (NumberLayersSequenceAIFactory.jnew_0)
  (define this (new NumberLayersSequenceAIFactory% [jclass "NumberLayersSequenceAIFactory"]))
  this)



