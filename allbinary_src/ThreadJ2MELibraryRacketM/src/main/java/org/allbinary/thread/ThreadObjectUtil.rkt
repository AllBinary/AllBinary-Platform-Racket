#lang racket/base
;; Generated Code Do Not Modify
;; package org.allbinary.thread

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/Thread.rkt"
  "../../../java/lang/Runnable.rkt")
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["./NullPriorityRunnable.rkt" (NullPriorityRunnable.jnew_0)])
(provide (all-defined-out))

(define ThreadObjectUtil%
  (class JObject%
    (super-new)
    (field [f_NULL_PRIORITY_RUNNABLE JR.null])
    (define/public (jm_notifyObject_1 _anyType)
    (let ()
      (let/ec jreturn
        (JR.className _anyType))))
    (define/public (jm_waitObject_1 _anyType)
    (let ()
      (let/ec jreturn
        (JR.className _anyType))))
    (define/public (jm_waitObjectFor_2 _anyType _delay)
    (let ()
      (let/ec jreturn
        (send (TsUtil.jm_getInstance_0) jm_waitFor_2 _anyType _delay))))
    (define/public (jm_processThread_1 _runnable)
    (let ([_thread JR.null])
      (let/ec jreturn
        (set! _thread (Thread.jnew_1 _runnable))
        (send _thread jm_start_0))))))
(define (ThreadObjectUtil.jclassValue) ThreadObjectUtil%)

(define ThreadObjectUtil.jcell_instance 'jnone)
(define (ThreadObjectUtil.jstatic_instance)
  (when (eq? ThreadObjectUtil.jcell_instance 'jnone) (set! ThreadObjectUtil.jcell_instance (ThreadObjectUtil.jnew_0)))
  ThreadObjectUtil.jcell_instance)
(define (ThreadObjectUtil.jsetstatic_instance value) (set! ThreadObjectUtil.jcell_instance value))

(define (ThreadObjectUtil.jnew_0)
  (define this (new ThreadObjectUtil% [jclass "ThreadObjectUtil"]))
    (set-field! f_NULL_PRIORITY_RUNNABLE this (NullPriorityRunnable.jnew_0))
  this)

(define (ThreadObjectUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThreadObjectUtil.jstatic_instance)))))



