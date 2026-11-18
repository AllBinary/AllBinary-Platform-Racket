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
;; package org.allbinary.canvas

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../org/allbinary/graphics/displayable/MyCanvas.rkt"
  "../../../org/allbinary/thread/RunnableInterface.rkt"
  "../../../java/lang/Thread.rkt")
(lazy-require ["../../../org/allbinary/TsUtil.rkt" (TsUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable.rkt" (NullWaitGameRunnable.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/ABSystemWrapper.rkt" (ABSystemWrapper.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/StdUtil.rkt" (StdUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonLabels.rkt" (CommonLabels.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/thread/NullThread.rkt" (NullThread.jstatic_NULL_THREAD)])
(lazy-require ["../../../org/allbinary/thread/ThreadObjectUtil.rkt" (ThreadObjectUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/time/TimeDelayHelper.rkt" (TimeDelayHelper.jnew_1)])
(lazy-require ["./Processor.rkt" (Processor.jm_getInstance_0)])
(lazy-require ["./RunnableCanvasRefreshHelper.rkt" (RunnableCanvasRefreshHelper.jnew_1)])
(provide (all-defined-out))

(define RunnableCanvas%
  (class MyCanvas%
    (super-new)
    (field [f_nullUtil JR.null])
    (field [f_stdUtil JR.null])
    (field [f_systemWrapper JR.null])
    (field [f_tsUtil JR.null])
    (field [f_thread JR.null])
    (field [f_currentThread JR.null])
    (field [f_running #f])
    (field [f_loopTimeHelper JR.null])
    (field [f_runnableCanvasRefreshHelper JR.null])
    (field [f_commonLabels JR.null])
    (field [f_threadObjectUtil JR.null])
    (field [f_SET_RUNNING JR.null])
    (field [f_IS_RUNNING JR.null])
    (field [f_THREAD JR.null])
    (field [f_NOT_EQUAL JR.null])
    (field [f_PAUSE_SLEEP JR.null])
    (field [f_START_PAUSE JR.null])
    (field [f_END_PAUSE JR.null])
    (field [f_PROCESS_LOOP_SLEEP JR.null])
    (field [f_pauseWait 0])
    (field [f_notified #f])
    (define/public (jm_initCommands_1 _cmdListener)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_isMainCanvas_0)
    (let ()
      (let/ec jreturn
        (if (not (JR.null? (send this jm_getCustomCommandListener_0)))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_setThread_1 _thread)
    (let ()
      (let/ec jreturn
        (set-field! f_thread this _thread))))
    (define/public (jm_setRunning_1 _running)
    (let ()
      (let/ec jreturn
        (set-field! f_running this _running)
        (when (not (get-field f_running this))
            (begin
            (set-field! f_thread this (NullThread.jstatic_NULL_THREAD))
            (begin
                (send (get-field f_threadObjectUtil this) jm_notifyObject_1 this))))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_isRunning_0)
    (let ([_stringBuffer JR.null])
      (let/ec jreturn
        (if (eq? (get-field f_thread this) (get-field f_currentThread this))
            (begin
            (jreturn (get-field f_running this)))
            (begin
            (set! _stringBuffer (StringMaker.jnew_0))
            (send _stringBuffer jm_append_1 (get-field f_THREAD this))
            (when (not (JR.null? (get-field f_thread this)))
                (begin
                (send _stringBuffer jm_append_1 (send (get-field f_thread this) jm_toString_0))))
            (send _stringBuffer jm_append_1 (get-field f_NOT_EQUAL this))
            (when (not (JR.null? (get-field f_currentThread this)))
                (begin
                (send _stringBuffer jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 (get-field f_currentThread this)))))
            (JR.className (get-field f_logUtil this))
            (jreturn #f))))))
    (define/public (jm_getLoopTimeHelperP_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_loopTimeHelper this)))))
    (define/public (jm_setWait_1 _wait)
    (let ()
      (let/ec jreturn
        (set-field! f_delay (get-field f_loopTimeHelper this) _wait)
        (set-field! f_pauseWait this (JR.i64 (* _wait 3)))
        (JR.className (get-field f_logUtil this)))))
    (define/public (jm_getWait_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_delay (get-field f_loopTimeHelper this))))))
    (define/public (jm_setCurrentThread_0)
    (let ()
      (let/ec jreturn
        (set-field! f_currentThread this (Thread.jm_currentThread_0)))))
    (define/public (jm_setCurrentThreadFake_0)
    (let ()
      (let/ec jreturn
        (set-field! f_currentThread this (get-field f_thread this)))))
    (define/override (jm_showNotify_0)
    (let ()
      (let/ec jreturn
        (with-handlers ([(lambda (jerror) #t) (lambda (_e)
            (JR.className (get-field f_logUtil this)))])
            (send this jm_stopWaiting_0)))))
    (define/public (jm_stopWaiting_0)
    (let ()
      (let/ec jreturn
        (set-field! f_notified this #t)
        (begin
            (send (get-field f_threadObjectUtil this) jm_notifyObject_1 this))
        (send this jm_repaint_0))))
    (define/public (jm_waitOnNotify_1 _wait)
    (let ()
      (let/ec jreturn
        (when (not (get-field f_notified this))
            (begin
            (if (> _wait 0)
                (begin
                (send (get-field f_threadObjectUtil this) jm_waitObjectFor_2 this _wait))
                (begin
                (send (get-field f_threadObjectUtil this) jm_waitObject_1 this))))))))
    (define/public (jm_processSleep_0)
    (let ()
      (let/ec jreturn
        (Thread.jm_sleep_1 (get-field f_pauseWait this)))))
    (define/public (jm_isPausable_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_processGameSleep_1 _sleep)
    (let ()
      (let/ec jreturn
        (Thread.jm_sleep_1 _sleep))))
    (define/public (jm_processLoopSleep_0)
    (let ([_stringMaker JR.null][_currentTimeMillis JR.null][_elapsedTime JR.null][_wait JR.null])
      (let/ec jreturn
        (send (get-field f_runnableCanvasRefreshHelper this) jm_process_0)
        (when (send this jm_isPaused_0)
            (begin
            (set! _stringMaker (StringMaker.jnew_0))
            (when (and (send this jm_isRunning_0) (not (send this jm_isSingleThread_0)))
                (begin
                (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                (set! _currentTimeMillis (send (get-field f_systemWrapper this) jm_currentTimeMillis_0))
                (JR.className (get-field f_logUtil this))
                (let/ec jbreak (let jloop () (when (and (and (send this jm_isPaused_0) (send this jm_isRunning_0)) (not (send this jm_isSingleThread_0)))
                        (let/ec jcontinue
                    (send this jm_processSleep_0)
                    (when (not (send this jm_isPausable_0))
                        (begin
                        (send _stringMaker jm_delete_2 0 (send _stringMaker jm_length_0))
                        (JR.className (get-field f_logUtil this))
                        (jreturn (void))))) (jloop))))))))
        (set! _elapsedTime (send (get-field f_loopTimeHelper this) jm_getElapsedTNT_0))
        (set! _wait (get-field f_delay (get-field f_loopTimeHelper this)))
        (if (> _elapsedTime _wait)
            (begin
            (set! _elapsedTime _wait))
            (begin
            (send this jm_processGameSleep_1 (JR.i64 (- _wait _elapsedTime))))))))
    (define/public (jm_isSingleThread_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn
        (send this jm_setCurrentThread_0))))
    (define/public (jm_end2_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (RunnableCanvas.jclassValue) RunnableCanvas%)

(define (RunnableCanvas.jnew_3 _commandListener _childNameList _hasParam)
  (define this (new RunnableCanvas% [jclass "RunnableCanvas"]))
    (set-field! f_nullUtil this (NullUtil.jm_getInstance_0))
    (set-field! f_stdUtil this (StdUtil.jm_getInstance_0))
    (set-field! f_systemWrapper this (ABSystemWrapper.jm_getInstance_0))
    (set-field! f_tsUtil this (TsUtil.jm_getInstance_0))
    (set-field! f_thread this (NullThread.jstatic_NULL_THREAD))
    (set-field! f_currentThread this (NullThread.jstatic_NULL_THREAD))
    
    (set-field! f_loopTimeHelper this (TimeDelayHelper.jnew_1 (get-field f_WAIT (NullWaitGameRunnable.jm_getInstance_0))))
    (set-field! f_runnableCanvasRefreshHelper this (Processor.jm_getInstance_0))
    (set-field! f_commonLabels this (CommonLabels.jm_getInstance_0))
    (set-field! f_threadObjectUtil this (ThreadObjectUtil.jm_getInstance_0))
    (set-field! f_SET_RUNNING this "setRunning")
    (set-field! f_IS_RUNNING this "isRunning")
    (set-field! f_THREAD this "Thread: ")
    (set-field! f_NOT_EQUAL this " != ")
    (set-field! f_PAUSE_SLEEP this "pause sleep")
    (set-field! f_START_PAUSE this "start pause - game thread sleep at: ")
    (set-field! f_END_PAUSE this "end pause - game thread sleep at: ")
    (set-field! f_PROCESS_LOOP_SLEEP this "processLoopSleep")
    (set-field! f_pauseWait this 0)
    (set-field! f_notified this #f)
    (let ()
      (let/ec jreturn
        (void)
        (JR.className (get-field f_logUtil this))
        (set-field! f_runnableCanvasRefreshHelper this (RunnableCanvasRefreshHelper.jnew_1 this))
        (if (not (JR.null? _commandListener))
            (begin
            (send this jm_initCommands_1 _commandListener))
            (when _hasParam
            (begin
            (JR.className (get-field f_logUtil this)))))))
  this)



