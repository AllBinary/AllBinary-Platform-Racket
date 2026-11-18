#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
;; package org.allbinary.thread

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Thread.rkt"
  "../../../java/lang/Runnable.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./ThreadObjectUtil.rkt" (ThreadObjectUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PooledThread%
  (class Thread%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_threadObjectUtil JR.null])
    (field [f_threadPool JR.null])
    (field [f_INTERRUPT_EXCEPTION JR.null])
    (define/override (jm_run_0)
    (let ([_task2 JR.null][_logUtil JR.null])
      (let/ec jreturn
        (send (get-field f_threadPool this) jm_threadStarted_0)
        (let/ec jbreak (let jloop () (when #t
                (let/ec jcontinue
            (set! _task2 (get-field f_NULL_PRIORITY_RUNNABLE (get-field f_threadObjectUtil this)))
            (with-handlers ([(lambda (jerror) #t) (lambda (_ex)
                (set! _logUtil (LogUtil.jm_getInstance_0))
                (send _logUtil jm_putF_3 (get-field f_INTERRUPT_EXCEPTION this) this (get-field f_RUN (get-field f_commonStrings this)))
                (jbreak (void)))])
                (set! _task2 (send (get-field f_threadPool this) jm_getTask_0))
                (set-field! f_runningTask (get-field f_threadPool this) #t)
                (send (get-field f_threadPool this) jm_startTask_1 _task2))
            (when (eq? _task2 (get-field f_NULL_PRIORITY_RUNNABLE (get-field f_threadObjectUtil this)))
                (begin
                (jbreak (void))))
            (with-handlers ([(lambda (jerror) #t) (lambda (_e)
                (set! _logUtil (LogUtil.jm_getInstance_0))
                (send _logUtil jm_put_4 (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_EXCEPTION_LABEL (get-field f_commonStrings this))) jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _task2)) jm_toString_0) this (get-field f_RUN (get-field f_commonStrings this)) _e))])
                (send _task2 jm_run_0)
                (send (get-field f_threadPool this) jm_completedTask_1 _task2)
                (set-field! f_runningTask (get-field f_threadPool this) #f))) (jloop))))
        (send (get-field f_threadPool this) jm_threadStopped_0))))))
(define (PooledThread.jclassValue) PooledThread%)

(define (PooledThread.jnew_1 _threadPool)
  (define this (new PooledThread% [jclass "PooledThread"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_threadObjectUtil this (ThreadObjectUtil.jm_getInstance_0))
    
    (set-field! f_INTERRUPT_EXCEPTION this "Exit InterruptedException")
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 (send _threadPool jm_createName_0))
        (send (get-field f_logUtil this) jm_putF_3 (get-field f_CONSTRUCTOR (get-field f_commonStrings this)) this (get-field f_CONSTRUCTOR (get-field f_commonStrings this)))
        (set-field! f_threadPool this _threadPool)))
  this)



