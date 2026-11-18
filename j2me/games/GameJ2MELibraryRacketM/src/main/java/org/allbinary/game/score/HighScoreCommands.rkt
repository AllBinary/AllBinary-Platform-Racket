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
;; package org.allbinary.game.score

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_SCREEN)])
(lazy-require ["../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define HighScoreCommands%
  (class JObject%
    (super-new)
    (field [f_DISPLAY JR.null])
    (field [f_PERSONAL JR.null])
    (field [f_WORLD JR.null])))
(define (HighScoreCommands.jclassValue) HighScoreCommands%)

(define HighScoreCommands.jcell_instance 'jnone)
(define (HighScoreCommands.jstatic_instance)
  (when (eq? HighScoreCommands.jcell_instance 'jnone) (set! HighScoreCommands.jcell_instance (HighScoreCommands.jnew_0)))
  HighScoreCommands.jcell_instance)
(define (HighScoreCommands.jsetstatic_instance value) (set! HighScoreCommands.jcell_instance value))

(define (HighScoreCommands.jnew_0)
  (define this (new HighScoreCommands% [jclass "HighScoreCommands"]))
    (set-field! f_DISPLAY this (Command.jnew_4 "Scores" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_PERSONAL this (Command.jnew_4 "Personal" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
    (set-field! f_WORLD this (Command.jnew_4 "World" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 1))
  this)

(define (HighScoreCommands.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (HighScoreCommands.jstatic_instance)))))



