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
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["./GameState.rkt" (GameState.jnew_2)])
(provide (all-defined-out))

(define GameStateFactory%
  (class JObject%
    (super-new)
    (field [f_index 0])
    (field [f_NO_GAME_STATE JR.null])
    (field [f_PLAYING_GAME_STATE JR.null])
    (field [f_SHOW_END_RESULT_GAME_STATE JR.null])
    (field [f_SHOW_HIGH_SCORE_GAME_STATE JR.null])
    (define/public (jm_createGameState_1 _name)
    (let ()
      (let/ec jreturn
        (jreturn (GameState.jnew_2 _name (let ([jvalue (get-field f_index this)]) (set-field! f_index this (JR.i32 (+ (get-field f_index this) 1))) jvalue))))))))
(define (GameStateFactory.jclassValue) GameStateFactory%)

(define GameStateFactory.jcell_instance 'jnone)
(define (GameStateFactory.jstatic_instance)
  (when (eq? GameStateFactory.jcell_instance 'jnone) (set! GameStateFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameStateFactory.jcell_instance)
(define (GameStateFactory.jsetstatic_instance value) (set! GameStateFactory.jcell_instance value))

(define (GameStateFactory.jnew_0)
  (define this (new GameStateFactory% [jclass "GameStateFactory"]))
    (set-field! f_index this 0)
    (set-field! f_NO_GAME_STATE this (send this jm_createGameState_1 "NO_GAME_STATE"))
    (set-field! f_PLAYING_GAME_STATE this (send this jm_createGameState_1 "PLAYING_GAME_STATE"))
    (set-field! f_SHOW_END_RESULT_GAME_STATE this (send this jm_createGameState_1 "SHOW_END_RESULT_GAME_STATE"))
    (set-field! f_SHOW_HIGH_SCORE_GAME_STATE this (send this jm_createGameState_1 "SHOW_HIGH_SCORE_GAME_STATE"))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameStateFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameStateFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameStateFactory.jcell_instance (GameStateFactory.jnew_0))))
        (jreturn (GameStateFactory.jstatic_instance)))))



