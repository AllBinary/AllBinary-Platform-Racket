#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2002 AllBinary 
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
;; package org.allbinary.graphics.displayable.screen

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../javax/microedition/lcdui/Form.rkt"
  "../../../../../org/allbinary/game/displayable/canvas/MenuListener.rkt"
  "../../../../../org/allbinary/graphics/displayable/command/MyCommandInterface.rkt")
(lazy-require ["../../../../../javax/microedition/lcdui/NullCommandListener.rkt" (NullCommandListener.jstatic_NULL_COMMAND_LISTENER)])
(lazy-require ["../../../../../org/allbinary/graphics/color/BasicColorFactory.rkt" (BasicColorFactory.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["./ScreenRepaintProcessorFactory.rkt" (ScreenRepaintProcessorFactory.jm_getInstance_0)])
(provide (all-defined-out))

(define CommandForm%
  (class Form%
    (super-new)
    (inherit/super jm_removeCommand_1)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_repaintProcessor JR.null])
    (field [f_commandStack JR.null])
    (define/public (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_open_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this "open"))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_START (get-field f_commonStrings this)) this (get-field f_CLOSE (get-field f_commonStrings this))))))
    (define/public (jm_update_0)
    (let ()
      (let/ec jreturn
        (send (get-field f_repaintProcessor this) jm_process_0))))
    (define/public (jm_getSourceId_0)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/override (jm_addCommand_1 _command)
    (let ()
      (let/ec jreturn
        (send (get-field f_commandStack this) jm_push_1 _command)
        (super jm_addCommand_1 _command))))
    (define/public (jm_removeAllCommands_0)
    (let ([_size JR.null][_index JR.null])
      (let/ec jreturn
        (set! _size (send (get-field f_commandStack this) jm_size_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index _size)
                (let/ec jcontinue
            (super jm_removeCommand_1 (send (get-field f_commandStack this) jm_pop_0)))
                (set! _index (JR.i32 (+ _index 1))) (jloop))))))))))
(define (CommandForm.jclassValue) CommandForm%)

(define CommandForm.jcell_NULL_COMMAND_FORM 'jnone)
(define (CommandForm.jstatic_NULL_COMMAND_FORM)
  (when (eq? CommandForm.jcell_NULL_COMMAND_FORM 'jnone) (set! CommandForm.jcell_NULL_COMMAND_FORM (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0))))
  CommandForm.jcell_NULL_COMMAND_FORM)
(define (CommandForm.jsetstatic_NULL_COMMAND_FORM value) (set! CommandForm.jcell_NULL_COMMAND_FORM value))

(define (CommandForm.jnew_4 _commandListener _formTitle _backgrounBasicColor _foregroundBasicColor)
  (define this (new CommandForm% [jclass "CommandForm"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_repaintProcessor this (send (ScreenRepaintProcessorFactory.jm_getInstance_0) jm_create_1 this))
    
    (let ()
      (let/ec jreturn
        (void)
        (set-field! f_commandStack this (send (StdUtil.jm_getInstance_0) jm_createStack_0))
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) _e))])
            (send (get-field f_repaintProcessor this) jm_process_0))))
  this)

(define (CommandForm.jm_getNullCommandForm_0)
    (let ()
      (let/ec jreturn
        (when (eq? (CommandForm.jstatic_NULL_COMMAND_FORM) (get-field f_NULL_OBJECT (NullUtil.jm_getInstance_0)))
            (begin
            (set! CommandForm.jcell_NULL_COMMAND_FORM (CommandForm.jnew_4 (NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (get-field f_EMPTY_STRING (StringUtil.jm_getInstance_0)) (get-field f_BLACK (BasicColorFactory.jm_getInstance_0)) (get-field f_WHITE (BasicColorFactory.jm_getInstance_0))))))
        (jreturn (CommandForm.jstatic_NULL_COMMAND_FORM)))))



