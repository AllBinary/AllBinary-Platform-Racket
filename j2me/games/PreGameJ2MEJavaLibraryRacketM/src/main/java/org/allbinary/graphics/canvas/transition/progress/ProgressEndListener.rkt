#lang racket/base
;; 
;; AllBinary Open License Version 1 
;; Copyright (c) 2026 AllBinary 
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
;; package org.allbinary.graphics.canvas.transition.progress

(require racket/class racket/lazy-require
  "../../../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define ProgressEndListener%
  (class JObject%
    (super-new)
    (define/public (jm_onEndEvent_0)
    (let ()
      (let/ec jreturn (void))))))
(define (ProgressEndListener.jclassValue) ProgressEndListener%)

(define ProgressEndListener.jcell_instance 'jnone)
(define (ProgressEndListener.jstatic_instance)
  (when (eq? ProgressEndListener.jcell_instance 'jnone) (set! ProgressEndListener.jcell_instance (ProgressEndListener.jnew_0)))
  ProgressEndListener.jcell_instance)
(define (ProgressEndListener.jsetstatic_instance value) (set! ProgressEndListener.jcell_instance value))

(define (ProgressEndListener.jnew_0)
  (define this (new ProgressEndListener% [jclass "ProgressEndListener"]))
  this)



