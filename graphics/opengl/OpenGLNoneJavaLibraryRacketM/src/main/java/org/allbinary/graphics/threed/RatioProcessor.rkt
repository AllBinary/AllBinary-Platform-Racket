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
;; package org.allbinary.graphics.threed

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define RatioProcessor%
  (class JObject%
    (super-new)
    (define/public (jm_setCustom_3 _width _height _ratio)
    (let ()
      (let/ec jreturn (void))))))
(define (RatioProcessor.jclassValue) RatioProcessor%)

(define (RatioProcessor.jnew_0)
  (define this (new RatioProcessor% [jclass "RatioProcessor"]))
  this)



