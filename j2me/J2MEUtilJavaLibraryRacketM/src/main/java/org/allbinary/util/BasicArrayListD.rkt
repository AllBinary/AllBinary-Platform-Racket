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
;; package org.allbinary.util

(require racket/class racket/lazy-require
  "../../../allbinary_java.rkt"
  "./BasicArrayListS.rkt")
(provide (all-defined-out))

(define BasicArrayListD%
  (class BasicArrayListS%
    (super-new)))
(define (BasicArrayListD.jclassValue) BasicArrayListD%)

(define (BasicArrayListD.jnew_0)
  (define this (new BasicArrayListD% [jclass "BasicArrayListD"]))
    (let ()
      (let/ec jreturn
        (void)))
  this)



