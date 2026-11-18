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
(lazy-require ["./GameTypeFactory.rkt" (GameTypeFactory.jm_getInstance_0)])
(lazy-require ["./GameMode.rkt" (GameMode.jstatic_SERVER)])
(lazy-require ["./PlayerTypesFactory.rkt" (PlayerTypesFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicHighScoresGameInfoFactory%
  (class JObject%
    (super-new)
    (field [f_MULTI_PLAYER_SERVER JR.null])
    (field [f_SINGLE_PLAYER_SERVER JR.null])))
(define (BasicHighScoresGameInfoFactory.jclassValue) BasicHighScoresGameInfoFactory%)

(define BasicHighScoresGameInfoFactory.jcell_SINGLETON 'jnone)
(define (BasicHighScoresGameInfoFactory.jstatic_SINGLETON)
  (when (eq? BasicHighScoresGameInfoFactory.jcell_SINGLETON 'jnone) (set! BasicHighScoresGameInfoFactory.jcell_SINGLETON (BasicHighScoresGameInfoFactory.jnew_0)))
  BasicHighScoresGameInfoFactory.jcell_SINGLETON)
(define (BasicHighScoresGameInfoFactory.jsetstatic_SINGLETON value) (set! BasicHighScoresGameInfoFactory.jcell_SINGLETON value))

(define (BasicHighScoresGameInfoFactory.jnew_0)
  (define this (new BasicHighScoresGameInfoFactory% [jclass "BasicHighScoresGameInfoFactory"]))
    (set-field! f_MULTI_PLAYER_SERVER this (GameInfo.jnew_5 (get-field f_MULTI_PLAYER (GameTypeFactory.jm_getInstance_0)) (GameMode.jstatic_SERVER) (get-field f_PLAYER_TYPE_ONE (PlayerTypesFactory.jm_getInstance_0)) 0 0))
    (set-field! f_SINGLE_PLAYER_SERVER this (GameInfo.jnew_5 (get-field f_SINGLE_PLAYER (GameTypeFactory.jm_getInstance_0)) (GameMode.jstatic_SERVER) (get-field f_PLAYER_TYPE_ONE (PlayerTypesFactory.jm_getInstance_0)) 0 0))
  this)

(define (BasicHighScoresGameInfoFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicHighScoresGameInfoFactory.jstatic_SINGLETON)))))



