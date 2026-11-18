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
;; package org.allbinary.game.displayable.canvas

(require racket/class racket/lazy-require
  "../../../../../allbinary_java.rkt"
  "../../../../../java/lang/Runnable.rkt")
(lazy-require ["../../../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define CommandRunnable%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_commandFormInputProcessor JR.null])
    (field [f_command JR.null])
    (define/public (jm_run_0)
    (let ([_canvas JR.null][_commandListener JR.null])
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)) _e))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))
            (set! _canvas (send (get-field f_commandFormInputProcessor this) jm_getCanvas_0))
            (set! _commandListener (send _canvas jm_getCustomCommandListener_0))
            (send _commandListener jm_commandAction_2 (get-field f_command this) _canvas)
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_END_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))))))))
(define (CommandRunnable.jclassValue) CommandRunnable%)

(define (CommandRunnable.jnew_2 _commandFormInputProcessor _command)
  (define this (new CommandRunnable% [jclass "CommandRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_commandFormInputProcessor this _commandFormInputProcessor)
        (set-field! f_command this _command)))
  this)



