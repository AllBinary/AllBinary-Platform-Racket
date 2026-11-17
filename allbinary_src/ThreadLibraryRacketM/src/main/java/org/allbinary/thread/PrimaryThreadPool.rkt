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
;; package org.allbinary.thread

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/lang/System.rkt"
  "../../../java/lang/Runnable.rkt"
  "./ThreadPool.rkt")
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PrimaryThreadPool%
  (class ThreadPool%
    (super-new)
    (define/override (jm_runTask_1 _task)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this))
        (super jm_runTask_1 _task))))
    (define/override (jm_startTask_1 _task)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this)))))
    (define/override (jm_completedTask_1 _task)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this)))))))

(define PrimaryThreadPool.jcell_THREAD_POOL 'jnone)
(define (PrimaryThreadPool.jstatic_THREAD_POOL)
  (when (eq? PrimaryThreadPool.jcell_THREAD_POOL 'jnone) (set! PrimaryThreadPool.jcell_THREAD_POOL (ThreadPool.jnew_3 "Primary" 1 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  PrimaryThreadPool.jcell_THREAD_POOL)

(define (PrimaryThreadPool.jnew_3 _poolName _numThreads _priority)
  (define this (new PrimaryThreadPool% [jclass "PrimaryThreadPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (PrimaryThreadPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PrimaryThreadPool.jstatic_THREAD_POOL)))))



