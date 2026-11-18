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
  "../../../../java/io/DataOutputStream.rkt"
  "../../../../java/io/OutputStream.rkt")
(provide (all-defined-out))

(define AbDataOutputStream%
  (class DataOutputStream%
    (super-new)))
(define (AbDataOutputStream.jclassValue) AbDataOutputStream%)

(define (AbDataOutputStream.jnew_1 _out)
  (define this (new AbDataOutputStream% [jclass "AbDataOutputStream"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 _out)))
  this)



