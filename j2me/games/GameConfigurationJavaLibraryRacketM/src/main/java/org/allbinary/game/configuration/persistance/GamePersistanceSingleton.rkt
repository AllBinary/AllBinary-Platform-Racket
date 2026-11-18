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

(define GamePersistanceSingleton%
  (class KeyValuePersistance%
    (super-new)))
(define (GamePersistanceSingleton.jclassValue) GamePersistanceSingleton%)

(define GamePersistanceSingleton.jcell_GAME_PERSISTANCE 'jnone)
(define (GamePersistanceSingleton.jstatic_GAME_PERSISTANCE)
  (when (eq? GamePersistanceSingleton.jcell_GAME_PERSISTANCE 'jnone) (set! GamePersistanceSingleton.jcell_GAME_PERSISTANCE (GamePersistanceSingleton.jnew_0)))
  GamePersistanceSingleton.jcell_GAME_PERSISTANCE)
(define (GamePersistanceSingleton.jsetstatic_GAME_PERSISTANCE value) (set! GamePersistanceSingleton.jcell_GAME_PERSISTANCE value))

(define (GamePersistanceSingleton.jnew_0)
  (define this (new GamePersistanceSingleton% [jclass "GamePersistanceSingleton"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (GamePersistanceSingleton.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GamePersistanceSingleton.jstatic_GAME_PERSISTANCE)))))



