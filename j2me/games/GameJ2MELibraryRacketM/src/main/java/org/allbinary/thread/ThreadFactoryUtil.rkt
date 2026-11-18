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
(lazy-require ["../../../org/allbinary/J2MEUtil.rkt" (J2MEUtil.jm_isHTML_0)])
(lazy-require ["../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.rkt" (AllBinaryGameCanvas.jstatic_TYPE)])
(lazy-require ["../../../org/allbinary/game/displayable/canvas/DemoCanvas.rkt" (DemoCanvas.jstatic_TYPE)])
(lazy-require ["../../../org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable.rkt" (RunnableCanvasSingleThreadStartRunnable.jnew_1)])
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/logic/communication/log/PreLogUtil.rkt" (PreLogUtil.jm_put_3)])
(lazy-require ["../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(lazy-require ["../../../org/allbinary/logic/string/StringUtil.rkt" (StringUtil.jm_getInstance_0)])
(lazy-require ["../../../org/allbinary/string/CommonStrings.rkt" (CommonStrings.jm_getInstance_0)])
(lazy-require ["./PrimaryThreadPool.rkt" (PrimaryThreadPool.jm_getInstance_0)])
(provide (all-defined-out))

(define ThreadFactoryUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (define/public (jm_getInstanceGameCanvasRunnable_1 _runnable)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstanceType_2 _runnable (send _runnable jm_getType_0))))))
    (define/public (jm_getInstanceForRunnable_1 _runnable)
    (let ()
      (let/ec jreturn
        (jreturn (send this jm_getInstanceType_2 _runnable (send _runnable jm_getType_0))))))
    (define/public (jm_getInstanceType_2 _runnable _type)
    (let ([_commonStrings JR.null][_primaryThreadPool JR.null][_demoGameSingleThreadStartRunnable JR.null][_thread JR.null])
      (let/ec jreturn
        (set! _commonStrings (CommonStrings.jm_getInstance_0))
        (when (J2MEUtil.jm_isHTML_0)
            (begin
            (if (or (= _type (DemoCanvas.jstatic_TYPE)) (= _type (AllBinaryGameCanvas.jstatic_TYPE)))
                (begin
                (set! _demoGameSingleThreadStartRunnable (RunnableCanvasSingleThreadStartRunnable.jnew_1 _runnable))
                (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _runnable)) jm_toString_0) this (get-field f_CONSTRUCTOR _commonStrings))
                (set! _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
                (send _primaryThreadPool jm_runTask_1 _demoGameSingleThreadStartRunnable))
                (begin
                (PreLogUtil.jm_put_3 (send (send (send (StringMaker.jnew_0) jm_append_1 "Using Pseudo Thread for Runnable under PlayN/HTML5: ") jm_append_1 (send (StringUtil.jm_getInstance_0) jm_toString_1 _runnable)) jm_toString_0) this (get-field f_CONSTRUCTOR _commonStrings))
                (set! _primaryThreadPool (PrimaryThreadPool.jm_getInstance_0))
                (send _primaryThreadPool jm_runTask_1 _runnable)))))
        (set! _thread (Thread.jnew_2 _runnable (send _runnable jm_toString_0)))
        (send (get-field f_logUtil this) jm_putF_3 (send _thread jm_toString_0) this (get-field f_CONSTRUCTOR _commonStrings))
        (jreturn _thread))))
    (define/public (jm_start_1 _thread)
    (let ()
      (let/ec jreturn
        (send _thread jm_start_0))))))
(define (ThreadFactoryUtil.jclassValue) ThreadFactoryUtil%)

(define ThreadFactoryUtil.jcell_instance 'jnone)
(define (ThreadFactoryUtil.jstatic_instance)
  (when (eq? ThreadFactoryUtil.jcell_instance 'jnone) (set! ThreadFactoryUtil.jcell_instance (ThreadFactoryUtil.jnew_0)))
  ThreadFactoryUtil.jcell_instance)
(define (ThreadFactoryUtil.jsetstatic_instance value) (set! ThreadFactoryUtil.jcell_instance value))

(define (ThreadFactoryUtil.jnew_0)
  (define this (new ThreadFactoryUtil% [jclass "ThreadFactoryUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
  this)

(define (ThreadFactoryUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThreadFactoryUtil.jstatic_instance)))))



