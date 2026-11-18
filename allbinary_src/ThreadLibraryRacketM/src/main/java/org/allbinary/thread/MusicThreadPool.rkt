#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2022 AllBinary 
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

(define MusicThreadPool%
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
(define (MusicThreadPool.jclassValue) MusicThreadPool%)

(define MusicThreadPool.jcell_THREAD_POOL 'jnone)
(define (MusicThreadPool.jstatic_THREAD_POOL)
  (when (eq? MusicThreadPool.jcell_THREAD_POOL 'jnone) (set! MusicThreadPool.jcell_THREAD_POOL (ThreadPool.jnew_3 "Music" 2 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  MusicThreadPool.jcell_THREAD_POOL)
(define (MusicThreadPool.jsetstatic_THREAD_POOL value) (set! MusicThreadPool.jcell_THREAD_POOL value))

(define (MusicThreadPool.jnew_3 _poolName _numThreads _priority)
  (define this (new MusicThreadPool% [jclass "MusicThreadPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (MusicThreadPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (MusicThreadPool.jstatic_THREAD_POOL)))))



