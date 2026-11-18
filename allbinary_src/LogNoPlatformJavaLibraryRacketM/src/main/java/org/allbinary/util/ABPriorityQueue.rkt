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
  "../../../java/util/PriorityQueue.rkt")
(provide (all-defined-out))

(define ABPriorityQueue%
  (class PriorityQueue%
    (super-new)))
(define (ABPriorityQueue.jclassValue) ABPriorityQueue%)

(define (ABPriorityQueue.jnew_0)
  (define this (new ABPriorityQueue% [jclass "ABPriorityQueue"]))
  this)



