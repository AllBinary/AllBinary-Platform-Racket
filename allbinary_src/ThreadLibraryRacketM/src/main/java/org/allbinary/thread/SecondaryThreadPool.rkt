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

;This is mainly for network communications.
(define SecondaryThreadPool%
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
(define (SecondaryThreadPool.jclassValue) SecondaryThreadPool%)

(define SecondaryThreadPool.jcell_instance 'jnone)
(define (SecondaryThreadPool.jstatic_instance)
  (when (eq? SecondaryThreadPool.jcell_instance 'jnone) (set! SecondaryThreadPool.jcell_instance (SecondaryThreadPool.jnew_3 "Secondary" 1 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  SecondaryThreadPool.jcell_instance)
(define (SecondaryThreadPool.jsetstatic_instance value) (set! SecondaryThreadPool.jcell_instance value))

(define (SecondaryThreadPool.jnew_3 _poolName _numThreads _priority)
  (define this (new SecondaryThreadPool% [jclass "SecondaryThreadPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (SecondaryThreadPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SecondaryThreadPool.jstatic_instance)))))



