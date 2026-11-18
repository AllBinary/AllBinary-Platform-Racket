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
;; package org.allbinary.graphics.color

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["./BasicColorUtil.rkt" (BasicColorUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define BasicColorUtilFactory%
  (class JObject%
    (super-new)))
(define (BasicColorUtilFactory.jclassValue) BasicColorUtilFactory%)

(define (BasicColorUtilFactory.jnew_0)
  (define this (new BasicColorUtilFactory% [jclass "BasicColorUtilFactory"]))
  this)

(define (BasicColorUtilFactory.jm_getInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (BasicColorUtil.jm_getInstance_0)))))



