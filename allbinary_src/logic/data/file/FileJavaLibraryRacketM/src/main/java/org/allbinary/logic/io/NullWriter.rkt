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
  "../../../../java/io/Writer.rkt")
(provide (all-defined-out))

(define NullWriter%
  (class Writer%
    (super-new)
    (define/override (jm_write_1 jp1)
      (cond))
    (define/override (jm_write_3 jp1 jp2 jp3)
      (cond))
    (define/override (jm_flush_0)
    (let ()
      (let/ec jreturn (void))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullWriter.jclassValue) NullWriter%)

(define NullWriter.jcell_NULL_WRITER 'jnone)
(define (NullWriter.jstatic_NULL_WRITER)
  (when (eq? NullWriter.jcell_NULL_WRITER 'jnone) (set! NullWriter.jcell_NULL_WRITER (NullWriter.jnew_0)))
  NullWriter.jcell_NULL_WRITER)
(define (NullWriter.jsetstatic_NULL_WRITER value) (set! NullWriter.jcell_NULL_WRITER value))

(define (NullWriter.jnew_0)
  (define this (new NullWriter% [jclass "NullWriter"]))
  this)



