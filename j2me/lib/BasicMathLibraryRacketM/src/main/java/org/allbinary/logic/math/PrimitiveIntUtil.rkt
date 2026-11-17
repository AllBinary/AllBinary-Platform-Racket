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
(lazy-require ["../../../../org/allbinary/logic/NullUtil.rkt" (NullUtil.jm_getInstance_0)])
(provide (all-defined-out))

(define PrimitiveIntUtil%
  (class JObject%
    (super-new)))

(define (PrimitiveIntUtil.jnew_0)
  (define this (new PrimitiveIntUtil% [jclass "PrimitiveIntUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (PrimitiveIntUtil.jm_getArrayInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_INT_ARRAY (NullUtil.jm_getInstance_0))))))

(define (PrimitiveIntUtil.jm_getTwoDimensionalArrayInstance_0)
    (let ()
      (let/ec jreturn
        (jreturn (get-field f_NULL_INT_ARRAY_ARRAY (NullUtil.jm_getInstance_0))))))



