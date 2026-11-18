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
  "./SWTProcessor.rkt")
(provide (all-defined-out))

(define SWTRunnableProcessor%
  (class SWTProcessor%
    (super-new)
    (define/override (jm_process_1 _display)
    (let ()
      (let/ec jreturn
        (JR.className (get-field f_runnable this)))))))
(define (SWTRunnableProcessor.jclassValue) SWTRunnableProcessor%)

(define SWTRunnableProcessor.jcell_instanceR 'jnone)
(define (SWTRunnableProcessor.jstatic_instanceR)
  (when (eq? SWTRunnableProcessor.jcell_instanceR 'jnone) (set! SWTRunnableProcessor.jcell_instanceR (SWTRunnableProcessor.jnew_0)))
  SWTRunnableProcessor.jcell_instanceR)
(define (SWTRunnableProcessor.jsetstatic_instanceR value) (set! SWTRunnableProcessor.jcell_instanceR value))

(define (SWTRunnableProcessor.jnew_0)
  (define this (new SWTRunnableProcessor% [jclass "SWTRunnableProcessor"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (SWTRunnableProcessor.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SWTRunnableProcessor.jstatic_instanceR)))))



