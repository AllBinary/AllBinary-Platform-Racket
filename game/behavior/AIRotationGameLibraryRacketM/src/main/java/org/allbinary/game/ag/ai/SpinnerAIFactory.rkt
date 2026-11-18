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
(lazy-require ["../../../../../javax/microedition/lcdui/Canvas.rkt" (Canvas.jstatic_LEFT)])
(lazy-require ["./SpinnerAI.rkt" (SpinnerAI.jnew_3)])
(provide (all-defined-out))

(define SpinnerAIFactory%
  (class JObject%
    (super-new)
    (define/public (jm_getInstance_3 _hashtable _ownerLayerInterface _gameInput)
    (let ([_direction JR.null])
      (let/ec jreturn
        (set! _direction (vector (Canvas.jstatic_LEFT)))
        (jreturn (SpinnerAI.jnew_3 _direction _ownerLayerInterface _gameInput)))))))
(define (SpinnerAIFactory.jclassValue) SpinnerAIFactory%)

(define (SpinnerAIFactory.jnew_0)
  (define this (new SpinnerAIFactory% [jclass "SpinnerAIFactory"]))
  this)



