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
;; package org.allbinary.game.configuration

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt"
  "../../../../java/lang/Long.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/TextField.rkt" (TextField.jnew_4 TextField.jstatic_ANY)])
(lazy-require ["../../../../org/allbinary/MIDPUtil.rkt" (MIDPUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/ABSystemWrapper.rkt" (ABSystemWrapper.jm_getInstance_0)])
(provide (all-defined-out))

(define SaveGameForm%
  (class CommandForm%
    (super-new)
    (field [f_meUtil JR.null])
    (define/override (jm_initCommands_1 _cmdListener)
    (let ([_gameCommandsFactory JR.null])
      (let/ec jreturn
        (set! _gameCommandsFactory (GameCommandsFactory.jm_getInstance_0))
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_SAVE _gameCommandsFactory))
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS _gameCommandsFactory))
        (send this jm_setCommandListener_1 _cmdListener))))))
(define (SaveGameForm.jclassValue) SaveGameForm%)

(define SaveGameForm.jcell_FORM 'jnone)
(define (SaveGameForm.jstatic_FORM)
  (when (eq? SaveGameForm.jcell_FORM 'jnone) (set! SaveGameForm.jcell_FORM (CommandForm.jm_getNullCommandForm_0)))
  SaveGameForm.jcell_FORM)
(define (SaveGameForm.jsetstatic_FORM value) (set! SaveGameForm.jcell_FORM value))

(define (SaveGameForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (define this (new SaveGameForm% [jclass "SaveGameForm"]))
    (set-field! f_meUtil this (MIDPUtil.jm_getInstance_0))
    (let ([_timeString JR.null])
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (set! _timeString (JR.str (send (ABSystemWrapper.jm_getInstance_0) jm_currentTimeMillis_0)))
        (send (get-field f_meUtil this) jm_appendItem_2 this (TextField.jnew_4 "Name: " _timeString 30 (TextField.jstatic_ANY)))
        (send this jm_initCommands_1 _commandListener)))
  this)

(define (SaveGameForm.jm_createForm_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
    (let ()
      (let/ec jreturn
        (set! SaveGameForm.jcell_FORM (SaveGameForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (jreturn (SaveGameForm.jstatic_FORM)))))

(define (SaveGameForm.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SaveGameForm.jstatic_FORM)))))



