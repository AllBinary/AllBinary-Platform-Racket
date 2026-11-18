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
;; package org.allbinary.device

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../javax/microedition/khronos/opengles/GL10.rkt")
(provide (all-defined-out))

(define NullGL10%
  (class JObject%
    (super-new)))
(define (NullGL10.jclassValue) NullGL10%)

(define NullGL10.jcell_NULL_GL10 'jnone)
(define (NullGL10.jstatic_NULL_GL10)
  (when (eq? NullGL10.jcell_NULL_GL10 'jnone) (set! NullGL10.jcell_NULL_GL10 (NullGL10.jnew_0)))
  NullGL10.jcell_NULL_GL10)
(define (NullGL10.jsetstatic_NULL_GL10 value) (set! NullGL10.jcell_NULL_GL10 value))

(define (NullGL10.jnew_0)
  (define this (new NullGL10% [jclass "NullGL10"]))
  this)



