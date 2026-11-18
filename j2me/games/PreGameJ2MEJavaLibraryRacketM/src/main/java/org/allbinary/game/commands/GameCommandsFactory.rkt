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
;; package org.allbinary.game.commands

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_STOP Command.jstatic_EXIT Command.jstatic_SCREEN)])
(lazy-require ["../../../../org/allbinary/graphics/displayable/CanvasStrings.rkt" (CanvasStrings.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define GameCommandsFactory%
  (class JObject%
    (super-new)
    (field [f_TOGGLE_FULLSCREEN JR.null])
    (field [f_TOGGLE_KEYBOARD JR.null])
    (field [f_SET_MENU_DISPLAYABLE JR.null])
    (field [f_APPLICATION_UPDATE JR.null])
    (field [f_DISPLAY_ABOUT JR.null])
    (field [f_OPEN_WEB_URL JR.null])
    (field [f_CLOSE_OPTIONS JR.null])
    (field [f_DISPLAY_OPTIONS JR.null])
    (field [f_START_TRACE JR.null])
    (field [f_STOP_TRACE JR.null])
    (field [f_DEFAULT_OPTIONS JR.null])
    (field [f_SHOW_GAME_CANVAS JR.null])
    (field [f_CLOSE_AND_SHOW_GAME_CANVAS JR.null])
    (field [f_QUIT_COMMAND JR.null])
    (field [f_RESTART_COMMAND JR.null])
    (field [f_DISPLAY_SAVE_FORM JR.null])
    (field [f_SAVE JR.null])
    (field [f_DISPLAY_LOAD_FORM JR.null])
    (field [f_LOAD_FILE JR.null])
    (field [f_DELETE_FILE JR.null])
    (field [f_EXIT_COMMAND JR.null])
    (field [f_EXIT_WITHOUT_PROGRESS_COMMAND JR.null])
    (field [f_START_COMMAND JR.null])
    (field [f_CONTINUE_COMMAND JR.null])
    (field [f_SELECT_COMMAND JR.null])
    (field [f_FEATURE_UPDATE JR.null])
    (field [f_BUY_COMMAND JR.null])))
(define (GameCommandsFactory.jclassValue) GameCommandsFactory%)

(define GameCommandsFactory.jcell_instance 'jnone)
(define (GameCommandsFactory.jstatic_instance)
  (when (eq? GameCommandsFactory.jcell_instance 'jnone) (set! GameCommandsFactory.jcell_instance (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  GameCommandsFactory.jcell_instance)
(define (GameCommandsFactory.jsetstatic_instance value) (set! GameCommandsFactory.jcell_instance value))

(define (GameCommandsFactory.jnew_0)
  (define this (new GameCommandsFactory% [jclass "GameCommandsFactory"]))
    (set-field! f_TOGGLE_FULLSCREEN this (Command.jnew_4 "Toggle FullScreen" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_TOGGLE_KEYBOARD this (Command.jnew_4 "Keyboard" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_SET_MENU_DISPLAYABLE this (Command.jnew_4 "Set Menu Displayable" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_APPLICATION_UPDATE this (Command.jnew_4 (get-field f_UPDATE (CommonStrings.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_DISPLAY_ABOUT this (Command.jnew_4 (get-field f_ABOUT (CanvasStrings.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2))
    (set-field! f_OPEN_WEB_URL this (Command.jnew_4 "Open Web URL" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2))
    (set-field! f_CLOSE_OPTIONS this (Command.jnew_4 "Back" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_DISPLAY_OPTIONS this (Command.jnew_4 (get-field f_OPTIONS (CanvasStrings.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2))
    (set-field! f_START_TRACE this (Command.jnew_4 "Start Trace" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_STOP_TRACE this (Command.jnew_4 "Stop Trace" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_DEFAULT_OPTIONS this (Command.jnew_4 "Default" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_SHOW_GAME_CANVAS this (Command.jnew_4 "Back to Game" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_CLOSE_AND_SHOW_GAME_CANVAS this (Command.jnew_4 "Back" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_QUIT_COMMAND this (Command.jnew_4 "Quit" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_STOP) 1))
    (set-field! f_RESTART_COMMAND this (Command.jnew_4 "Restart" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 0))
    (set-field! f_DISPLAY_SAVE_FORM this (Command.jnew_4 "Save To" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 3))
    (set-field! f_SAVE this (Command.jnew_4 "Save" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 3))
    (set-field! f_DISPLAY_LOAD_FORM this (Command.jnew_4 "Load" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 3))
    (set-field! f_LOAD_FILE this (Command.jnew_4 "Load File" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 3))
    (set-field! f_DELETE_FILE this (Command.jnew_4 "Delete File" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_EXIT_COMMAND this (Command.jnew_4 "Exit" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_EXIT) 2))
    (set-field! f_EXIT_WITHOUT_PROGRESS_COMMAND this (Command.jnew_4 "Exit Without Progress" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_EXIT) 2))
    (set-field! f_START_COMMAND this (Command.jnew_4 (get-field f_START (CommonStrings.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_CONTINUE_COMMAND this (Command.jnew_4 "Continue" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_SELECT_COMMAND this (Command.jnew_4 "Select" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_FEATURE_UPDATE this (Command.jnew_4 "Feature Update" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_BUY_COMMAND this (Command.jnew_4 "BUY" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (GameCommandsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (when (eq? (GameCommandsFactory.jstatic_instance) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! GameCommandsFactory.jcell_instance (GameCommandsFactory.jnew_0))))
        (jreturn (GameCommandsFactory.jstatic_instance)))))



