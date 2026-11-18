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
  "../../../../allbinary_java.rkt")
(lazy-require ["./SWTProcessor.rkt" (SWTProcessor.jm_getInstance_0)])
(provide (all-defined-out))

(define SWTProcessorUtil%
  (class JObject%
    (super-new)
    (field [f_swtProcessor JR.null])))
(define (SWTProcessorUtil.jclassValue) SWTProcessorUtil%)

(define SWTProcessorUtil.jcell_instance 'jnone)
(define (SWTProcessorUtil.jstatic_instance)
  (when (eq? SWTProcessorUtil.jcell_instance 'jnone) (set! SWTProcessorUtil.jcell_instance (SWTProcessorUtil.jnew_0)))
  SWTProcessorUtil.jcell_instance)
(define (SWTProcessorUtil.jsetstatic_instance value) (set! SWTProcessorUtil.jcell_instance value))

(define (SWTProcessorUtil.jnew_0)
  (define this (new SWTProcessorUtil% [jclass "SWTProcessorUtil"]))
    (set-field! f_swtProcessor this (SWTProcessor.jm_getInstance_0))
  this)

(define (SWTProcessorUtil.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (SWTProcessorUtil.jstatic_instance)))))



