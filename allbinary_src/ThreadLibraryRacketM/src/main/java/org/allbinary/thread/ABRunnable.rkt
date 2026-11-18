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
  "../../../java/lang/Thread.rkt"
  "./RunnableInterface.rkt")
(provide (all-defined-out))

(define ABRunnable%
  (class JObject%
    (super-new)
    (field [f_running #f])
    (define/public (jm_setThread_1 _thread)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_running this)))))
    (define/public (jm_setRunning_1 _running)
    (let ()
      (let/ec jreturn
        (set-field! f_running this _running))))
    (define/public (jm_run_0)
    (let ()
      (let/ec jreturn (void))))
    (define/public (jm_getType_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))))
(define (ABRunnable.jclassValue) ABRunnable%)

(define (ABRunnable.jnew_0)
  (define this (new ABRunnable% [jclass "ABRunnable"]))
    (set-field! f_running this #f)
  this)



