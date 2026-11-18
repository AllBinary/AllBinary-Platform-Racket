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
;; package org.allbinary.game.state

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameStateCompositeInterface%
  (class JObject%
    (super-new)
    (define/public (jm_setGameState_1 _gameState)
      (raise (JR.newException "AbstractMethodError" "setGameState")))
    (define/public (jm_getGameState_0)
      (raise (JR.newException "AbstractMethodError" "getGameState")))))
(define (GameStateCompositeInterface.jclassValue) GameStateCompositeInterface%)

(define (GameStateCompositeInterface.jnew_0)
  (define this (new GameStateCompositeInterface% [jclass "GameStateCompositeInterface"]))
  this)



