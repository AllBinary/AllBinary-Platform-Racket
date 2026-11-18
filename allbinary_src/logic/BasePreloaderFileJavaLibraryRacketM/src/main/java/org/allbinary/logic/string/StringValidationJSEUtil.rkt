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
;; package org.allbinary.logic.string

(require racket/class racket/lazy-require
  "../../../../allbinary_java.rkt"
  "../../../../java/lang/Character.rkt")
(provide (all-defined-out))

(define StringValidationJSEUtil%
  (class JObject%
    (super-new)))
(define (StringValidationJSEUtil.jclassValue) StringValidationJSEUtil%)

(define (StringValidationJSEUtil.jnew_0)
  (define this (new StringValidationJSEUtil% [jclass "StringValidationJSEUtil"]))
    (let ()
      (let/ec jreturn (void)))
  this)

(define (StringValidationJSEUtil.jm_isBlank_1 _string)
    (let ([_len JR.null][_c JR.null][_i JR.null])
      (let/ec jreturn
        (set! _len (string-length _string))
        (begin
            (set! _i 0)
            (let/ec jbreak (let jloop () (when (< _i _len)
                (let/ec jcontinue
            (set! _c (JR.charAt _string _i))
            (when (eq? (Character.jm_isWhitespace_1 _c) #f)
                (begin
                (jreturn #f))))
                (set! _i (JR.i32 (+ _i 1))) (jloop)))))
        (jreturn #t))))



