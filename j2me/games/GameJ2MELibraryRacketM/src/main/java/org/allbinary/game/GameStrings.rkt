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

(define GameStrings%
  (class JObject%
    (super-new)
    (field [f_PROCESS_TICK JR.null])
    (field [f_ON_GAME_INITIALIZED JR.null])
    (field [f_UPDATESURFACE JR.null])
    (field [f_ON_SET_DISPLAYABLE JR.null])
    (field [f_UNPAUSE JR.null])
    (field [f_TOGGLE_MENU JR.null])
    (field [f_SET_GAME_OVER JR.null])
    (field [f_GAME_STATE JR.null])
    (field [f_SET_GAME_STATE JR.null])
    (field [f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE JR.null])))
(define (GameStrings.jclassValue) GameStrings%)

(define GameStrings.jcell_instance 'jnone)
(define (GameStrings.jstatic_instance)
  (when (eq? GameStrings.jcell_instance 'jnone) (set! GameStrings.jcell_instance (GameStrings.jnew_0)))
  GameStrings.jcell_instance)
(define (GameStrings.jsetstatic_instance value) (set! GameStrings.jcell_instance value))

(define (GameStrings.jnew_0)
  (define this (new GameStrings% [jclass "GameStrings"]))
    (set-field! f_PROCESS_TICK this "processTick")
    (set-field! f_ON_GAME_INITIALIZED this "onGameInitialized")
    (set-field! f_UPDATESURFACE this "updateSurface")
    (set-field! f_ON_SET_DISPLAYABLE this "onSetDisplayable")
    (set-field! f_UNPAUSE this "unPause")
    (set-field! f_TOGGLE_MENU this "toggleMenu")
    (set-field! f_SET_GAME_OVER this "setGameOver")
    (set-field! f_GAME_STATE this "Game State: ")
    (set-field! f_SET_GAME_STATE this "setGameState")
    (set-field! f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE this "stopGameCanvasRunnableInterface")
  this)

(define (GameStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameStrings.jstatic_instance)))))



