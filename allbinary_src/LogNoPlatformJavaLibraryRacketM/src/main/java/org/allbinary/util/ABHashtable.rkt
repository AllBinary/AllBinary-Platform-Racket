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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "../../../java/util/Hashtable.rkt")
(provide (all-defined-out))

(define ABHashtable%
  (class Hashtable%
    (super-new)))
(define (ABHashtable.jclassValue) ABHashtable%)

(define (ABHashtable.jnew_1 _initialCapacity)
  (define this (new ABHashtable% [jclass "ABHashtable"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_1 _initialCapacity)))
  this)

(define (ABHashtable.jnew_0)
  (define this (new ABHashtable% [jclass "ABHashtable"]))
    (let ()
      (let/ec jreturn
        (JR.superInit this 'jsuper_0)))
  this)



