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
(provide (all-defined-out))

(define RunnableInterface%
  (class JObject%
    (super-new)
    (define/public (jm_isRunning_0)
      (raise (JR.newException "AbstractMethodError" "isRunning")))
    (define/public (jm_setRunning_1 _isRunning)
      (raise (JR.newException "AbstractMethodError" "setRunning")))
    (define/public (jm_setThread_1 _thread)
      (raise (JR.newException "AbstractMethodError" "setThread")))))

(define (RunnableInterface.jnew_0)
  (define this (new RunnableInterface% [jclass "RunnableInterface"]))
  this)



