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
  "../../../../java/io/Reader.rkt")
(provide (all-defined-out))

(define NullReader%
  (class Reader%
    (super-new)
    (define/override (jm_read_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/override (jm_read_3 _cbuf _off _len)
    (let ()
      (let/ec jreturn
        (jreturn (JR.i32 (- 1))))))
    (define/override (jm_ready_0)
    (let ()
      (let/ec jreturn
        (jreturn #f))))
    (define/override (jm_skip_1 _n)
    (let ()
      (let/ec jreturn
        (jreturn 0))))
    (define/override (jm_close_0)
    (let ()
      (let/ec jreturn (void))))))
(define (NullReader.jclassValue) NullReader%)

(define NullReader.jcell_NULL_READER 'jnone)
(define (NullReader.jstatic_NULL_READER)
  (when (eq? NullReader.jcell_NULL_READER 'jnone) (set! NullReader.jcell_NULL_READER (NullReader.jnew_0)))
  NullReader.jcell_NULL_READER)
(define (NullReader.jsetstatic_NULL_READER value) (set! NullReader.jcell_NULL_READER value))

(define (NullReader.jnew_0)
  (define this (new NullReader% [jclass "NullReader"]))
  this)



