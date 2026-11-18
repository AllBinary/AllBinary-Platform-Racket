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
;; package org.allbinary.midlet

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Runnable.rkt")
(lazy-require ["../../../javax/microedition/lcdui/NullCanvas.rkt" (NullCanvas.jstatic_NULL_CANVAS)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(provide (all-defined-out))

(define ExitRunnable%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_midlet JR.null])
    (field [f_processor JR.null])
    (field [f_isProgress #f])
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)) _e)
            (with-handlers ([(lambda (jerror) #t) (lambda (_e2)
                (send (get-field f_logUtil this) jm_put_4 (get-field f_EXCEPTION (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)) _e))])
                (send (get-field f_processor this) jm_process_0)))])
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_START_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))
            (send (get-field f_midlet this) jm_destroyAppInRunnable_2 #f (get-field f_isProgress this))
            (send (get-field f_midlet this) jm_setDisplay_1 (NullCanvas.jstatic_NULL_CANVAS))
            (send (get-field f_midlet this) jm_notifyDestroyed_0)
            (send (get-field f_logUtil this) jm_putF_3 (get-field f_END_RUNNABLE (get-field f_commonStrings this)) this (get-field f_RUN (get-field f_commonStrings this)))
            (send (get-field f_processor this) jm_process_0)))))))
(define (ExitRunnable.jclassValue) ExitRunnable%)

(define (ExitRunnable.jnew_3 _midlet _processor _isProgress)
  (define this (new ExitRunnable% [jclass "ExitRunnable"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_midlet this _midlet)
        (set-field! f_isProgress this _isProgress)
        (set-field! f_processor this _processor)))
  this)



