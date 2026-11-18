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
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/Closeable.rkt"
  "../../../../java/io/IOException.rkt")
(provide (all-defined-out))

(define NullCloseable%
  (class JObject%
    (super-new)
    (define/public (jm_close_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullCloseable.jclassValue) NullCloseable%)

(define NullCloseable.jcell_NULL_CLOSEABLE 'jnone)
(define (NullCloseable.jstatic_NULL_CLOSEABLE)
  (when (eq? NullCloseable.jcell_NULL_CLOSEABLE 'jnone) (set! NullCloseable.jcell_NULL_CLOSEABLE (NullCloseable.jnew_0)))
  NullCloseable.jcell_NULL_CLOSEABLE)
(define (NullCloseable.jsetstatic_NULL_CLOSEABLE value) (set! NullCloseable.jcell_NULL_CLOSEABLE value))

(define (NullCloseable.jnew_0)
  (define this (new NullCloseable% [jclass "NullCloseable"]))
  this)



