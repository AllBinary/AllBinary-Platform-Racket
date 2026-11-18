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
;; package org.allbinary.game

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt")
(lazy-require ["./GameInfo.rkt" (GameInfo.jnew_5)])
(provide (all-defined-out))

(define GameInfoCopyFactory%
  (class JObject%
    (super-new)))
(define (GameInfoCopyFactory.jclassValue) GameInfoCopyFactory%)

(define (GameInfoCopyFactory.jnew_0)
  (define this (new GameInfoCopyFactory% [jclass "GameInfoCopyFactory"]))
  this)

(define (GameInfoCopyFactory.jm_getInstanceMaxLevel_2 _gameInfo _maxLevel)
    (let ()
      (let/ec jreturn
        (jreturn (GameInfo.jnew_5 (send _gameInfo jm_getGameType_0) (send _gameInfo jm_getGameMode_0) (send _gameInfo jm_getPlayerType_0) _maxLevel (send _gameInfo jm_getCurrentLevel_0))))))

(define (GameInfoCopyFactory.jm_getInstance_1 _gameInfo)
    (let ()
      (let/ec jreturn
        (jreturn (GameInfo.jnew_5 (send _gameInfo jm_getGameType_0) (send _gameInfo jm_getGameMode_0) (send _gameInfo jm_getPlayerType_0) (send _gameInfo jm_getHighestLevel_0) (send _gameInfo jm_getCurrentLevel_0))))))



