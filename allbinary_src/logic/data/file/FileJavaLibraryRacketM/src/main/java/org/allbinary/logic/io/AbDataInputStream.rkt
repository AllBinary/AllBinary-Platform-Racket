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
;; package org.allbinary.logic.io

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/io/DataInputStream.rkt"
  "../../../../java/io/InputStream.rkt")
(provide (all-defined-out))

(define AbDataInputStream%
  (class DataInputStream%
    (super-new)))
(define (AbDataInputStream.jclassValue) AbDataInputStream%)

(define (AbDataInputStream.jnew_1 _out)
  (define this (new AbDataInputStream% [jclass "AbDataInputStream"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 _out)))
  this)



