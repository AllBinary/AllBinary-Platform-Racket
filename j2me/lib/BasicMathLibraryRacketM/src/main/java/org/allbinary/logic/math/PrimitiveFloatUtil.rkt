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
;; package org.allbinary.logic.math

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(provide (all-defined-out))

(define PrimitiveFloatUtil%
  (class JObject%
    (super-new)))

(define (PrimitiveFloatUtil.jnew_0)
  (define this (new PrimitiveFloatUtil% [jclass "PrimitiveFloatUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PrimitiveFloatUtil.jm_getArrayInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (JR.newArray 0.0 0)))))



