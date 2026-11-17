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
  "../../../java/lang/Thread.rkt"
  "../../../java/lang/Runnable.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListD.rkt" (BasicArrayListD.jnew_0)])
(lazy-require ["../../../org/allbinary/util/BasicArrayListUtil.rkt" (BasicArrayListUtil.jm_getInstance_0)])
(lazy-require ["./NullRunnable.rkt" (NullRunnable.jm_getInstance_0)])
(lazy-require ["./ThreadPoolStrings.rkt" (ThreadPoolStrings.jm_getInstance_0)])
(lazy-require ["./ThreadObjectUtil.rkt" (ThreadObjectUtil.jm_getInstance_0)])
(lazy-require ["./PooledThread.rkt" (PooledThread.jnew_1)])
(provide (all-defined-out))

(define ThreadPool%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_commonStrings JR.null])
    (field [f_NULL_RUNNABLE JR.null])
    (field [f_threadPoolStrings JR.null])
    (field [f_threadObjectUtil JR.null])
    (field [f_poolName JR.null])
    (field [f_priority 0])
    (field [f_isAlive #f])
    (field [f_taskQueue JR.null])
    (field [f_threadID 0])
    (field [f_numThreads 0])
    (field [f_runningTask #f])
    (define/public (jm_init_0)
    (let ([_pooledThread JR.null][_i JR.null])
      (let/ec jreturn
        (when (not (get-field f_isAlive this))
            (begin
            (set-field! f_isAlive this #t)
            (set-field! f_taskQueue this (BasicArrayListD.jnew_0))
            (set! _pooledThread JR.null)
            (begin
                (set! _i 0)
                (let/ec jbreak (let jloop () (when (< _i (get-field f_numThreads this))
                    (let/ec jcontinue
                (set! _pooledThread (PooledThread.jnew_1 this))
                (send _pooledThread jm_setPriority_1 (get-field f_priority this))
                (send _pooledThread jm_start_0))
                    (set! _i (JR.i32 (+ _i 1))) (jloop))))))))))
    (define/public (jm_runAPriorityTask_0)
    (let ()
      (let/ec jreturn
        (raise (JR.newException "RuntimeException")))))
    (define/public (jm_runTaskWithPriority_1 _task)
    (let ([_size JR.null][_runnable JR.null][_lowerPriorityRunnable JR.null][_index JR.null])
      (let/ec jreturn
        (begin
            (when (not (get-field f_isAlive this))
                (begin
                (send this jm_init_0)))
            (when (not (JR.null? _task))
                (begin
                (set! _size (send (get-field f_taskQueue this) jm_size_0))
                (set! _runnable JR.null)
                (set! _lowerPriorityRunnable (get-field f_NULL_PRIORITY_RUNNABLE (get-field f_threadObjectUtil this)))
                (begin
                    (set! _index 0)
                    (let/ec jbreak (let jloop () (when (< _index _size)
                        (let/ec jcontinue
                    (set! _runnable (send (get-field f_taskQueue this) jm_get_1 _index))
                    (when (> (send _runnable jm_getPriority_0) (send _task jm_getPriority_0))
                        (begin
                        (set! _lowerPriorityRunnable _runnable)
                        (jbreak (void)))))
                        (set! _index (JR.i32 (+ _index 1))) (jloop)))))
                (if (eq? _lowerPriorityRunnable (get-field f_NULL_PRIORITY_RUNNABLE (get-field f_threadObjectUtil this)))
                    (begin
                    (send (get-field f_taskQueue this) jm_add_1 _task))
                    (begin
                    (set! _index (send (get-field f_taskQueue this) jm_indexOf_1 _lowerPriorityRunnable))
                    (send (get-field f_taskQueue this) jm_addAt_2 _index _task)))
                (send this jm_notify_0)))))))
    (define/public (jm_runTask_1 _task)
    (let ()
      (let/ec jreturn
        (begin
            (when (not (get-field f_isAlive this))
                (begin
                (send this jm_init_0)))
            (when (not (JR.null? _task))
                (begin
                (send (get-field f_taskQueue this) jm_add_1 _task)
                (send this jm_notify_0)))))))
    (define/public (jm_getTask_0)
    (let ([_runnable JR.null])
      (let/ec jreturn
        (begin
            (let/ec jbreak (let jloop () (when (= (send (get-field f_taskQueue this) jm_size_0) 0)
                    (let/ec jcontinue
                (when (not (get-field f_isAlive this))
                    (begin
                    (jreturn (get-field f_NULL_RUNNABLE this))))
                (send this jm_wait_0)) (jloop))))
            (set! _runnable (send (get-field f_taskQueue this) jm_removeAt_1 0))
            (jreturn _runnable)))))
    (define/public (jm_clear_0)
    (let ()
      (let/ec jreturn
        (begin
            (when (get-field f_isAlive this)
                (begin
                (send (get-field f_taskQueue this) jm_clear_0)))))))
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn
        (begin
            (when (get-field f_isAlive this)
                (begin
                (set-field! f_isAlive this #f)
                (send (get-field f_taskQueue this) jm_clear_0)))))))
    (define/public (jm_join_0)
    (let ()
      (let/ec jreturn
        (begin
            (set-field! f_isAlive this #f)
            (send (get-field f_taskQueue this) jm_clear_0)
            (send this jm_notifyAll_0)))))
    (define/public (jm_isBusy_0)
    (let ()
      (let/ec jreturn
        (when (not (get-field f_isAlive this))
            (begin
            (jreturn #f)))
        (when (> (send (get-field f_taskQueue this) jm_size_0) 0)
            (begin
            (jreturn #t)))
        (when (get-field f_runningTask this)
            (begin
            (jreturn #t)))
        (jreturn #f))))
    (define/public (jm_threadStarted_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_threadStopped_0)
    (let ()
      (let/ec jreturn
        (when (= (get-field f_numThreads this) 1)
            (begin
            (set-field! f_isAlive this #f)
            (send (get-field f_taskQueue this) jm_clear_0))))))
    (define/public (jm_startTask_1 _task)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_completedTask_1 _task)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_createName_0)
    (let ()
      (let/ec jreturn
        (jreturn (send (send (send (send (StringMaker.jnew_0) jm_append_1 (get-field f_poolName this)) jm_append_1 (ThreadPool.jstatic_ROOT_NAME)) jm_appendint_1 (let ([jvalue (get-field f_threadID this)]) (set-field! f_threadID this (JR.i32 (+ (get-field f_threadID this) 1))) jvalue)) jm_toString_0)))))))

(define ThreadPool.jcell_ROOT_NAME 'jnone)
(define (ThreadPool.jstatic_ROOT_NAME)
  (when (eq? ThreadPool.jcell_ROOT_NAME 'jnone) (set! ThreadPool.jcell_ROOT_NAME "-PooledThread-"))
  ThreadPool.jcell_ROOT_NAME)

(define ThreadPool.jcell_NORMAL_PRIORITY 'jnone)
(define (ThreadPool.jstatic_NORMAL_PRIORITY)
  (when (eq? ThreadPool.jcell_NORMAL_PRIORITY 'jnone) (set! ThreadPool.jcell_NORMAL_PRIORITY (Thread.jstatic_NORM_PRIORITY)))
  ThreadPool.jcell_NORMAL_PRIORITY)

(define (ThreadPool.jnew_3 _poolName _numThreads _priority)
  (define this (new ThreadPool% [jclass "ThreadPool"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_commonStrings this (CommonStrings.jm_getInstance_0))
    (set-field! f_NULL_RUNNABLE this (NullRunnable.jm_getInstance_0))
    (set-field! f_threadPoolStrings this (ThreadPoolStrings.jm_getInstance_0))
    (set-field! f_threadObjectUtil this (ThreadObjectUtil.jm_getInstance_0))
    
    
    (set-field! f_isAlive this #f)
    (set-field! f_taskQueue this (send (BasicArrayListUtil.jm_getInstance_0) jm_getImmutableInstance_0))
    
    
    
    (let ()
      (let/ec jreturn
        (set-field! f_poolName this _poolName)
        (set-field! f_priority this _priority)
        (set-field! f_numThreads this _numThreads)))
  this)



