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
  "../../../../org/allbinary/graphics/displayable/screen/CommandForm.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Choice.rkt" (Choice.jstatic_EXCLUSIVE Choice.jstatic_MULTIPLE)])
(lazy-require ["../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_SCREEN)])
(lazy-require ["../../../../org/allbinary/game/commands/GameCommandsFactory.rkt" (GameCommandsFactory.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil.rkt" (GameFeatureFormUtil.jm_getInstance_0)])
(lazy-require ["../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.rkt" (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0 InGameFeatureChoiceGroups.jm_getMultipleInstance_0)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define InGameOptionsForm%
  (class CommandForm%
    (super-new)
    (define/override (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (send this jm_removeAllCommands_0)
        (send this jm_addCommand_1 (get-field f_CLOSE_AND_SHOW_GAME_CANVAS (GameCommandsFactory.jm_getInstance_0)))
        (send this jm_addCommand_1 (InGameOptionsForm.jstatic_DEFAULT))
        (send this jm_setCommandListener_1 _cmdListener))))))
(define (InGameOptionsForm.jclassValue) InGameOptionsForm%)

(define InGameOptionsForm.jcell_DISPLAY 'jnone)
(define (InGameOptionsForm.jstatic_DISPLAY)
  (when (eq? InGameOptionsForm.jcell_DISPLAY 'jnone) (set! InGameOptionsForm.jcell_DISPLAY (Command.jnew_4 "Options In Game" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_DISPLAY)
(define (InGameOptionsForm.jsetstatic_DISPLAY value) (set! InGameOptionsForm.jcell_DISPLAY value))

(define InGameOptionsForm.jcell_SAVE 'jnone)
(define (InGameOptionsForm.jstatic_SAVE)
  (when (eq? InGameOptionsForm.jcell_SAVE 'jnone) (set! InGameOptionsForm.jcell_SAVE (Command.jnew_4 "Save" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_SAVE)
(define (InGameOptionsForm.jsetstatic_SAVE value) (set! InGameOptionsForm.jcell_SAVE value))

(define InGameOptionsForm.jcell_DEFAULT 'jnone)
(define (InGameOptionsForm.jstatic_DEFAULT)
  (when (eq? InGameOptionsForm.jcell_DEFAULT 'jnone) (set! InGameOptionsForm.jcell_DEFAULT (Command.jnew_4 "Default" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1)))
  InGameOptionsForm.jcell_DEFAULT)
(define (InGameOptionsForm.jsetstatic_DEFAULT value) (set! InGameOptionsForm.jcell_DEFAULT value))

(define (InGameOptionsForm.jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor)
  (define this (new InGameOptionsForm% [jclass "InGameOptionsForm"]))
    (let ([_gameFeatureFormUtil JR.null])
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (set! _gameFeatureFormUtil (GameFeatureFormUtil.jm_getInstance_0))
        (send _gameFeatureFormUtil jm_addChoiceGroup_3 this (JR.className (InGameFeatureChoiceGroups.jm_getExclusiveInstance_0)) (Choice.jstatic_EXCLUSIVE))
        (send _gameFeatureFormUtil jm_addChoiceGroup_3 this (JR.className (InGameFeatureChoiceGroups.jm_getMultipleInstance_0)) (Choice.jstatic_MULTIPLE))
        (send this jm_initCommands_1 _commandListener)))
  this)



