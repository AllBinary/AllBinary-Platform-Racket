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
(lazy-require ["./PlayerType.rkt" (PlayerType.jnew_2)])
(provide (all-defined-out))

(define PlayerTypesFactory%
  (class JObject%
    (super-new)
    (field [f_PLAYER_TYPE_ONE JR.null])
    (field [f_PLAYER_TYPE_TWO JR.null])
    (field [f_PLAYER_TYPE_THREE JR.null])))
(define (PlayerTypesFactory.jclassValue) PlayerTypesFactory%)

(define PlayerTypesFactory.jcell_SINGLETON 'jnone)
(define (PlayerTypesFactory.jstatic_SINGLETON)
  (when (eq? PlayerTypesFactory.jcell_SINGLETON 'jnone) (set! PlayerTypesFactory.jcell_SINGLETON (PlayerTypesFactory.jnew_0)))
  PlayerTypesFactory.jcell_SINGLETON)
(define (PlayerTypesFactory.jsetstatic_SINGLETON value) (set! PlayerTypesFactory.jcell_SINGLETON value))

(define (PlayerTypesFactory.jnew_0)
  (define this (new PlayerTypesFactory% [jclass "PlayerTypesFactory"]))
    (set-field! f_PLAYER_TYPE_ONE this (PlayerType.jnew_2 "Player Type One" 0))
    (set-field! f_PLAYER_TYPE_TWO this (PlayerType.jnew_2 "Player Type Two" 1))
    (set-field! f_PLAYER_TYPE_THREE this (PlayerType.jnew_2 "Player Type Three" 2))
  this)

(define (PlayerTypesFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PlayerTypesFactory.jstatic_SINGLETON)))))



