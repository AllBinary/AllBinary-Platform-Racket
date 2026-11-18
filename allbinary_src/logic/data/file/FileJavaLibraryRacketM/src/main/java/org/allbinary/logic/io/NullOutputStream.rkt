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
  "../../../../java/io/IOException.rkt"
  "../../../../java/io/OutputStream.rkt")
(provide (all-defined-out))

(define NullOutputStream%
  (class OutputStream%
    (super-new)
    (define/override (jm_write_1 _b)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_write_3 _b _off _len)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullOutputStream.jclassValue) NullOutputStream%)

(define NullOutputStream.jcell_NULL_OUTPUT_STREAM 'jnone)
(define (NullOutputStream.jstatic_NULL_OUTPUT_STREAM)
  (when (eq? NullOutputStream.jcell_NULL_OUTPUT_STREAM 'jnone) (set! NullOutputStream.jcell_NULL_OUTPUT_STREAM (NullOutputStream.jnew_0)))
  NullOutputStream.jcell_NULL_OUTPUT_STREAM)
(define (NullOutputStream.jsetstatic_NULL_OUTPUT_STREAM value) (set! NullOutputStream.jcell_NULL_OUTPUT_STREAM value))

(define (NullOutputStream.jnew_0)
  (define this (new NullOutputStream% [jclass "NullOutputStream"]))
  this)



