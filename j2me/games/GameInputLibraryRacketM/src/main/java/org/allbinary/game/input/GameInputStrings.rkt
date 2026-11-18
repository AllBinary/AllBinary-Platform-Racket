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
;; package org.allbinary.game.input

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define GameInputStrings%
  (class JObject%
    (super-new)
    (field [f_PROCESS_INPUT JR.null])
    (field [f_KEY_PRESSED JR.null])
    (field [f_KEY_RELEASED JR.null])
    (field [f_KEY_REPEATED JR.null])
    (field [f_ON_PRESS_GAME_KEY JR.null])
    (field [f_ON_DOWN_GAME_KEY JR.null])
    (field [f_ON_UP_GAME_KEY JR.null])
    (field [f_NO_KEY JR.null])
    (field [f_ADD_KEY_EVENT JR.null])
    (field [f_REMOVE_KEY_EVENT JR.null])
    (field [f_STRAFE_LEFT JR.null])
    (field [f_STRAFE_RIGHT JR.null])
    (field [f_PROCESS_MOTION_INPUT JR.null])
    (field [f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY JR.null])
    (field [f_ENABLE_PLAYER_GAME_INPUTS JR.null])
    (field [f_ENABLE_PLAYER_GAME_INPUT JR.null])))
(define (GameInputStrings.jclassValue) GameInputStrings%)

(define GameInputStrings.jcell_instance 'jnone)
(define (GameInputStrings.jstatic_instance)
  (when (eq? GameInputStrings.jcell_instance 'jnone) (set! GameInputStrings.jcell_instance (GameInputStrings.jnew_0)))
  GameInputStrings.jcell_instance)
(define (GameInputStrings.jsetstatic_instance value) (set! GameInputStrings.jcell_instance value))

(define (GameInputStrings.jnew_0)
  (define this (new GameInputStrings% [jclass "GameInputStrings"]))
    (set-field! f_PROCESS_INPUT this "processInput")
    (set-field! f_KEY_PRESSED this "keyPressed")
    (set-field! f_KEY_RELEASED this "keyReleased")
    (set-field! f_KEY_REPEATED this "keyRepeated")
    (set-field! f_ON_PRESS_GAME_KEY this "onPressGameKeyEvent")
    (set-field! f_ON_DOWN_GAME_KEY this "onDownGameKeyEvent")
    (set-field! f_ON_UP_GAME_KEY this "onUpGameKeyEvent")
    (set-field! f_NO_KEY this "Key Code Not Mapped For Game: ")
    (set-field! f_ADD_KEY_EVENT this "addGameKeyEvent")
    (set-field! f_REMOVE_KEY_EVENT this "removeGameKeyEvent")
    (set-field! f_STRAFE_LEFT this "strafeLeft")
    (set-field! f_STRAFE_RIGHT this "strafeRight")
    (set-field! f_PROCESS_MOTION_INPUT this "processMotionInput")
    (set-field! f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY this "updateCurrentTouchInputFactory")
    (set-field! f_ENABLE_PLAYER_GAME_INPUTS this "Enabling PlayerGameInputs: ")
    (set-field! f_ENABLE_PLAYER_GAME_INPUT this "Enabling PlayerGameInput: ")
  this)

(define (GameInputStrings.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (GameInputStrings.jstatic_instance)))))



