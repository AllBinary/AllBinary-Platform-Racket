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
  "../../../java/lang/Runnable.rkt"
  "./ThreadPool.rkt")
(provide (all-defined-out))

;This is mainly for network communications.
(define PathFindingThreadPool%
  (class ThreadPool%
    (super-new)
    (define/override (jm_runTaskWithPriority_1 _task)
    (let ()
      (let/ec jreturn
        (super jm_runTaskWithPriority_1 _task))))
    (define/override (jm_runTask_1 _task)
    (let ()
      (let/ec jreturn
        (super jm_runTask_1 _task))))
    (define/override (jm_startTask_1 _task)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_completedTask_1 _task)
    (let ()
      (let/ec jreturn (void))))))

(define PathFindingThreadPool.jcell_instance 'jnone)
(define (PathFindingThreadPool.jstatic_instance)
  (when (eq? PathFindingThreadPool.jcell_instance 'jnone) (set! PathFindingThreadPool.jcell_instance (PathFindingThreadPool.jnew_3 "PathFinding" 1 1)))
  PathFindingThreadPool.jcell_instance)

(define (PathFindingThreadPool.jnew_3 _poolName _numThreads _priority)
  (define this (new PathFindingThreadPool% [jclass "PathFindingThreadPool"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)

(define (PathFindingThreadPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (PathFindingThreadPool.jstatic_instance)))))



