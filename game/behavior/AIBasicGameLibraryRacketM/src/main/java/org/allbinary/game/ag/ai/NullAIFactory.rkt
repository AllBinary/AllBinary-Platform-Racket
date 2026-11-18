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
(lazy-require ["./NullAI.rkt" (NullAI.jnew_0)])
(provide (all-defined-out))

(define NullAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ()
      (let/ec jreturn
        (jreturn (NullAIFactory.jstatic_NULL_AI)))))))
(define (NullAIFactory.jclassValue) NullAIFactory%)

(define NullAIFactory.jcell_NULL_AI 'jnone)
(define (NullAIFactory.jstatic_NULL_AI)
  (when (eq? NullAIFactory.jcell_NULL_AI 'jnone) (set! NullAIFactory.jcell_NULL_AI (NullAI.jnew_0)))
  NullAIFactory.jcell_NULL_AI)
(define (NullAIFactory.jsetstatic_NULL_AI value) (set! NullAIFactory.jcell_NULL_AI value))

(define (NullAIFactory.jnew_0)
  (define this (new NullAIFactory% [jclass "NullAIFactory"]))
  this)

(define (NullAIFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullAIFactory.jstatic_NULL_AI)))))



