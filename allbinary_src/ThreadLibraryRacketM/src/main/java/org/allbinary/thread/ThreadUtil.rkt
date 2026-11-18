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
  "../../../java/lang/Thread.rkt")
(lazy-require ["../../../org/allbinary/logic/communication/log/LogUtil.rkt" (LogUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define ThreadUtil%
  (class JObject%
    (super-new)
    (field [f_logUtil JR.null])
    (field [f_JOIN JR.null])
    (define/public (jm_isRunning_1 _thread)
    (let ()
      (let/ec jreturn
        (if (and (not (JR.null? _thread)) (send _thread jm_isAlive_0))
            (begin
            (jreturn #t))
            (begin
            (jreturn #f))))))
    (define/public (jm_join_1 _thread)
    (let ()
      (let/ec jreturn
        (when (send (ThreadUtil.jm_getInstance_0) jm_isRunning_1 _thread)
            (begin
            (send (get-field f_logUtil this) jm_putF_3 "Waiting for Thread To Join/End" this (get-field f_JOIN this))
            (send _thread jm_join_0))))))))
(define (ThreadUtil.jclassValue) ThreadUtil%)

(define ThreadUtil.jcell_instance 'jnone)
(define (ThreadUtil.jstatic_instance)
  (when (eq? ThreadUtil.jcell_instance 'jnone) (set! ThreadUtil.jcell_instance (ThreadUtil.jnew_0)))
  ThreadUtil.jcell_instance)
(define (ThreadUtil.jsetstatic_instance value) (set! ThreadUtil.jcell_instance value))

(define (ThreadUtil.jnew_0)
  (define this (new ThreadUtil% [jclass "ThreadUtil"]))
    (set-field! f_logUtil this (LogUtil.jm_getInstance_0))
    (set-field! f_JOIN this "join")
  this)

(define (ThreadUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (ThreadUtil.jstatic_instance)))))



