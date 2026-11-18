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
  "../../../java/lang/Thread.rkt")
(provide (all-defined-out))

(define NullThread%
  (class JObject%
    (super-new)))
(define (NullThread.jclassValue) NullThread%)

(define NullThread.jcell_NULL_THREAD 'jnone)
(define (NullThread.jstatic_NULL_THREAD)
  (when (eq? NullThread.jcell_NULL_THREAD 'jnone) (set! NullThread.jcell_NULL_THREAD (Thread.jnew_0)))
  NullThread.jcell_NULL_THREAD)
(define (NullThread.jsetstatic_NULL_THREAD value) (set! NullThread.jcell_NULL_THREAD value))

(define (NullThread.jnew_0)
  (define this (new NullThread% [jclass "NullThread"]))
  this)



