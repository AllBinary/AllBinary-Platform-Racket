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
;; package org.allbinary.game.configuration.persistance

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "./KeyValuePersistance.rkt")
(lazy-require ["./GamePersistanceStrings.rkt" (GamePersistanceStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameConfigurationPersistanceSingleton%
  (class KeyValuePersistance%
    (super-new)))
(define (GameConfigurationPersistanceSingleton.jclassValue) GameConfigurationPersistanceSingleton%)

(define GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE 'jnone)
(define (GameConfigurationPersistanceSingleton.jstatic_GAME_PERSISTANCE)
  (when (eq? GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE 'jnone) (set! GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE (GameConfigurationPersistanceSingleton.jnew_0)))
  GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE)
(define (GameConfigurationPersistanceSingleton.jsetstatic_GAME_PERSISTANCE value) (set! GameConfigurationPersistanceSingleton.jcell_GAME_PERSISTANCE value))

(define (GameConfigurationPersistanceSingleton.jnew_0)
  (define this (new GameConfigurationPersistanceSingleton% [jclass "GameConfigurationPersistanceSingleton"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (GameConfigurationPersistanceSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameConfigurationPersistanceSingleton.jstatic_GAME_PERSISTANCE)))))



