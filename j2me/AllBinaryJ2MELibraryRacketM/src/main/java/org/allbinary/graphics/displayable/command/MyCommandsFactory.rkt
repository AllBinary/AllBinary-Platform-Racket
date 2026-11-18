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
;; package org.allbinary.graphics.displayable.command

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/Command.rkt" (Command.jnew_4 Command.jstatic_ITEM Command.jstatic_SCREEN)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define MyCommandsFactory%
  (class JObject%
    (super-new)
    (field [f_NO_COMMAND JR.null])
    (field [f_GAUGE_CHANGE JR.null])
    (field [f_SET_DISPLAYABLE JR.null])
    (field [f_PAUSE_COMMAND JR.null])
    (field [f_RESUME_COMMAND JR.null])))
(define (MyCommandsFactory.jclassValue) MyCommandsFactory%)

(define MyCommandsFactory.jcell_instance 'jnone)
(define (MyCommandsFactory.jstatic_instance)
  (when (eq? MyCommandsFactory.jcell_instance 'jnone) (set! MyCommandsFactory.jcell_instance (MyCommandsFactory.jnew_0)))
  MyCommandsFactory.jcell_instance)
(define (MyCommandsFactory.jsetstatic_instance value) (set! MyCommandsFactory.jcell_instance value))

(define (MyCommandsFactory.jnew_0)
  (define this (new MyCommandsFactory% [jclass "MyCommandsFactory"]))
    (set-field! f_NO_COMMAND this (Command.jnew_4 (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (JR.i32 (- 1)) (JR.i32 (- 1))))
    (set-field! f_GAUGE_CHANGE this (Command.jnew_4 "GAUGE_CHANGE" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_ITEM) 1))
    (set-field! f_SET_DISPLAYABLE this (Command.jnew_4 "Display" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 2))
    (set-field! f_PAUSE_COMMAND this (Command.jnew_4 "Pause" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 0))
    (set-field! f_RESUME_COMMAND this (Command.jnew_4 "Resume" (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (Command.jstatic_SCREEN) 0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (MyCommandsFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MyCommandsFactory.jstatic_instance)))))



