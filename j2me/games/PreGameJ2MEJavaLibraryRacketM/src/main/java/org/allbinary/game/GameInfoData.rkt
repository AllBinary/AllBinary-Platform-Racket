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
(provide (all-defined-out))

(define GameInfoData%
  (class JObject%
    (super-new)
    (field [f_GAME_TYPE JR.null])
    (field [f_GAME_MODE JR.null])
    (field [f_PLAYER_TYPE JR.null])
    (field [f_HIGHEST_LEVEL JR.null])
    (field [f_CURRENT_LEVEL JR.null])
    (field [f_SOFTWARE_INFORMATION JR.null])))
(define (GameInfoData.jclassValue) GameInfoData%)

(define GameInfoData.jcell_instance 'jnone)
(define (GameInfoData.jstatic_instance)
  (when (eq? GameInfoData.jcell_instance 'jnone) (set! GameInfoData.jcell_instance (GameInfoData.jnew_0)))
  GameInfoData.jcell_instance)
(define (GameInfoData.jsetstatic_instance value) (set! GameInfoData.jcell_instance value))

(define (GameInfoData.jnew_0)
  (define this (new GameInfoData% [jclass "GameInfoData"]))
    (set-field! f_GAME_TYPE this "GAME_TYPE")
    (set-field! f_GAME_MODE this "GAME_MODE")
    (set-field! f_PLAYER_TYPE this "PLAYER_TYPE")
    (set-field! f_HIGHEST_LEVEL this "HIGHEST_LEVEL")
    (set-field! f_CURRENT_LEVEL this "CURRENT_LEVEL")
    (set-field! f_SOFTWARE_INFORMATION this "SOFTWARE_INFORMATION")
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameInfoData.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInfoData.jstatic_instance)))))



