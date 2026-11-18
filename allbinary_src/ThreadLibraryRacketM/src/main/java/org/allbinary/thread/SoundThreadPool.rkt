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
  "../../../allbinary_java.rkt")
(lazy-require ["./ThreadPool.rkt" (ThreadPool.jnew_3 ThreadPool.jstatic_NORMAL_PRIORITY)])
(provide (all-defined-out))

(define SoundThreadPool%
  (class JObject%
    (super-new)))
(define (SoundThreadPool.jclassValue) SoundThreadPool%)

(define SoundThreadPool.jcell_instance 'jnone)
(define (SoundThreadPool.jstatic_instance)
  (when (eq? SoundThreadPool.jcell_instance 'jnone) (set! SoundThreadPool.jcell_instance (ThreadPool.jnew_3 "Sound" 1 (ThreadPool.jstatic_NORMAL_PRIORITY))))
  SoundThreadPool.jcell_instance)
(define (SoundThreadPool.jsetstatic_instance value) (set! SoundThreadPool.jcell_instance value))

(define (SoundThreadPool.jnew_0)
  (define this (new SoundThreadPool% [jclass "SoundThreadPool"]))
  this)

(define (SoundThreadPool.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SoundThreadPool.jstatic_instance)))))



