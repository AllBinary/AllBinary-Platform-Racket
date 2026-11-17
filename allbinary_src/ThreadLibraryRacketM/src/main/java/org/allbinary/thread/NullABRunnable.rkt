#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2025 AllBinary 
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
  "./ABRunnable.rkt")
(provide (all-defined-out))

(define NullABRunnable%
  (class ABRunnable%
    (super-new)
    (define/override (jm_isRunning_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))))

(define NullABRunnable.jcell_instance 'jnone)
(define (NullABRunnable.jstatic_instance)
  (when (eq? NullABRunnable.jcell_instance 'jnone) (set! NullABRunnable.jcell_instance (NullABRunnable.jnew_0)))
  NullABRunnable.jcell_instance)

(define (NullABRunnable.jnew_0)
  (define this (new NullABRunnable% [jclass "NullABRunnable"]))
  this)

(define (NullABRunnable.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (NullABRunnable.jstatic_instance)))))



