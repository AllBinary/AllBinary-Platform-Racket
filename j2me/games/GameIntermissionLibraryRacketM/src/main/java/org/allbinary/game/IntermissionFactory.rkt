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
(lazy-require ["../../../org/allbinary/game/state/GameStateFactory.rkt" (GameStateFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define IntermissionFactory%
  (class JObject%
    (super-new)
    (field [f_START_LEVEL_INTERMISSION_GAME_STATE JR.null])
    (field [f_WAIT_LEVEL_INTERMISSION_GAME_STATE JR.null])
    (field [f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE JR.null])
    (field [f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE JR.null])))
(define (IntermissionFactory.jclassValue) IntermissionFactory%)

(define IntermissionFactory.jcell_instance 'jnone)
(define (IntermissionFactory.jstatic_instance)
  (when (eq? IntermissionFactory.jcell_instance 'jnone) (set! IntermissionFactory.jcell_instance (IntermissionFactory.jnew_0)))
  IntermissionFactory.jcell_instance)
(define (IntermissionFactory.jsetstatic_instance value) (set! IntermissionFactory.jcell_instance value))

(define (IntermissionFactory.jnew_0)
  (define this (new IntermissionFactory% [jclass "IntermissionFactory"]))
    (set-field! f_START_LEVEL_INTERMISSION_GAME_STATE this (send (GameStateFactory.jm_getInstance_0) jm_createGameState_1 "START_LEVEL_INTERMISSION_GAME_STATE"))
    (set-field! f_WAIT_LEVEL_INTERMISSION_GAME_STATE this (send (GameStateFactory.jm_getInstance_0) jm_createGameState_1 "WAIT_LEVEL_INTERMISSION_GAME_STATE"))
    (set-field! f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE this (send (GameStateFactory.jm_getInstance_0) jm_createGameState_1 "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"))
    (set-field! f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE this (send (GameStateFactory.jm_getInstance_0) jm_createGameState_1 "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"))
  this)

(define (IntermissionFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (IntermissionFactory.jstatic_instance)))))



