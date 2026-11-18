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
;; package org.allbinary.emulator.swt

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Runnable.rkt")
(lazy-require ["../../../../org/allbinary/thread/NullRunnable.rkt" (NullRunnable.jm_getInstance_0)])
(provide (all-defined-out))

(define SWTProcessor%
  (class JObject%
    (super-new)
    (field [f_runnable JR.null])
    (define/public (jm_process_1 _display)
    (let ()
      (let/ec jreturn
        (send _display jm_sleep_0))))))
(define (SWTProcessor.jclassValue) SWTProcessor%)

(define SWTProcessor.jcell_instance 'jnone)
(define (SWTProcessor.jstatic_instance)
  (when (eq? SWTProcessor.jcell_instance 'jnone) (set! SWTProcessor.jcell_instance (SWTProcessor.jnew_0)))
  SWTProcessor.jcell_instance)
(define (SWTProcessor.jsetstatic_instance value) (set! SWTProcessor.jcell_instance value))

(define (SWTProcessor.jnew_0)
  (define this (new SWTProcessor% [jclass "SWTProcessor"]))
    (set-field! f_runnable this (NullRunnable.jm_getInstance_0))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SWTProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SWTProcessor.jstatic_instance)))))



