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
;; package org.allbinary.logic.java

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt")
(lazy-require ["../../../../org/allbinary/logic/string/StringMaker.rkt" (StringMaker.jnew_0)])
(provide (all-defined-out))

(define PrimitiveArrayToString%
  (class JObject%
    (super-new)))
(define (PrimitiveArrayToString.jclassValue) PrimitiveArrayToString%)

(define (PrimitiveArrayToString.jnew_0)
  (define this (new PrimitiveArrayToString% [jclass "PrimitiveArrayToString"]))
  this)

(define (PrimitiveArrayToString.jm_toString_1 _floats)
    (let ([_stringBuffer JR.null][_index JR.null])
      (let/ec jreturn
        (set! _stringBuffer (StringMaker.jnew_0))
        (begin
            (set! _index 0)
            (let/ec jbreak (let jloop () (when (< _index (vector-length _floats))
                (let/ec jcontinue
            (send _stringBuffer jm_appendfloat_1 (vector-ref _floats _index)))
                (set! _index (JR.i32 (+ _index 1))) (jloop)))))
        (jreturn (send _stringBuffer jm_toString_0)))))



